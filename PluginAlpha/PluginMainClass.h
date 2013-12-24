#import <Cocoa/Cocoa.h>
#import <Example/Example.h>

@interface PluginMainClass : AbstractPlugin 
{
	IBOutlet NSWindow *mainWindow;
}

- (IBAction)closeWindow:(id)sender;

@end
