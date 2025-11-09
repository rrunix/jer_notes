#!/bin/bash
# Convert all Mermaid diagrams in resources folders to SVG

find . -type d -name "resources" | while read -r resources_dir; do
    echo "Processing directory: $resources_dir"

    for file in "$resources_dir"/*.mmd; do
        if [ -f "$file" ]; then
            filename=$(basename "$file" .mmd)
            output_file_pdf="${resources_dir}/${filename}.png"
            output_file_html="${resources_dir}/${filename}.svg"

            echo "  Generating $filename.mmd..."
            mmdc -i "$file" -o "$output_file_pdf" --scale 3 -b transparent
            mmdc -i "$file" -o "$output_file_html" -b transparent
        fi
    done
done

echo ""
echo "All diagrams generated!"
