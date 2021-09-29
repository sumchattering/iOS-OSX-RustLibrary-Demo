//
//  RustLibraryObjCWrapper.mm
//  iOS-OSX-RustLibrary-Demo
//
//  Created by Sumeru Chatterjee on 9/29/21.
//

#import "RustLibraryObjCWrapper.h"

#include "RustLibrary.h"

@implementation RustLibraryObjCWrapper

- (NSString*)sayHello:(NSString*)hello
{
    const char* result = rust_greeting([hello UTF8String]);
    NSString* objcResult = [NSString stringWithUTF8String:result];
    return objcResult;
}

@end
