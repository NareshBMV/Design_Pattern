//
//  SingletonDemo.h
//  RWBlueLibrary
//
//  Created by Naresh on 10/05/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonDemo : NSObject {
  NSString *someProperty;
}

@property (nonatomic, retain) NSString *someProperty;

+(id)sharedManager;

@end
