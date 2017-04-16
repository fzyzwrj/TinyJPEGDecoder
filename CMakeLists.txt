cmake_minimum_required (VERSION 2.8)
project (TINY_JPEG_DECODER)
add_executable (DECODER tinyjpeg.c loadjpeg.c jidctflt.c)