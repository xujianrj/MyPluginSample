#import <Cocoa/Cocoa.h>

@class InternalObject;

@interface AbstractExample : NSObject {
	InternalObject *internalObject;
}

- (id)methodOne;
- (id)methodTwo;
- (id)methodThree;

- (void)setMethodOne:(id)object;
- (void)setMethodTwo:(id)object;
- (void)setMethodThree:(id)object;

@end
