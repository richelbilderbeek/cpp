# ([C++](Cpp.md)) [How to respond to the mobile phone's orientation?](CppSymbianRespondToOrientation.md)

The file '/sys/class/i2c-adapter/i2c-3/3-001d/coord' (the file does not
have a file extension) contains the values of the accelerometer \[1\]
(or see [How to respond to the mobile phone's orientation, example
1](CppSymbianRespondToOrientation.md)). These values are in X-Y-Z
order, are seperated by a space and have the [integer](CppInt.md) range
\[-1000,1000\].
