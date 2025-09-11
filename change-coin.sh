#!/bin/bash
set -euo pipefail

# ======================
# Config
# ======================
# Danh sách thư mục cần duyệt
FOLDERS=("templates" "ui-package" "utils")

# Chuỗi cần thay
NEED_REPLACE="CUSTOME"

# Chuỗi thay thế
REPLACE_TEXT="YOURCOIN"

# ======================
# Thực thi
# ======================

for folder in "${FOLDERS[@]}"; do
  if [ -d "$folder" ]; then
    echo "🔍 Đang xử lý thư mục: $folder"
    # Tìm toàn bộ file và thay thế trực tiếp
    find "$folder" -type f -exec sed -i "s/${NEED_REPLACE}/${REPLACE_TEXT}/g" {} +
  else
    echo "⚠️ Bỏ qua, không phải thư mục: $folder"
  fi
done

echo "✅ Hoàn tất thay thế '${NEED_REPLACE}' → '${REPLACE_TEXT}'"
