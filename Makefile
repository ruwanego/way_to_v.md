chapters:
	pandoc  -s src/The\ Way\ To\ V_Chapter*.docx -o build/md/chapters.md

appendices:
	pandoc --lua-filter=filters/appendices.lua -s src/X_Appendix*.docx src/How\ to\ compile\ tetris.docx -o build/md/appendices.md

book: chapters appendices
	pandoc --lua-filter=filters/meta.lua -s build/md/chapters.md build/md/appendices.md -o build/md/book.md --toc

clean:
	rm -rf build/
	mkdir -p build/md/