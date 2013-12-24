#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject 
{
	NSArray *_plugins;
	
    __weak NSPopUpButton *_popPluginList;
	IBOutlet NSArrayController *pluginsController;
}

@property (nonatomic, readonly, strong) NSArray *plugins;

- (IBAction)runPlugin:(id)sender;

@property (weak) IBOutlet NSPopUpButton *popPluginList;
@end
