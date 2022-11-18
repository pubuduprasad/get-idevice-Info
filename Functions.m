#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import "MobileGestalt.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#define HAS_ARG(x,y) (!strcmp(argv[i], x) && (i + y) < argc)

NSString* SerialNumber() {
    return [NSString stringWithFormat:@"%@", MGCopyAnswer(kMGSerialNumber)];
}
NSString* WifiAddress() {
    return [NSString stringWithFormat:@"%@", MGCopyAnswer(kMGWifiAddress)];
}
NSString* BluetoothAddress() {
    return [NSString stringWithFormat:@"%@", MGCopyAnswer(kMGBluetoothAddress)];
}
NSString* UniqueChipID() {
    return [NSString stringWithFormat:@"%@", MGCopyAnswer(kMGUniqueChipID)];
}

int main(int argc, char** argv) 
{
    printf("SN: %s\n", [SerialNumber() UTF8String]);
    printf("W-MAC: %s\n", [WifiAddress() UTF8String]);
    printf("B_MAC: %s\n", [BluetoothAddress() UTF8String]);
    printf("ECID: %s\n", [UniqueChipID() UTF8String]);   
    return 0;
}

