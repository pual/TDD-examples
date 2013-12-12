#import "RHFRootViewControllerTests.h"
#import "RHFRootViewController.h"
#import <Expecta/Expecta.h>

#define OHPathForFileInBundle(fileName,bundleOrNil) ({ \
[(bundleOrNil?:[NSBundle bundleForClass:self.class]) pathForResource:[fileName stringByDeletingPathExtension] ofType:[fileName pathExtension]]; \
})

@interface RHFRootViewControllerTests ()
@property (nonatomic, strong) RHFRootViewController *viewController;
@end

@implementation RHFRootViewControllerTests

- (void)setUp {
    [super setUp];
    
    
//    self.viewController = (RHFRootViewController*)[[[[UIApplication sharedApplication] delegate] window] rootViewController];
    self.viewController = [[RHFRootViewController alloc] init];
    
    // Trigger view initialization once
    [self.viewController loadView];
    [self.viewController viewDidLoad];
}

- (void)testButtonShouldNotBeNil {
    // button should not be nil
    EXP_expect(self.viewController.button).toNot.beNil();
}

- (void)testLabelShouldNotBeNil {
    // label should not be nil
    EXP_expect(self.viewController.label).toNot.beNil();
}

- (void)testButtonShouldBeASubviewOfTheMainView {
    // button should be a subview of the view controller's view
    EXP_expect(self.viewController.button.superview).to.equal(self.viewController.view);
}

- (void)testLabelShouldBeASubviewOfTheMainView {
    // label should be a subview of the view controller's view
    EXP_expect(self.viewController.label.superview).to.equal(self.viewController.view);
}

- (void)testButtonLabelShouldBePushMe {
    // button title should be 'Push me'
    NSString *title = [self.viewController.button titleForState:UIControlStateNormal];
    EXP_expect(title).to.equal(@"Push Me");
}

- (void)testTappingTheButtonShouldChangeTheLabelTextToHelloTDD {
    // tapping the button should change the label text to 'Hello TDD'
    [self.viewController.button sendActionsForControlEvents:UIControlEventTouchUpInside];
    EXP_expect(self.viewController.label.text).to.equal(@"Hello TDD");
}

@end
