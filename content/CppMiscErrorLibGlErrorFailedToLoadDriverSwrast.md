
 

 

 

 

 

([C++](Cpp.md)) [Error creating form: Invalid binary value on line 84](CppMiscErrorLibGlErrorFailedToLoadDriverSwrast.md)
===========================================================================================================================

 

[Misc error](CppMiscError.md).

 

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

 

 

 

 

 

 

