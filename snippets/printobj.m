#import <Foundation/Foundation.h>
#import <objc/runtime.h>


// Interface of a box goes here
@interface Box:NSObject {
    double length;    // Length of a box
    double breadth;   // Breadth of a box
    double height;    // Height of a box
}



// By specifying property, it makes height public so box1 instance can modify it
@property (nonatomic, readwrite) double height;
@property (nonatomic, readwrite) double breadth;
@property (nonatomic, readwrite) double length;


// List of methods to be used
-(double) volume;
- (void) logProperties;
@end



@implementation Box

// Implementation of function volume
-(double) volume {
    return length*breadth*height;
}

// Log properties
-(void) logProperties{
    unsigned int numberOfProperties = 0;
    objc_property_t *propertyArray = class_copyPropertyList([Box class], &numberOfProperties);
    for (NSUInteger i = 0; i < numberOfProperties; i++) {
        objc_property_t property = propertyArray[i];
        NSString *name = [[NSString alloc] initWithUTF8String:property_getName(property)];
        NSLog(@"Property %@ Value: %@", name, [self valueForKey:name]);
    }
}






@end


int main(int argc, const char * argv[]){
    Box *box1 = [[Box alloc]init];    // Create box1 object of type Box
    box1.height = 5.0;
    box1.breadth = 6.0;
    box1.length = 12.5;
    [box1 logProperties];
    
    
    
    
}
