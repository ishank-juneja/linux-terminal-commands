#!/bin/bash
# Compress a folder full of PDFs
for pdf_file in Exam01_Q4_5_compressed/*.pdf; do
    # Checks if a file like pdf_file
    # actually exists or is just a glob	in itself
    [ -e "$pdf_file" ] || continue
	echo $pdf_file
		out_name="Exam01_Q4_5_compressed/$(basename "$pdf_file" .pdf)_Q4_Q5.pdf"		
	echo $out_name		
	# Use ghost script to compress PDFs
	mv $pdf_file $out_name
done

