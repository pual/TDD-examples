#import "RHFRootViewControllerTests.h"
#import "RHFRootViewController.h"
#import <Expecta/Expecta.h>

@interface RHFRootViewControllerTests ()
@property (nonatomic, strong) RHFRootViewController *viewController;
@end

@implementation RHFRootViewControllerTests

- (void)setUp {
    [super setUp];
    
    self.viewController = [RHFRootViewController new];
    // Trigger view initialization once
    [self.viewController viewDidLoad];
}

- (void)testButtonShouldNotBeNil {
    // button should not be nil
}

- (void)testLabelShouldNotBeNil {
    // label should not be nil
}

- (void)testButtonShouldBeASubviewOfTheMainView {
    // button should be a subview of the view controller's view
}

- (void)testLabelShouldBeASubviewOfTheMainView {
    // label should be a subview of the view controller's view
}

- (void)testButtonLabelShouldBePushMe {
    // button title should be 'Push me'
}

- (void)testTappingTheButtonShouldChangeTheLabelTextToHelloTDD {
    // tapping the button should change the label text to 'Hello TDD'
}

@end
