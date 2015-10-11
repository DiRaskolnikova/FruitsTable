
#import <Foundation/Foundation.h>
#import "Apple.h"
#import "Tree.h"

@interface AppleTree : NSObject <Tree>

@property NSNumber *countOfApple;
@property NSMutableArray *arrayOfApple;

-(bool) dropApple: (Apple *) apple;
-(void) addApple: (Apple *) apple;
-(void) grow;
-(void) shake;
-(void) logInformation;
-(id) init;

@end