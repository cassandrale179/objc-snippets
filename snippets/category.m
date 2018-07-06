#import <Foundation/Foundation.h>

@interface NSString(MyAdditions)
+(NSString *)getCopyRightString;
@end

@implementation NSString(MyAdditions)

+(NSString *)getCopyRightString {
   return @"Copyright TutorialsPoint.com 2013";
}

@end

int main(int argc, const char * argv[]) {
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   NSString *copyrightString = [NSString getCopyRightString];
   NSLog(@"Accessing Category: %@",copyrightString);
   
   [pool drain];
   return 0;
}

/* 
Category allows you to add an extra method for a class. 
Category is immediately available for all instances of that class + its subclasses. 
However, to use category in a different file, user must import the header 
*/ 
