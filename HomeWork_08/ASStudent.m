
#import "ASStudent.h"

@implementation ASStudent


-(void) greeting {
    
    NSLog(@" %@ say Hello ! ",self.name);
}



-(instancetype) initWithName : (NSString*) name andLastName: (NSString*) lastName{

    self = [super init];
    if (self) {
        self.name = name;
        self.lastName = lastName;
    }
    return self;
}


-(id)copyWithZone:(NSZone *)zone
{
    id copy = [[[self class] allocWithZone:zone] init];
    [copy setName:[self name]];
    [copy setLastName:[self lastName]];
    return copy;
}


@end
