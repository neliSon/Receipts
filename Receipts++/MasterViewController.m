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


#pragma mark - segues

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"AddReceipt"]) {
        
        Receipt 
        
        NewReceiptViewController *NRVC = [segue destinationViewController];
        NRVC setDetailItem:<#(id)#>
    }
}

#pragma mark - buttons

- (IBAction)addReceiptButton:(id)sender {
    [self performSegueWithIdentifier:@"AddReceipt" sender:self];
}

@end
