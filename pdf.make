# 2008-10-02, Tom Browder: PDF creation.
# 2010-11-19, Geert Janssens: Make the pdf create more universally usable.
#
# See README and HACKING.

fofile  = $(docname).fo
pdffile = $(docname).pdf

pdf: $(pdffile)

.xml.fo:
	xsltproc -o '$@' --stringparam fop1.extensions 1 $(top_srcdir)/xsl/1.75.2/fo/docbook.xsl '$<'

.fo.pdf:
	fop '$<' '$@'

CLEANFILES += $(pdffile) $(fofile)
