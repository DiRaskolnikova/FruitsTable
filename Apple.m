#import "Apple.h"

@implementation Apple

@synthesize seedCount = _seedCount;
@synthesize sort = _sort;
@synthesize isHang = _isHang;

-(BOOL) drop {
    
    if ([self isHang] == true) {
        [self setIsHang:false];
        NSLog(@"fruit drop from tree");
    }
    return [self isHang];
}

-(id) init: (NSNumber *) seedC:(NSString *) sortName
{
    self = [super init];
    if(self)
    {
        [self setSort: sortName];
        [self setSeedCount: seedC];
        [self setIsHang: true];
        NSLog(@"fruit was created");
    }
    return self;
}

-(NSString *) description{
    NSString * descString = [NSString stringWithFormat: @"%@", @"Apple"];
    return descString;
}

@end