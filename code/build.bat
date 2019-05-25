@echo off

IF NOT EXIST ..\build mkdir ..\build
pushd ..\build

glslangValidator -V ..\code\text.vert -o text_vert.spv
glslangValidator -V ..\code\text.frag -o text_frag.spv

glslangValidator -V ..\code\draw.vert -o draw_vert.spv
glslangValidator -V ..\code\draw.frag -o draw_frag.spv

set vulkanInclude=%vulkan_sdk%\Include

set NAME=source
cl -I %vulkanInclude% -nologo -Zi "..\code\%NAME%.cpp" /link shlwapi.lib user32.lib gdi32.lib winmm.lib

popd