#import "RHFUser.h"
#import "RHFAPIClient.h"

static RHFUser *_loggedInUser = nil;

@implementation RHFUser

+ (instancetype)currentUser {
    return _loggedInUser;
}

+ (void)signInWithUsername:(NSString *)username
                  password:(NSString *)password
                completion:(void(^)(BOOL success))completion {
    [RHFAPIClient sendSignInRequestWithUsername:username
                                       password:password
                                     completion:^(BOOL success, RHFUser *user) {
                                         _loggedInUser = user;
                                         completion(success);
                                     }];
}

@end
