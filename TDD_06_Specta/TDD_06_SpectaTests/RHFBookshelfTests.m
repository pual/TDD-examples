#import "RHFBookshelfTests.h"
#import "RHFBookshelf.h"
#import "RHFBook.h"
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>

@interface RHFBookshelfTests ()
@property (nonatomic, strong) RHFBookshelf *bookshelf;
@end

@implementation RHFBookshelfTests

- (void)setUp {
    [super setUp];
    
    self.bookshelf = [RHFBookshelf new];
}

- (void)testTotalPageCountShouldReturnZeroWhenBooksIsEmpty {
    self.bookshelf.books = @[];
    
    STAssertEquals(self.bookshelf.totalPageCount, 0, @"Total page count has wrong sum");
}

- (void)testTotalPageCountShouldReturnTheSumOfAllPagesForMultipleBooks {
    // Initialize mock
    id firstBookMock = [OCMockObject mockForClass:[RHFBook class]];
    id secondBookMock = [OCMockObject mockForClass:[RHFBook class]];
    // Set expectation
    [[[firstBookMock stub] andReturnValue:@(17)] pageCount];
    [[[secondBookMock stub] andReturnValue:@(100)] pageCount];
    
    self.bookshelf.books = @[firstBookMock, secondBookMock];
    
    STAssertEquals(self.bookshelf.totalPageCount, 117, @"Total page count has wrong sum");
}

- (void)testTotalPageCountShouldReturnTheCorrectValueForASingleBook {
    // Initialize mock
    id firstBookMock = [OCMockObject mockForClass:[RHFBook class]];
    // Set expectation
    [[[firstBookMock stub] andReturnValue:@(17)] pageCount];
    
    self.bookshelf.books = @[firstBookMock];
    
    STAssertEquals(self.bookshelf.totalPageCount, 17, @"Total page count has wrong sum");
}

@end
