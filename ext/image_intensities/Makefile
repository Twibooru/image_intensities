CC    ?= cc
AR    ?= ar
RM    ?= rm
MKDIR ?= mkdir

.PHONY: all clean

all: lib/libimage_intensities.so

lib/libimage_intensities.so: definitions.h intensities.c png.c jpeg.c
	$(MKDIR) -p lib
	$(CC) -Wall -Wextra -pedantic -D_FORTIFY_SOURCE=2 -O3 intensities.c png.c jpeg.c -Iturbojpeg -fPIC -shared -o lib/libimage_intensities.so -lpng -lturbojpeg

clean:
	$(RM) -rf $(JPEG_OBJECTS)
	$(RM) -rf lib
