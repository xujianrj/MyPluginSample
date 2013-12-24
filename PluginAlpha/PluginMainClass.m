#import "PluginMainClass.h"

@implementation PluginMainClass

- (id)init 
{
	if (![super init]) return nil;
	
	[NSBundle loadNibNamed:@"PluginMainWindow" owner:self];
	
	return self;
}

- (NSString*)name;
{
	return @"Example Plugin Alpha";
}

- (IBAction)fire:(id)sender;
{
	[mainWindow center];
	[mainWindow makeKeyAndOrderFront:sender];
}

- (IBAction)closeWindow:(id)sender;
{
	[mainWindow orderOut:sender];
}

@end
