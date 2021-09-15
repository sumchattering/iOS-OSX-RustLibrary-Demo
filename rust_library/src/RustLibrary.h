//
//  RustLibrary.h
//  iOS-OSX-RustLibrary-Demo
//
//  Created by Sumeru Chatterjee on 9/15/21.
//

#ifndef RustLibrary_h
#define RustLibrary_h

#include <stdint.h>

const char* rust_greeting(const char* to);
void rust_greeting_free(char *);

#endif /* RustLibrary_h */
