#import <AppKit/AppKit.h>

// darling shell
// clang -lobjc -framework Foundation -framework AppKit -o HelloAppKit.app/HelloAppKit HelloAppKit.m
// ./HelloAppKit.app/HelloAppKit

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)notification {

    NSRect windowRect = NSMakeRect(0, 0, 200, 100);
    window = [[NSWindow alloc] initWithContentRect:windowRect
                                         styleMask:(NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable) 
                                           backing:NSBackingStoreBuffered
                                             defer:NO];
    [window center];

    NSTextField *label = [[NSTextField alloc] initWithFrame:NSMakeRect(50, 20, 100, 30)];
    [label setStringValue:@"Hello AppKit"];
    [label setEditable:NO];
    [label setBordered:NO];
    [label setDrawsBackground:YES];
    [label setBackgroundColor:[NSColor lightGrayColor]];
    [label setFont:[NSFont systemFontOfSize:20]];
    [label setTextColor:[NSColor blueColor]];
    [label setAlignment:NSTextAlignmentCenter];

    [window.contentView addSubview:label];

    [self addMenu];

    [NSApp activateIgnoringOtherApps:YES];
    [window makeKeyAndOrderFront:nil];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}

- (void)addMenu {

/*
  Menu structure:

  (menu) mainMenu
         (menu item) mainMenuItem
                     (menu) appMenu
                            (menu item) appMenuItemQuit
*/

    NSString *appName = [[NSProcessInfo processInfo] processName];
    NSMenu *mainMenu = [[NSMenu alloc] initWithTitle:@"MainMenu"];
    NSMenuItem *mainMenuItem = [[NSMenuItem alloc] initWithTitle:appName action:nil keyEquivalent:@""];
    NSMenu *appMenu = [[NSMenu alloc] initWithTitle:@"Application"];
    NSMenuItem *appMenuItemQuit = [[NSMenuItem alloc] initWithTitle:@"Quit" action:@selector(terminate:) keyEquivalent:@"q"];

    [NSApp setMainMenu:mainMenu];
    [mainMenu addItem:mainMenuItem];
    [mainMenuItem setSubmenu:appMenu];
    [appMenu addItem:appMenuItemQuit];
}

@end


int main(int argc, const char *argv[]) {
    @autoreleasepool {
      NSLog(@"Hello AppKit");
      NSApplication *app = [NSApplication sharedApplication];
      AppDelegate *appDelegate = [[AppDelegate alloc] init];
      [app setDelegate:appDelegate];
      [app run];
    }
    return 0;
}

