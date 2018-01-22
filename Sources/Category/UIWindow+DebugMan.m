
#import "UIWindow+debugman.h"

@implementation UIWindow (debugman)

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.type == UIEventTypeMotion && event.subtype == UIEventSubtypeMotionShake) {
        [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:@"ShakeNotification_debugman" object:nil]];
    }
}

@end
