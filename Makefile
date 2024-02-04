home:
	pandoc --bibliography ~/Dropbox/Zotero-library.bib content/_index_source.markdown -t markdown-citations  -o content/_index.md  --citeproc --standalone
	sed -i.old -r '/^```/d' content/_index.md 
	sed -i.old -r '/^:::/d' content/_index.md
	# TODO: fix page, remove extraneous stuff