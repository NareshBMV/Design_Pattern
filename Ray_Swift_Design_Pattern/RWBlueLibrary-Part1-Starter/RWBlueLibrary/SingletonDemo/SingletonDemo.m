//
//  SingletonDemo.m
//  RWBlueLibrary
//
//  Created by Naresh on 10/05/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

#import "SingletonDemo.h"

@implementation SingletonDemo

@synthesize someProperty;

#pragma mark Singleton Methods

+(id)sharedManager {
  static SingletonDemo *sharedManager = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedManager = [[SingletonDemo alloc] init];
  });
  return sharedManager;
}

//If not GCD
//+ (id)sharedManager {
//  static MyManager *sharedMyManager = nil;
//  @synchronized(self) {
//    if (sharedMyManager == nil)
//      sharedMyManager = [[self alloc] init];
//  }
//  return sharedMyManager;
//}

- (id)init {
  if (self = [super init]) {
    someProperty = @"StringValue";
  }
  return self;
}

- (void)dealloc {
  // Should never be called, but just here for clarity really.
}


@end
