#import <Foundation/Foundation.h>

@class RHFUser;

@interface RHFAPIClient : NSObject

+ (void)sendSignInRequestWithUsername:(NSString *)username
                             password:(NSString *)password
                           completion:(void (^)(BOOL success, RHFUser *user))completion;

@end
