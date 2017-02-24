



 

 

 

 

 

([C++](Cpp.htm)) ![Raspbian](PicRaspbian.png)![qemu](PicQemu.png) [Running raspbian under qemu](CppRaspbianUnderQemu.htm)
=========================================================================================================================

 

[Running raspbian under qemu](CppRaspbianUnderQemu.htm) describes how to
run [raspbian](CppRaspbian.htm) under [qemu](CppQemu.htm).

 

Summary from \[1\] (see \[1\] for more detailed instructions):

-   Download the [linux](CppLinux.htm) kernel:\
     \
      ------------------------------------------------------------------------
      `     wget http://xecdesign.com/downloads/linux-qemu/kernel-qemu     `
      ------------------------------------------------------------------------

     \
-   Download the [raspbian](CppRaspbian.htm) .img file
    '2012-10-28-wheezy-raspbian.zip' (or any newer file) from
    <http://www.raspberrypi.org/downloads>
-   Put the [linux](CppLinux.htm) kernel and [raspbian](CppRaspbian.htm)
    image in same working folder
-   In the working folder, do:\
     \
      ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     qemu-system-arm -kernel kernel-qemu -cpu arm1176 -m 256 -M versatilepb -no-reboot -serial stdio -append "root=/dev/sda2 panic=1" -hda 2012-10-28-wheezy-raspbian.img     `
      ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     \

 

-   [View a screenshot of running raspbian under qemu under
    Lubuntu](CppRaspbianUnderQemuUnderLubuntu.png)

 

 

 

 

 

![Raspbian](PicRaspbian.png)![qemu](PicQemu.png)![Lubuntu](PicLubuntu.png) Increase harddisk size
-------------------------------------------------------------------------------------------------

 

Initially, there is little disk space left on the emulated
[raspbian](CppRaspbian.htm).

 

-   [View a screenshot of the default disk space free when running
    raspbian under qemu under
    Lubuntu](CppRaspbianUnderQemuUnderLubuntuDfBefore.png)

 

Solution:

-   Increase the raspbian image its size by 10G:\
     \
      -----------------------------------------------------------------
      `     qemu-img resize 2012-10-28-wheezy-raspbian.img +10G     `
      -----------------------------------------------------------------

     \
    Note that the image is resized, but its hard disk use not yet (see
    [view](CppRaspbianUnderQemuUnderLubuntuDfAfterResize.png))
-   Start using its hard disk:  \
      ---------------------------------------------------------------------------------------------------------------------------------------------------------
      `     cp /usr/bin/raspi-config ~     sed -i 's/mmcblk0p2/sda2/' ~/raspi-config     sed -i 's/mmcblk0/sda/' ~/raspi-config     sudo ~/raspi-config     `
      ---------------------------------------------------------------------------------------------------------------------------------------------------------

     \
    Select 'expand\_rootfs' and raspi-config will add the resized
    harddisk (see
    [view](CppRaspbianUnderQemuUnderLubuntuDfAfterConfig.png))

 

 

 

 

 

![Raspbian](PicRaspbian.png)![qemu](PicQemu.png)![Lubuntu](PicLubuntu.png) Error: infinite login
------------------------------------------------------------------------------------------------

 

When following the instructions from \[1\] (using the newer file
'2013-02-09-wheezy-raspbian.zip' from
<http://www.raspberrypi.org/downloads>), raspbian started but looped the
login: after every login, there was a new login.

 

Solution: use the file '2012-10-28-wheezy-raspbian.zip' from
<http://www.raspberrypi.org/downloads> instead.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [xecdesign.com's article how to setup qemu under GNU/Linux and
    Windows](http://xecdesign.com/qemu-emulating-raspberry-pi-the-easy-way/)
2.  [How to start using the resized
    harddisk](http://www.raspberrypi.org/phpBB3/viewtopic.php?p=129525#p129525)

 

 

 

 

 





 



