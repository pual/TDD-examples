#import <Foundation/Foundation.h>

@interface RHFUser : NSObject

+ (instancetype)currentUser;
+ (void)signInWithUsername:(NSString *)username
                  password:(NSString *)password
                completion:(void(^)(BOOL success))completion;

@end
