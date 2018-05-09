//
//  LibraryAPI.swift
//  RWBlueLibrary
//
//  Created by Naresh on 07/05/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import Foundation

//Cannot be inherited
final class LibraryAPI {
  
  //Singleton instance is lazy loading
  static let shared = LibraryAPI()
  
  //Initializer is private; since can be instantiated only once
  private init() {
    
  }
  
}
