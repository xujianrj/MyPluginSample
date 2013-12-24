#import "AppDelegate.h"
#import <Example/Example.h>
#import "AbstractExample.h"
#import "AbstractPlugin.h"

@interface AppDelegate ()

@property (nonatomic, readwrite, strong) NSArray *plugins;

- (NSArray*)loadPlugins;

@end

@implementation AppDelegate

@synthesize plugins = _plugins;

- (id)init
{
	if (![super init]) return nil;

	[self setPlugins:[self loadPlugins]];

	return self;
}

- (void)applicationDidFinishLaunching:(NSNotification*)notification
{
	ExampleOne *one = [[ExampleOne alloc] init];
	ExampleTwo *two = [[ExampleTwo alloc] init];
	
	NSLog(@"Example One called: %@", [one methodOne]);
	NSLog(@"Example Two called: %@", [one methodTwo]);
	
	NSLog(@"Example One called: %@", [two methodOne]);
	NSLog(@"Example Two called: %@", [two methodTwo]);
	
}

- (NSArray*)loadPlugins
{
	NSBundle *main = [NSBundle mainBundle];
	NSArray *allPlugins = [main pathsForResourcesOfType:@"bundle" inDirectory:@"../PlugIns"];
	
	NSMutableArray *availablePlugins = [NSMutableArray array];
	
	id plugin = nil;
	NSBundle *pluginBundle = nil;
	
	for (NSString *path in allPlugins) {
		pluginBundle = [NSBundle bundleWithPath:path];
		[pluginBundle load];

		Class principalClass = [pluginBundle principalClass];
		if (![principalClass isSubclassOfClass:[AbstractPlugin class]]) {
			continue;
		}

		plugin = [[principalClass alloc] init];
		[availablePlugins addObject:plugin];
		plugin = nil;
		pluginBundle = nil;
	}
	return availablePlugins;
}

- (IBAction)runPlugin:(id)sender;
{
    int selectedIndex=[_popPluginList indexOfSelectedItem];
	AbstractPlugin *plugin =[pluginsController arrangedObjects][selectedIndex];
	if (!plugin) return;
	[plugin fire:sender];
}

@end
