# 2011-07-07, SASAKI Suguru: Mobipocket creation.

mobifile = $(docname).mobi

$(mobifile): $(epubfile)

mobi: $(mobifile)

.epub.mobi:
	/usr/bin/ebook-convert '$<' '$@'

CLEANFILES += $(mobifile)

