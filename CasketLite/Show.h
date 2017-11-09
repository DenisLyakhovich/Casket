//
//  Show.h
//  CasketLite
//
//  Created by Denis Lyakhovich on 03.09.17.
//  Copyright © 2017 Denis Lyakhovich. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface Show : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * descript;
@property (nonatomic, retain) NSNumber * firstRun;

@end
