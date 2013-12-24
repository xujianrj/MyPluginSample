#import "AppDelegate.h"
#import <Example/Example.h>

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification*)notification
{
	ExampleOne *one = [[ExampleOne alloc] init];
	ExampleTwo *two = [[ExampleTwo alloc] init];
	
	NSLog(@"Example One called: %@", [one methodOne]);
	NSLog(@"Example Two called: %@", [one methodTwo]);
	
	NSLog(@"Example One called: %@", [two methodOne]);
	NSLog(@"Example Two called: %@", [two methodTwo]);
}

@end
