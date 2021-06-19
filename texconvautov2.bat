@echo off
FOR /R "%~1" %%C in (*.jpg;*.jpeg;*.png;*.tga) do (
	pushd "%%~dpC"
	"%~dp0\texconv" *.tga -alpha -sepalpha -dx9 -y -ft dds
	"%~dp0\texconv" *.png -alpha -sepalpha -dx9 -y -ft dds
	"%~dp0\texconv" *.jpg -alpha -sepalpha -dx9 -y -ft dds
	"%~dp0\texconv" *.jpeg -alpha -sepalpha -dx9 -y -ft dds
	del *.tga
	del *.png
	del *.jpg
	del *.jpeg
	popd
)
:EOF
pause