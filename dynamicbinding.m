/* Definition: Dynamic binding is determining the method to invoke at runtime instead of at compile time.  
Dynamic binding enables polymorphism. If Rectangle & Square both has a printArea method, 
the expression [anObject printArea] is determined at runtime.
*/

#import <Foundation/Foundation.h>

// Create the class Square 
@interface Square:NSObject {
   float area;
}

- (void)calculateAreaOfSide:(CGFloat)side;
- (void)printArea;
@end

@implementation Square
- (void)calculateAreaOfSide:(CGFloat)side {
   area = side * side;
}

- (void)printArea {
   NSLog(@"The area of square is %f",area);
}

@end


// Create the class Rectangle 
@interface Rectangle:NSObject {
   float area;
}

- (void)calculateAreaOfLength:(CGFloat)length andBreadth:(CGFloat)breadth;
- (void)printArea;
@end

@implementation  Rectangle

- (void)calculateAreaOfLength:(CGFloat)length andBreadth:(CGFloat)breadth {
   area = length * breadth;
}

- (void)printArea {
   NSLog(@"The area of Rectangle is %f",area);
}

@end

int main() {

   // Create a square and calculate its area 
   Square *square = [[Square alloc]init];
   [square calculateAreaOfSide:10.0];
   
   // Create a rectangle and calculate its area 
   Rectangle *rectangle = [[Rectangle alloc]init];
   [rectangle calculateAreaOfLength:10.0 andBreadth:5.0];
   
   // Create an array shapes that has a square and rectangle in it 
   NSArray *shapes = [[NSArray alloc]initWithObjects: square, rectangle,nil];
   
   // Print area of the square 
   id object1 = [shapes objectAtIndex:0];
   [object1 printArea];
   
   // Print area of the rectangle 
   id object2 = [shapes objectAtIndex:1];
   [object2 printArea];
   
   return 0;
}
