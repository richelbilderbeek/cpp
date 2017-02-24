



 

 

 

 

 

([C++](Cpp.htm)) [asm](CppAsm.htm)
==================================

 

[Keyword](CppKeyword.htm) to start an Assembly code block.

 

The code below makes your computer beep:

 

  -------------------------------------------------------------------------------
  ` int main() {   asm   {     mov ax, 0x0E07     xor bx,bx     int 0x10   } }`
  -------------------------------------------------------------------------------

 

 

 

 

 





 



