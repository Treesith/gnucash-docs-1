# 2011-07-07, SASAKI Suguru: EPUB creation.

RUBY=/usr/bin/ruby1.8
DBTOEPUB=/usr/bin/dbtoepub

epubfile = $(docname).epub

$(epubfile): $(entities)

epub: $(epubfile)

.xml.epub:
	$(RUBY) $(DBTOEPUB) '$<'

CLEANFILES += $(epubfile)

