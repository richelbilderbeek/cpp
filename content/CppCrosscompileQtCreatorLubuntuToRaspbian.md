



 

 

 

 

 

([C++](Cpp.htm)) ![Qt Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![to](PicTo.png)![Raspbian](PicRaspbian.png) [How to cross-compile a Qt Creator project from Lubuntu to Raspbian?](CppCrossCompileQtCreatorLubuntuToRaspbian.htm)
===========================================================================================================================================================================================================================================

 

[How to cross-compile a Qt Creator project from Lubuntu to
Raspbian?](CppCrossCompileQtCreatorLubuntuToRaspbian.htm) describes hoe
to [cross compile](CppCrossCompile.htm) a [Qt Creator](CppQtCreator.htm)
project from [Lubuntu](CppLubuntu.htm) to [Raspbian](CppRaspbian.htm).

http://www.kitware.com/blog/home/post/426 Downloaded wget
http://crosstool-ng.org/download/crosstool-ng/crosstool-ng-1.18.0.tar.bz2
tar xjf crosstool-ng-1.18.0.tar.bz2 cd crosstool-ng-1.18.0 sudo apt-get
install gperf sudo apt-get install texinfo sudo apt-get install gawk
sudo apt-get install libncurses5-dev ./configure
--prefix=/home/richel/pi make make install export
PATH="\${PATH}:/home/richel/pi/bin" Now the executable ct-ng is present
in /home/richel/pi http://elinux.org/RPi\_Kernel\_Compilation git clone
git://github.com/raspberrypi/tools.git On Pi: mkdir to\_copy zcat
/proc/config.gz &gt; to\_copy/.config \#Otherwise conflict with the
existing .config folder

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
