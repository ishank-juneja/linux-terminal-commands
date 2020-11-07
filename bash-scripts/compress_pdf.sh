#!/bin/bash
# Compress a folder full of PDFs
for pdf_file in Exam01_Q1_2_3_6_7_8_9/*.pdf; do
    # Checks if a file like pdf_file
    # actually exists or is just a glob	in itself
    [ -e "$pdf_file" ] || continue
	echo $pdf_file
		out_name="Exam01_Q1_2_3_6_7_8_9_compressed/$(basename "$pdf_file")"		
	echo $out_name		
	# Use ghost script to compress PDFs
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$out_name $pdf_file
done

