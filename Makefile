chapters:
	pandoc  -s src/The\ Way\ To\ V_Chapter*.docx -o build/html/chapters.html

appendices:
	pandoc --lua-filter=filters/appendices.lua -s src/X_Appendix*.docx src/How\ to\ compile\ tetris.docx -o build/html/appendices.html

book: chapters appendices
	pandoc --lua-filter=filters/meta.lua -s build/html/chapters.html build/html/appendices.html -o build/html/book.html --toc

clean:
	rm -rf build/
	mkdir -p build/html/