home:
	pandoc --bibliography ~/Dropbox/Zotero-library.bib content/_index_source.markdown -t markdown-citations  -o content/_index.md  --citeproc --standalone
	sed -i.old -r '/^```/d' content/_index.md 
	sed -i.old -r '/^:::/d' content/_index.md
	# TODO: fix page, remove extraneous stuff

pres:
	# Experimenting with making presentation versions of site content (Note that this does not work with tables without the two-stage conversion to HTML THEN PPTX)
	rrkive-website % pandoc -s content/fundamentals/workspaces-vs-repositories/index.md -o test.html --resource-path content/fundamentals/workspaces-vs-repositories/ --html-q-tags ;pandoc -s test.html  -o test.pptx --resource-path content/fundamentals/workspaces-vs-repositories/