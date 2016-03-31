//
//  CoreDataStack.h
//  Receipts++
//
//  Created by Nelson Chow on 2016-03-31.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CoreDataStack : NSObject

@property (nonatomic, strong) NSManagedObjectContext *context;

@end
