//
//  CoreDataStack.m
//  Receipts++
//
//  Created by Nelson Chow on 2016-03-31.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "CoreDataStack.h"

@interface CoreDataStack ()

@property (nonatomic, strong) NSManagedObjectModel *mom;
@property (nonatomic, strong) NSPersistentStoreCoordinator *psc;

@end

@implementation CoreDataStack

- (instancetype)init
{
    self = [super init];
    if (self) {
        <#statements#>
    }
    return self;
}

@end
