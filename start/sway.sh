#!/bin/sh

export GDK_BACKEND=wayland
export CLUTTER_BACKEND=wayland
export QT_QPA_PLATFORM=wayland-egl
export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
export ECORE_EVAS_ENGINE=wayland_egl
export ELM_ENGINE=wayland_egl
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export XDG_CURRENT_DESKTOP=kde
export QT_QPA_PLATFORMTHEME=qt5ct
export TERMINAL=alacritty
export BROWSER=firefox
#export MOZ_USE_XINPUT2=1

#export WLR_DRM_DEVICES=/dev/dri/card1

dbus-launch --sh-syntax --exit-with-session sway -d > ~/.sway.log 2>&1

