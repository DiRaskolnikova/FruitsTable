#import "AppleTree.h"

@implementation AppleTree

@synthesize arrayOfApple = _arrayOfApple;
@synthesize countOfApple = _countOfApple;

-(bool) dropApple: (Apple *) apple
{
    NSUInteger indexObjectInArray = [[self arrayOfApple] indexOfObject:apple];
    if(indexObjectInArray != NSNotFound)
    {
        [[[self arrayOfApple] objectAtIndex:indexObjectInArray] drop];
        [[self arrayOfApple] removeObject:apple];
        [self setCountOfApple:@([[self countOfApple] integerValue] - 1)];
        NSLog(@"Apple was droped");
        return true;
    }
    return false;
}
-(void) addApple:(Apple *)apple
{
    [[self arrayOfApple] addObject: apple];
    [self setCountOfApple:@([[self countOfApple] integerValue] + 1)];
    NSLog(@"Apple was added");
}
-(void) grow
{
    int countAddApple = arc4random()%6;
    
    int c = [[self arrayOfApple] count];
    
    for(int i = 0; i < countAddApple; ++i)
    {
        Apple *capple = [[self arrayOfApple]objectAtIndex: arc4random()%c];
        NSString *csort = capple.sort;
        [[self arrayOfApple] addObject: [[Apple alloc] init:
                                         [[NSNumber alloc] initWithInt: (arc4random()%6 + 1)]:csort]];
    }
    [self setCountOfApple:@([[self countOfApple] integerValue] + countAddApple)];
    NSLog(@"AppleTree grew");
    
}
-(void) shake
{
    int countDropApple = arc4random()%6;
    NSUInteger countAppleInArray = [[self arrayOfApple] count];
    
    for(int i = 0; i < countDropApple && i < countAppleInArray; ++i)
    {
        [[[self arrayOfApple] lastObject] drop];
        [[self arrayOfApple] removeLastObject];
    }
    [self setCountOfApple:@([[self countOfApple] integerValue] - countDropApple)];
    NSLog(@"AppleTree was shaken");

}
-(void) logInformation
{
    NSLog(@"%@: %d", @"Count of apples", [[self countOfApple] integerValue]);
    NSLog(@"Apples:");
    int i = 0;
    for(Apple *apple in [self arrayOfApple]){
        i++;
        NSLog(@"%d) sort: %@, count of seeds: %d", i, apple.sort, [apple.seedCount intValue]);
    }
}
-(id) init
{
    self = [super init];
    if(self)
    {
        NSMutableArray * temp = [[NSMutableArray alloc] init];
        [self setArrayOfApple:temp];
        [self setCountOfApple:@0];
      
        NSLog(@"AppleTree was created");
    }
    return self;
}

@end