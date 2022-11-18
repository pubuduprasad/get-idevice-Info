# compile info
xcrun -sdk iphoneos clang -arch arm64 Functions.m -ObjC -framework Foundation -l MobileGestalt -o deviceInfo
