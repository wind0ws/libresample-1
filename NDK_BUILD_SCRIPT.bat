@echo off
color 0e
@echo Now compile project, wait a moment...
@echo.
@echo.

::call D:\Android\ndk-multiversion\android-ndk-r17\ndk-build.cmd -B
call ndk-build.cmd -B

@echo.
@echo.
@echo Compile complete, press any key to exit...
@echo.
@pause>nul