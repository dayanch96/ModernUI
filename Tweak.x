#import <UIKit/UIKit.h>

%hook SpringBoard
- (BOOL)homeScreenRotationStyleWantsUIKitRotation {
    return NO;
}
%end

%hook SBFluidSwitcherGestureManager
- (BOOL)grabberTongue:(id)grabberTongue shouldAllowSecondSwipeWithEdgeLocation:(CGFloat)location {
    return YES;
}
%end

%hook SBControlCenterController
- (UIRectEdge)presentingEdge {
    return UIRectEdgeTop;
}
%end

%hook SBHomeGestureSettings
- (BOOL)isHomeGestureEnabled {
    return YES;
}
%end

%hook CCSControlCenterDefaults
- (NSUInteger)_defaultPresentationGesture {
    return 1;
}
%end

%hook CCUIModularControlCenterOverlayViewController
- (void)dismissAnimated:(BOOL)animated withCompletionHandler:(id)handler {
    %orig(NO, handler);
}
%end