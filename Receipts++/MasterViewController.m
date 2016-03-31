//
//  ViewController.m
//  Receipts++
//
//  Created by Nelson Chow on 2016-03-31.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "MasterViewController.h"
#import "NewReceiptViewController.h"
#import "Receipt.h"
#import "ReceiptTableViewCell.h"
@import CoreData;

@interface MasterViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//#pragma mark - segues



#pragma mark - buttons

- (IBAction)addReceiptButton:(id)sender {
    [self performSegueWithIdentifier:@"AddReceipt" sender:self];
}

#pragma mark - TableView Protocols

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ReceiptTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.receiptTitleLabel.text = @"blabla";
    
    return cell;
}



@end
