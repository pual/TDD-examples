#import "RHFBook.h"

@implementation RHFBook

- (NSInteger)pageCount {
    return arc4random() % 500;
}

@end
