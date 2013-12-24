#import "AbstractExample.h"
#import "InternalObject.h"

@implementation AbstractExample

- (id)init
{
	if (![super init]) return nil;
	
	internalObject = [[InternalObject alloc] init];
	
	return self;
}

- (id)methodOne;
{
	return [NSString stringWithFormat:@"%@:%s", [self class], _cmd];
}

- (id)methodTwo;
{
	return [NSString stringWithFormat:@"%@:%s\n%@", [self class], _cmd, internalObject];
}

- (id)methodThree;
{
	return [NSString stringWithFormat:@"%@:%s", [self class], _cmd];
}

- (void)setMethodOne:(id)object;
{
}

- (void)setMethodTwo:(id)object;
{
}

- (void)setMethodThree:(id)object;
{
}

@end
