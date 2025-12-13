#!/bin/bash

# generate_structure.sh - 生成项目结构文件
# 用于生成 beastkin-shield-universe 项目的文件夹结构和完整文件结构

# 设置字符编码
export LANG=en_US.UTF-8

# 设置路径
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
OUTPUT_DIR="$SCRIPT_DIR/../structure"

# 创建输出目录
mkdir -p "$OUTPUT_DIR"

# 获取当前日期时间作为后缀（格式：年月日_时分秒）
timestamp=$(date +"%Y%m%d_%H%M")

echo "📁 Generating directory structure files..."
echo

# 生成文件夹结构
echo "📄 1. Generating folder structure..."
cat > "$OUTPUT_DIR/folder_structure_$timestamp.md" << EOF
# beastkin-shield-universe Folder Structure

\`\`\`txt
EOF

# 运行find命令生成文件夹结构
cd "$ROOT_DIR" || exit 1
(
    first_line=1
    # 使用find查找所有目录并格式化输出
    find . -type d | sort | while IFS= read -r dir; do
        if [ "$first_line" -eq 1 ]; then
            echo "beastkin-shield-universe:."
            first_line=0
        else
            # 计算缩进级别
            depth=$(echo "$dir" | tr -cd '/' | wc -c)
            if [ "$depth" -gt 0 ]; then
                indent=""
                for ((i=1; i<depth; i++)); do
                    indent="$indent|   "
                done
                indent="${indent}+---"
            else
                indent=""
            fi

            # 获取目录名（去除前面的路径）
            dirname=$(basename "$dir")
            if [ -n "$dirname" ]; then
                echo "${indent}${dirname}"
            fi
        fi
    done
) >> "$OUTPUT_DIR/folder_structure_$timestamp.md"

echo '```' >> "$OUTPUT_DIR/folder_structure_$timestamp.md"

# 生成完整文件结构
echo "📄 2. Generating full file structure..."
cat > "$OUTPUT_DIR/full_structure_$timestamp.md" << EOF
# beastkin-shield-universe Full File Structure

\`\`\`txt
EOF

# 运行tree命令（如果可用）或使用find
if command -v tree &> /dev/null; then
    # 使用tree命令生成完整结构
    (
        first_line=1
        tree -a -I '.git' | while IFS= read -r line; do
            if [ "$first_line" -eq 1 ]; then
                echo "beastkin-shield-universe:."
                first_line=0
            else
                echo "$line"
            fi
        done
    ) >> "$OUTPUT_DIR/full_structure_$timestamp.md"
else
    # 如果没有tree命令，使用find生成简化的完整结构
    (
        echo "beastkin-shield-universe:."
        find . -type f -o -type d | grep -v '/\.git' | sort | while IFS= read -r item; do
            # 移除开头的 ./
            item="${item#./}"
            if [ -n "$item" ]; then
                # 计算缩进
                if [[ "$item" == */* ]]; then
                    # 是子目录或文件
                    depth=$(echo "$item" | tr -cd '/' | wc -c)
                    indent=""
                    for ((i=0; i<depth; i++)); do
                        indent="$indent|   "
                    done
                    # 检查是否是文件
                    if [ -f "$item" ]; then
                        echo "${indent}${item##*/}"
                    else
                        # 是目录
                        echo "${indent}+---${item##*/}"
                    fi
                else
                    # 根目录下的文件
                    if [ -f "$item" ]; then
                        echo "|   ${item}"
                    else
                        # 根目录下的目录
                        echo "+---${item}"
                    fi
                fi
            fi
        done
    ) >> "$OUTPUT_DIR/full_structure_$timestamp.md"
fi

echo '```' >> "$OUTPUT_DIR/full_structure_$timestamp.md"

echo
echo "✅ Done"
echo "📁 Output directory: $OUTPUT_DIR"
echo "📋 Generated files:"
ls -la "$OUTPUT_DIR"/*"$timestamp".md 2>/dev/null || echo "No files found with timestamp: $timestamp"