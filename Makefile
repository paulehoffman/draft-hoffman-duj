SOURCE = draft-hoffman-duj
all: $(SOURCE).xml $(SOURCE).txt

$(SOURCE).txt:	$(SOURCE).xml
	xml2rfc --quiet -n --html $(SOURCE).xml

$(SOURCE).xml:	$(SOURCE).mkd
	kramdown-rfc $(SOURCE).mkd >$(SOURCE).new.xml
	mv $(SOURCE).new.xml $(SOURCE).xml

.PRECIOUS: %.xml
