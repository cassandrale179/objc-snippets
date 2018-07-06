#import <Foundation/Foundation.h>
#import <objc/runtime.h>


// Interface of a Person
@interface Person : NSObject {
    NSString *personName;
    NSInteger personAge;
}

- (id)createName:(NSString *)name createAge:(NSInteger)age;
- (void)print;
@end

// Implementation of the Person class
@implementation Person
-(id)createName:(NSString *)name createAge:(NSInteger)age {
    personName = name;
    personAge = age;
    return self;
}

- (void)print{
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
}
@end


// Declare Employee class inherit from person
@interface Employee : Person {
    NSString *employeeEducation;
}

- (id) createName:(NSString *)name createAge:(NSInteger)age createEducation:(NSString *) employeeEducation;
- (void) print;

@end


// Implementaton of derived class Employee
@implementation Employee
- (id) createName:(NSString *) name createAge:(NSInteger) age createEducation:(NSString *) education {
    personName = name;
    personAge = age;
    employeeEducation = education;
    return self;
}

- (void) print {
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
    NSLog(@"Education: %@", employeeEducation);
}
@end


// Main functions
int main(int argc, const char * argv[]){
    //NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSLog(@"Base class Person Object");
    Person *person = [[Person alloc] createName:@"Minh" createAge:19];
    [person print];
    NSLog(@"Derived class employee");
    Employee *employee = [[Employee alloc] createName:@"Minh" createAge: 19 createEducation: @"Drexel University"];
    [employee print];
    //[pool drain];
    return 0;
}
