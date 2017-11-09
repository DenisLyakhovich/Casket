//
//  PutInTheCasketTableViewController.m
//  CasketLite
//
//  Created by Denis Lyakhovich on 03.09.17.
//  Copyright © 2017 Denis Lyakhovich. All rights reserved.
//

#import "PutInTheCasketTableViewController.h"

@interface PutInTheCasketTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *dateField;
@property (weak, nonatomic) IBOutlet UITextView *descriptionView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *firstRunSegmentedControl;

- (void)configureView;

@end

@implementation PutInTheCasketTableViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.dateField.text = [self.detailItem valueForKey:@"title"];
        self.descriptionView.text = [self.detailItem valueForKey:@"descript"];
        self.firstRunSegmentedControl.selectedSegmentIndex = [[self.detailItem valueForKey:@"firstRun"] boolValue];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Editing

-(IBAction)dateFieldDidChanged:(id)sender {
        [self.detailItem setValue:self.dateField.text forKey:@"title"];
    }

- (IBAction)segmentedControlDidChanged:(id)sender
{
    [self.detailItem setValue:[NSNumber numberWithBool:self.firstRunSegmentedControl.selectedSegmentIndex] forKey:@"firstRun"];
}

- (void)textViewDidChange:(UITextView *)textView
{
    [self.detailItem setValue:textView.text forKey:@"descript"];
}

@end
