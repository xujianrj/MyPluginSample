#import "AbstractPlugin.h"

#define kErrFormat @"%s not implemented in subclass %@"
#define kExceptName @"CIMGF"

@implementation AbstractPlugin

- (NSString*)name;
{
	NSString *reason = [NSString stringWithFormat:kErrFormat, _cmd, [self class]];
	@throw [NSException exceptionWithName:kExceptName 
																 reason:reason 
															 userInfo:nil];
}

- (IBAction)fire:(id)sender;
{
	NSString *reason = [NSString stringWithFormat:kErrFormat, _cmd, [self class]];
	@throw [NSException exceptionWithName:kExceptName 
																 reason:reason 
															 userInfo:nil];
}

@end
