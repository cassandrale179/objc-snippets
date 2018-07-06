


// A slightly sad way to create and print arrays 
int main(){
  NSAutoreleasePool *myPool = [[NSAutoreleasePool alloc] init]; 
  NSArray *array = [NSArray arrayWithObjects:@"String1",@"String2",@"String3",nil]; 
  NSLog(@"%@", array); 
  [myPool drain]; 
  return 0;  
} 
