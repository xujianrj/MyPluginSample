#import "InternalObject.h"

@implementation InternalObject

- (id)description
{
	return [NSString stringWithFormat:@"%@:%s", [self class], _cmd];
}

@end
