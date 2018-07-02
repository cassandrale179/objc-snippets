/* Definition: In Objective C, each class has only one parent, so to use methods outside the parent tree, it can use protocol. 
A protocol is a list of method declarations.  If your class adopts the protocol, then you have to implement those methods 
in your class. If a protocol is optional, then your class do not have to implement those methods. 
*/ 



/* Syntax of a protocol */ 
@protocol ProtocolName
@required
// list of required methods
@optional
// list of optional methods
@end 




#import <Foundation/Foundation.h>

@protocol PrintProtocolDelegate
- (void)processCompleted;

@end 


// Create a class name PrintClass 
@interface PrintClass :NSObject {
   id delegate;
} 

- (void) printDetails;
- (void) setDelegate:(id)newDelegate; 

@end 


// Implementation of the class PrintClass 
@implementation PrintClass
- (void)printDetails {
   NSLog(@"Printing Details");
   [delegate processCompleted]; 
}

- (void) setDelegate:(id)newDelegate {
   delegate = newDelegate;
}

@end


// Create another class called SampleClass that implement the PrintProtocolDelegate 
@interface SampleClass:NSObject<PrintProtocolDelegate>
- (void)startAction;

@end

// Implementation of SampleClass 
@implementation SampleClass
- (void)startAction {
   PrintClass *printClass = [[PrintClass alloc]init];    // Create an instance of PrintClass 
   [printClass setDelegate:self];                        // Set the delegate of printClass 
   [printClass printDetails];                            // Calling the printDetails method 
}


// Implement the method of the protocol PrintProtocolDelegate 
-(void)processCompleted {
   NSLog(@"Printing Process Completed");
}

@end


// Main Function 
int main(int argc, const char * argv[]) {
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   SampleClass *sampleClass = [[SampleClass alloc]init];  // Create an instance of sampleClass
   [sampleClass startAction];                             // Call the method startAction 
   [pool drain];
   return 0;
}


/* Execution flow: It starts with startAction, once the process is completed, the delegate method processCompleted is called to intimate the operation is completed.
*/ 

