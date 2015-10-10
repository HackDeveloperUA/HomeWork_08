

#import <Foundation/Foundation.h>

@interface ASStudent : NSObject <NSCopying>

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* lastName;

-(void) greeting;
-(instancetype) initWithName : (NSString*) name andLastName: (NSString*) lastName;
@end
