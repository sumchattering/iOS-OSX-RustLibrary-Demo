//
//  RustLibraryObjCWrapper.h
//  iOS-OSX-RustLibrary-Demo
//
//  Created by Sumeru Chatterjee on 9/29/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RustLibraryObjCWrapper : NSObject

- (NSString*)sayHello:(NSString*)hello;

@end

NS_ASSUME_NONNULL_END
