# Environment
- Keil
- Matlab

# Hardware
- stc12c5A60s2
- ws2812

# Usage
1. Download a video and use `Adobe PR` export it as a image sequence.  
Note that totals of images cannot exceed 56(or change code to use RAM to save img, so that can save 100 images at most.)
2. Use `Adobe PS` reduce the resolution of images to 16x16.
3. Run ``change_img_2_matix.m``, convert images to matrix, and save them as `.txt` or others.
4. Run ``mix_matix_2_array.cpp'', convert the matrix file to string that can be placed directly into set_array_2_C51.c.
5. Copy the string from step4 to ``set_array_2_C51.c``, compile.
6. Put the ``final_binary_file.hex`` into MCU and complete.
