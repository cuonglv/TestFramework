//
//  TestFrameworkTests.m
//  TestFrameworkTests
//
//  Created by Cuong Le on 11/8/16.
//  Copyright © 2016 Cuong Le. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TestFrameworkTests : XCTestCase

@end

@implementation TestFrameworkTests

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
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end