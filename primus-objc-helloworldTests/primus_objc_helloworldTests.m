//
//  primus_objc_helloworldTests.m
//  primus-objc-helloworldTests
//
//  Created by Pi R Square on 5/15/2558 BE.
//  Copyright (c) 2558 Debokeh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface primus_objc_helloworldTests : XCTestCase

@end

@implementation primus_objc_helloworldTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
