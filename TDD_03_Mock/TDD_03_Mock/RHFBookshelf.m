#import "RHFBookshelf.h"
#import "RHFBook.h"

@implementation RHFBookshelf

- (NSInteger)totalPageCount {
    __block NSInteger pageCount = 0;
    [self.books enumerateObjectsUsingBlock:^(RHFBook *book, NSUInteger idx, BOOL *stop) {
        pageCount += book.pageCount;
    }];
    return pageCount;
}

@end
