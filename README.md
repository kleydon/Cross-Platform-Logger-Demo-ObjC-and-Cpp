# Cross-Platform-Logger-Demo-ObC-and-Cpp:

Cross-platform logger for OSX, iOS, Android and C++, integrates with Crashlytics. Attempts to be thread-safe and type-safe. Provides flexible formatting options, courtesty of the fmt library.

## Usage:

Include the header "Logger.hpp" in the files you want to log from. The header can only be included from C++ or Objective-C++ files (but not Objective-C files... E.g. for OSX/iOS, don't include from AppDelegate.m).  

For iOS, set the pre-processor value: `#define QX_IOS`
For Android, set the pre-processor value: `#define QX_ANDROID`


## Implementation Notes:

See:
* http://www.sureshjoshi.com/mobile/cross-platform-mobile-logging-macro/
* http://stackoverflow.com/questions/10921108/objective-c-preprocessor-definition-dynamic-c-string-to-nsstring-declaration

Note 1: The use of macro functions here is extensive, so that `\_\_FILE\_\_`,
`\_\_LINE\_\_`, etc will reflect the details of the caller, and not the
logging functions themselves.

Note 2: `##\_\_VA_ARGS\_\_` used instead of `\_\_VA_ARGS\_\_` to allow for format-only
strings, e.g to avoid a trailing comma: `printf("Hi",)` for some compilers
which don't automatically omit it. GCC and VisualStudio support this. 
Clang does too, at least for the Mac.

Note 3: A trick to having multiple statements, local vars, etc, within a pre-processor 
macro is to put them in the body of a do...while loop.
