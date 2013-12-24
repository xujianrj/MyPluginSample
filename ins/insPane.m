//
//  insPane.m
//  ins
//
//  Created by Keys on 12/24/13.
//
//

#import "insPane.h"

@implementation insPane

- (id)init
{
	if (![super init]) return nil;
	
	[NSBundle loadNibNamed:@"ins" owner:self];
	
	return self;
}
- (IBAction)fire:(id)sender;
{
	[mainWindow center];
	[mainWindow makeKeyAndOrderFront:sender];
//   NSView *mainView= [mainWindow contentView];
//    [mainView addSubview:self.myview];
    
}
- (NSString *)title
{
	return [[NSBundle bundleForClass:[self class]] localizedStringForKey:@"PaneTitle" value:nil table:nil];
}
- (NSString*)name;
{
	return @"my Plugin Alpha";
}

- (IBAction)closeWindow:(id)sender
{
    [mainWindow orderOut:sender];
}

@end
