find . -type f -name "*.vim" | xargs sed -i -e 's/\r$//' $1
