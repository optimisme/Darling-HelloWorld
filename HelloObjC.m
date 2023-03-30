#include <stdio.h>

// darling shell
// clang -framework Foundation HelloObjC.m -o HelloObjC
// ./HelloObjC

#import <Foundation/Foundation.h>

@interface HelloWorld : NSObject
- (void)printHelloWorld;
@end

@implementation HelloWorld
- (void)printHelloWorld {
	NSLog(@"Hello, ObjC!");
}
@end

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		HelloWorld *hW = [[HelloWorld alloc] init];
		[hW printHelloWorld];
	}
	return 0;
}
