CC    ?= cc
RM    ?= rm
MKDIR ?= mkdir

.PHONY: all clean

all: lib/libimage_intensities.so

lib/libimage_intensities.so: definitions.h intensities.c png.c jpeg.c
	$(MKDIR) -p lib
	$(CC) -Wall -Wextra -pedantic -Wno-clobbered -D_FORTIFY_SOURCE=2 -O3 -std=c99 intensities.c png.c jpeg.c -Iturbojpeg -fPIC -shared -o lib/libimage_intensities.so -lpng -lturbojpeg

clean:
	$(RM) -rf lib
