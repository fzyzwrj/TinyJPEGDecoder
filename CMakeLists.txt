cmake_minimum_required (VERSION 2.8)
project (Tiny_JPEG_Decoder)
# aux_source_directory (src DIR_SRC)
add_executable (Tiny_JPEG_Decoder src/tinyjpeg.c src/loadjpeg.c src/jidctflt.c)
