# 2011-07-17, SASAKI Suguru: Mobipocket generation.

mobifile = $(docname).mobi

mobi: $(mobifile)

mobi-am:

.epub.mobi:
	$(EBOOK_CONVERT) $(epubfile) $(mobifile)

CLEANFILES += $(mobifile)

