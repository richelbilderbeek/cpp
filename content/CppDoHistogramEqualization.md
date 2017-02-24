



 

 

 

 

 

([C++](Cpp.md)) [DoHistogramEqualization](CppDoHistogramEqualization.md)
==========================================================================

 

[Graphics](CppVclGraphics.md) [code snippet](CppVclCodeSnippets.md) to
perform a histogram equalization on a [VCL](CppVcl.md)
[TImage](CppTImage.md).

 

[DoHistogramEqualization](CppDoHistogramEqualization.md) is similar to
[EnhanceContrast](CppEnhanceContrast.md), except that
[EnhanceContrast](CppEnhanceContrast.md) is milder: it tries to
minimally change the average greyness (using
[GetAverageGreyness](CppGetAverageGreyness.md) to first measure it).

 

I have also programmed a tool that uses
[DoHistogramEqualization](CppDoHistogramEqualization.md), called
[HistogramEqualizationer](CppHistogramEqualizationer.md).

 

[DoHistogramEqualization](CppDoHistogramEqualization.md) works on both
grey and color images.

 

[DoHistogramEqualization](CppDoHistogramEqualization.md) assumes you
have defined the functions [GetImageHistogram](CppGetImageHistogram.md)
and [GetCumulativeHistogram](CppGetCumulativeHistogram.md).

 

-   [View an example of a composition image demonstrating
    DoHistogramEqualization](CppDoHistogramEqualization.png): first, on
    the original (top) image, a [ConvertToGrey](CppConvertToGrey.md)
    was performed, resulting in the middle image. On this result,
    [DoHistogramEqualization](CppDoHistogramEqualization.md) was
    performed on, resulting in the bottom image
-   [View an example of a composition image demonstrating
    EnhanceContrast and
    DoHistogramEqualization](CppEnhanceContrast.png): first, on the
    original (top-left) image, a
    [DoFilterOperation](CppDoFilterOperation.md) was performed,
    resulting in the bottom-left image. On this result, both a
    [DoHistogramEqualization](CppDoHistogramEqualization.md) (top-right)
    and [EnhanceContrast](CppEnhanceContrast.md) (bottom-right) were
    performed on
-   [View the code of 'DoHistogramEqualization' in plain
    text](CppDoHistogramEqualization.txt)
-   [Go to the page of
    'HistogramEqualizationer'](CppHistogramEqualizationer.md)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppDoHistogramEqualization.htm void DoHistogramEqualization(const TImage * const source, TImage * const target) {   assert(source!=0 && "Source image is NULL");   assert(target!=0 && "Target image is NULL");   assert(source->Picture->Bitmap!=0 && "Source bitmap is NULL");   assert(target->Picture->Bitmap!=0 && "Target bitmap is NULL");   assert(source->Picture->Bitmap->PixelFormat == pf24bit && "Source bitmap must be 24 bit");   assert(target->Picture->Bitmap->PixelFormat == pf24bit && "Target bitmap must be 24 bit");   //Get the width and height from the source   const int width  = source->Picture->Bitmap->Width;   const int height = source->Picture->Bitmap->Height;   //Set the target's width and height   target->Picture->Bitmap->Width  = width;   target->Picture->Bitmap->Height = height;    const int surface = width * height;   const int nGreyValues = 256; //There are 256 different pixel intensities   const std::vector<int> histogram = GetImageHistogram(source);   assert(nGreyValues==static_cast<int>(histogram.size()));   const std::vector<int> cumulativeHistogram = GetCumulativeHistogram(histogram);   assert(nGreyValues==static_cast<int>(cumulativeHistogram.size()));    //Works, but anybody knows how to use std::for_each or std::transform for this?   std::vector<int> rescaledHistogram(nGreyValues,0);   for (int i=0; i!=nGreyValues; ++i)   {     //'surface + 1' to prevent that rescaledGreyValue == 256     const int rescaledGreyValue       = static_cast<int>(           static_cast<double>(nGreyValues)         * static_cast<double>(cumulativeHistogram[i])         / static_cast<double>(surface + 1) );     assert(rescaledGreyValue >= 0);     assert(rescaledGreyValue < 256);     rescaledHistogram[i] = rescaledGreyValue;   }    for (int y=0; y!=height; ++y)   {     const unsigned char * lineSource       = static_cast<const unsigned char *>(         source->Picture->Bitmap->ScanLine[y]);     unsigned char * lineTarget       = static_cast<unsigned char *>(         target->Picture->Bitmap->ScanLine[y]);     for (int x=0; x!=width; ++x)     {       const int greyOriginal         = (lineSource[x*3+0] + lineSource[x*3+1] + lineSource[x*3+2]) / 3;       assert(greyOriginal >=   0);       assert(greyOriginal  < 256);       const int greyNew = rescaledHistogram[greyOriginal];       assert(greyNew >= 0);       assert(greyNew  < 256);        lineTarget[x*3+0]=greyNew; //Blue       lineTarget[x*3+1]=greyNew; //Green       lineTarget[x*3+2]=greyNew; //Red     }   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



