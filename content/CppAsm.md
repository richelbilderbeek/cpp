



 

 

 

 

 

([C++](Cpp.htm)) [asm](CppAsm.htm)
==================================

 

[Keyword](CppKeyword.htm) to start an Assembly code block.

 

The code below makes your computer beep:

 

  -------------------------------------------------------------------------------
  ` int main() {   asm   {     mov ax, 0x0E07     xor bx,bx     int 0x10   } }`
  -------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
