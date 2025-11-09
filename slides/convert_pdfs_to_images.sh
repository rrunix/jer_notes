#!/bin/bash

# Script to convert PDF slides to images

for pdf in *.pdf; do
    # Skip if no PDF files found
    [ -e "$pdf" ] || continue

    # Get the PDF name without extension
    basename="${pdf%.pdf}"

    echo "Processing $pdf..."

    # Create directory if it doesn't exist
    mkdir -p "$basename"

    # Convert PDF to PNG images with 150 DPI
    # pdftoppm outputs files with format: prefix-pagenum.png
    pdftoppm -png -r 150 "$pdf" "$basename/slide"

    echo " Created images in $basename/"
done

echo "Done! All PDFs converted."
