



 

 

 

 

 

([C++](Cpp.md)) [wav](CppWav.md)
==================================

 

[wav](CppWav.md) is a music file format.

 

A WAV file consists out of 3 parts with in total 14 different items:

 

-   The RIFF chunk descriptor
    -   The chunk ID, for a WAV this is 'RIFF' (four characters)
    -   The chunk size (integer, four bytes, little-endian)
    -   Format, for a WAV this is 'WAVE'. (four characters)
-   The fmt sub-chunk
    -   Sub-chunk 1 ID, this will be 'fmt  ' (yes, the fourth character
        is a square)(four characters)
    -   Sub-chunk 1 size (integer, four bytes, little-endian)
    -   Audio format (two bytes, little-endian)
    -   Number of channels (integer, two bytes, little-endian)
    -   Sample rate (integer, four bytes, little-endian)
    -   Byte rate (integer, four bytes, little-endian)
    -   Block align (integer, two bytes, little-endian)
    -   Bits per sample (integer, two bytes, little-endian)
-   The data sub-chunk
    -   Sub-chunk 2 ID, this will be 'data' (four characters)
    -   Sub-chunk 2 size (integer, four bytes, little-endian)
    -   Audio data (four bytes, little-endian)

 

 

 

 

 

External links
--------------

 

-   [Darkoman's CodeProject article on a wave
    class](http://www.codeproject.com/KB/audio-video/CWave.aspx)

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
