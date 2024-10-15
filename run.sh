TARGET_DIR=~

for d in *; do
    if [ -d "$d" ]; then  # Check if it's a directory
        stow -t "$TARGET_DIR" "$d"
    fi
done
