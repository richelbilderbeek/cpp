

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Error creating form: Invalid binary value on line 84](CppMiscErrorLibGlErrorFailedToLoadDriverSwrast.htm)
===========================================================================================================================

 

[Misc error](CppMiscError.htm).

 

p230198@fwn-biol-132-102:\~\$ qtcreator Starting process:
"/usr/bin/cmake" "--help" libGL error: failed to load driver: swrast
QOpenGLShader: could not create shader QOpenGLShaderProgram: could not
create shader program QOpenGLShader: could not create shader
QOpenGLShaderProgram::uniformLocation( imageTexture ): shader program is
not linked QOpenGLShaderProgram::uniformLocation( imageTexture ): shader
program is not linked QOpenGLShader: could not create shader
QOpenGLShaderProgram: could not create shader program QOpenGLShader:
could not create shader QOpenGLShaderProgram::uniformLocation(
imageTexture ): shader program is not linked
QOpenGLShaderProgram::uniformLocation( imageTexture ): shader program is
not linked QOpenGLShader: could not create shader QOpenGLShaderProgram:
could not create shader program QOpenGLShader: could not create shader
QOpenGLShaderProgram::uniformLocation( imageTexture ): shader program is
not linked QOpenGLShaderProgram: could not create shader program
QOpenGLShader: could not create shader Renderer failed shader
compilation: "" Segmentation fault (core dumped)

 

Solution

 

sudo apt-get install nvidia-340 --fix-missing

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
