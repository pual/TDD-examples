#import <Foundation/Foundation.h>

@interface RHFBookshelf : NSObject

@property (nonatomic, strong) NSArray *books;

// Returns the sum of the pages of all books
@property (nonatomic, readonly) NSInteger totalPageCount;

@end
