



 

 

 

 

 

([C++](Cpp.md)) [Audio](CppAudio.md)
======================================

 

The standard [C++](Cpp.md) [library](CppLibrary.md) (the
[STL](CppStl.md)) does not supply audio by default. Below some audio
[libraries](CppLibrary.md) I have used are described.

 

 

 

 

 

Comparison of C++ audio libraries
---------------------------------

 

This comparison is not thorough. When no [reference](CppReferences.md)
is given, I know this from personal experience. If I do not know
something sure, the items starts with a question mark.

My personal goal is to use the [audio](CppAudio.md)
[library](CppLibrary.md) to produce a beep of any frequency in C++
source code. To me it seems that not all libraries seem to be used from
source code and omit code examples on their web sites.

 

+-----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+
| **[Librar | **Comes\  | **Audio\  | **Audio\  | **Could   | **[Licenc | **Support | **Homepag |
| y](CppLib | with\     | analysis* | synthesis | I\        | e](CppLic | s**       | e**       |
| rary.md) | [IDE](Cpp | *         | **        | produce   | ence.md) |           |           |
| \         | Ide.md)* |           |           | a\        | **        |           |           |
| name**    | *         |           |           | beep in   |           |           |           |
|           |           |           |           | C++\      |           |           |           |
|           |           |           |           | source    |           |           |           |
|           |           |           |           | code?**   |           |           |           |
+-----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+
| [CLAM](Cp | ?none     | Yes \[1\] | Yes \[1\] | No        | GPL 2.0   | Linux     | [CLAM     |
| pClam.htm |           |           |           |           | \[1\]     | \[1\],\   | homepage] |
| )         |           |           |           |           |           | Mac       | (http://c |
|           |           |           |           |           |           | \[1\],\   | lam-proje |
|           |           |           |           |           |           | Windows   | ct.org)   |
|           |           |           |           |           |           | \[1\]     |           |
+-----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+
| CLS       | ?none     | Yes \[1\] | Yes \[1\] | From      | ?Freeware | ?Linux,\  | [CLS      |
|           |           |           |           | file\     |           | ?Mac,\    | homepage] |
|           |           |           |           | only      |           | ?Windows  | (http://f |
|           |           |           |           |           |           |           | astlabinc |
|           |           |           |           |           |           |           | .com/CSL/ |
|           |           |           |           |           |           |           | index.htm |
|           |           |           |           |           |           |           | l)        |
+-----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+
| Marsyas   | ?none     | Yes \[1\] | No \[1\]  | From      | ?Freeware | ?Linux,\  | [Marsyas  |
|           |           |           |           | file\     |           | ?Mac,\    | homepage] |
|           |           |           |           | only      |           | ?Windows  | (http://m |
|           |           |           |           |           |           |           | arsyas.in |
|           |           |           |           |           |           |           | fo/docume |
|           |           |           |           |           |           |           | ntation)  |
+-----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+
| Open      | ?none     | No \[1\]  | Yes       | No        | LGPL-like | Linux     | [OSW      |
| Sound\    |           |           | \[1\]\[4\ |           | \[4\]     | \[4\],\   | homepage] |
| World     |           |           | ]         |           |           | Mac       | (http://o |
|           |           |           |           |           |           | \[4\],\   | sw.source |
|           |           |           |           |           |           | Windows   | forge.net |
|           |           |           |           |           |           | \[4\]     | )         |
+-----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+
| [Phonon]( | [Qt       | ?         | ?         | No        | Free      | Linux,\   | [Phonon   |
| CppPhonon | Creator]( |           |           |           | software  | Mac,\     | homepage] |
| .md)     | CppQtCrea |           |           |           |           | Windows   | (http://p |
|           | tor.md)  |           |           |           |           |           | honon.kde |
|           |           |           |           |           |           |           | .org)     |
+-----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+
| [STK](Cpp | ?none     | No \[1\]  | Yes       | Yes       | LGPL-like | Linux     | [STK      |
| Stk.md)  |           |           | \[1\]\[2\ |           | \[3\]     | \[2\],\   | homepage] |
|           |           |           | ]         |           |           | Mac       | (https:// |
|           |           |           |           |           |           | \[2\],\   | ccrma.sta |
|           |           |           |           |           |           | Windows   | nford.edu |
|           |           |           |           |           |           | \[2\]     | /software |
|           |           |           |           |           |           |           | /stk/inde |
|           |           |           |           |           |           |           | x.html)   |
+-----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [The CLAM FAQ
    page](http://clam-project.org/wiki/Frequenly_Asked_Questions).
2.  [The STK Information
    page](https://ccrma.stanford.edu/software/stk/information.html).
3.  [The STK FAQ
    page](https://ccrma.stanford.edu/software/stk/faq.html).
4.  [The OCS FAQ page](http://osw.sourceforge.net).

 

 

 

 

 





 



