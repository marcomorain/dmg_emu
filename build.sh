#!/bin/bash
IMGUI_DIR="C:\Users\User\dev\github.com\ocornut\imgui"

zig c++ \
 -I ~/dev/SDL2-2.26.5/include/ \
 -I ${IMGUI_DIR} \
 -I ${IMGUI_DIR}/backends \
 -L ~/dev/SDL2-2.26.5/lib/x64/ \
 -lSDL2 -lSDL2main  \
 ${IMGUI_DIR}/imgui.cpp ${IMGUI_DIR}/imgui_demo.cpp ${IMGUI_DIR}/imgui_draw.cpp ${IMGUI_DIR}/imgui_tables.cpp ${IMGUI_DIR}/imgui_widgets.cpp \
 ${IMGUI_DIR}/backends/imgui_impl_sdl2.cpp ${IMGUI_DIR}/backends/imgui_impl_sdlrenderer.cpp \
 main.cpp
