//
//  TSJsonModelTests.m
//  TravisSample
//
//  Created by Kyosuke Takayama on 2014/09/03.
//
//

#import <XCTest/XCTest.h>
#import "TSJsonModel.h"

@interface TSJsonModelTests : XCTestCase

@end

@implementation TSJsonModelTests

- (void) testCreateObject {
   TSJsonModel *model = [[TSJsonModel alloc] initWithDictionary:@{
                                                          @"id": @"1001",
                                                        @"name": @"なまえ",
                                                     @"comment": @"こめんと",
   }];

   XCTAssertEqualObjects(model.identifier, @"1001");
   XCTAssertEqualObjects(model.name,       @"なまえ");
   XCTAssertEqualObjects(model.comment,    @"こめんと");
}

- (void) testNoThrow {
   XCTAssertNoThrow([[TSJsonModel alloc] initWithDictionary:nil]);
}

@end
