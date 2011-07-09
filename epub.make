# 2011-07-10, SASAKI Suguru: EPUB creation.

epubfile = $(docname).epub

$(epubfile): $(entities)

epub: $(epubfile)

.xml.epub:
	EPUB_TMPDIR=`mktemp -d .epubtmpXXXXXXXX` && \
	cd $$EPUB_TMPDIR && \
	echo "application/epub+zip" > mimetype && \
	xsltproc --stringparam base.dir OEBPS/ \
	         --stringparam epub.metainf.dir META-INF/ \
	         --stringparam epub.oebps.dir OEBPS/ \
	         ../../../xsl/1.75.2/epub/docbook.xsl \
	         ../$(docname).xml && \
	cp -L -R ../figures OEBPS/ && \
	zip -X -r ../$(epubfile) mimetype META-INF OEBPS && \
	cd .. && \
	rm -fr $$EPUB_TMPDIR

CLEANFILES += $(epubfile)

