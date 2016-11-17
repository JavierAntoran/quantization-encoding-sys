# quantization-encoding-sys

An array dPCM and ADM of systems for audio/ image encoding. Some sample files [1-4] are also incuded for testing. Each system is optimized for a specific type of signal to minimize resulting data size while maintaining a minimum signal to quantization noise ratio of 15dB;

1. Speech signal (Audio) (0-6 khz). 2 Bit dPCM quantization with a mu-law compander and huffman coding.
2. Photograph (greyscale) ADM quantization with LZW compression. 
3. Music signal (Audio) (0-20khz) 2 Bit dPCM quantization with a A-law compander and huffman coding.
4. Sensor output graph (encephalo cardiogram) ADM quantization with LZW compression. 

Functions for calculating SNRq ratios and signal analysis are also included. With previous knoledge of signal characteristics, these systems can be fine tuned for maximum performance. Currently they are tweaked to work well with the sample files provided.



