//main.mm

//Cross-platform type-safe, thread-safe C++ logger
//with flexible formatting (from fmtlib.net)
//that plays nice with Crashlytics.
//
//Optimized for portability
//(OSX, iOS, and Android; extensible)
//
//May not be the fastest logger out there.

//Usage:
//
//Include header: "Logger.hpp" in files you want to log from.
//Note: Can only include from C++ or Objective-C++ files.
//As a result, DON'T USE THIS LOGGER IN AppDelegate!


#import <Foundation/Foundation.h>
#include "Logger.hpp"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Cross-platform logger demo");
        
        iLog("Example of an informational log line, indicating file and current function.");
        iLog("Uses fmtlib.net library for flexible formatting.\n");
        
        eLog("Example of an error log line. Set up to be picked up by Crashlytics.");

        
    }
    return 0;
}
