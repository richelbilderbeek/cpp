
 

 

 

 

 

([C++](Cpp.md)) [asm](CppAsm.md)
==================================

 

[Keyword](CppKeyword.md) to start an Assembly code block.

 

The code below makes your computer beep:

 

  -------------------------------------------------------------------------------
  ` int main() {   asm   {     mov ax, 0x0E07     xor bx,bx     int 0x10   } }`
  -------------------------------------------------------------------------------

 

 

 

 

 

 

