#import "RHFUserTests.h"
#import "RHFUser.h"
#import "RHFAPIClient.h"
#import <OCMock/OCMock.h>
#import <Expecta/Expecta.h>

@implementation RHFUserTests

- (void)testSignInShouldPersistTheUserOnSuccess {
    RHFUser *userFromAPIClientCompletionBlock = [RHFUser new];
    
    // Your stub goes here
    
    __block BOOL signInFinished = NO;
    
    [RHFUser signInWithUsername:@"john.doe"
                       password:@"topsecret"
                     completion:^(BOOL success) {
                         signInFinished = YES;
                     }];
    
    EXP_expect(signInFinished).will.beTruthy();
    EXP_expect([RHFUser currentUser]).to.equal(userFromAPIClientCompletionBlock);
}

@end
