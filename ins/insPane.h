//
//  insPane.h
//  ins
//
//  Created by Keys on 12/24/13.
//
//

#import <InstallerPlugins/InstallerPlugins.h>

#import <Example/Example.h>
@interface insPane : AbstractPlugin
{
    __weak NSClipView *_myview;
    IBOutlet NSWindow *mainWindow;
}

- (IBAction)closeWindow:(id)sender;

@property (weak) IBOutlet NSClipView *myview;
@end
