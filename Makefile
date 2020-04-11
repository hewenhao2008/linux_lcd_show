all: liblcdshow picture_show chinese_show 

picture_show:
	gcc picture_show.c -o picture_show -Werror -I. -L. -llcdshow -lpng -lz

chinese_show:
	gcc chinese_show.c -o chinese_show -finput-charset=UTF-8 -fexec-charset=GBK -Werror -I. -L. -llcdshow  -lpng -lz

liblcdshow:
	gcc -fPIC --share bmp_show.c png_show.c lcd_chinese_show.c  -o liblcdshow.so   -Wall  -lpng -lz

clean:
	rm -rf *.so picture_show chinese_show
