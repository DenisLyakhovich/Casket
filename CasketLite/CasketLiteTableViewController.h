//
//  CasketLiteTableViewController.h
//  CasketLite
//
//  Created by Denis Lyakhovich on 03.09.17.
//  Copyright © 2017 Denis Lyakhovich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface CasketLiteTableViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
