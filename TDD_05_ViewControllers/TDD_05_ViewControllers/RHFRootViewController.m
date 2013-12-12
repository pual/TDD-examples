#import "RHFRootViewController.h"

@interface RHFRootViewController ()

@end

@implementation RHFRootViewController

-(id)init{
    if (self = [super init]) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.button setTitle:@"Push Me" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
}

-(IBAction)buttonTapped:(id)sender {
    self.label.text = @"Hello TDD";
}

@end
