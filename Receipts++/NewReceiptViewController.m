//
//  NewReceiptViewController.m
//  Receipts++
//
//  Created by Nelson Chow on 2016-03-31.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "NewReceiptViewController.h"
#import "CatagoryTableViewCell.h"

@interface NewReceiptViewController () <UITableViewDataSource, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGesture;

@end

@implementation NewReceiptViewController


- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        self.tapGesture.enabled = NO;
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Actions

- (IBAction)cancelButton:(id)sender {
    
}

- (IBAction)saveButton:(id)sender {
    
}


//  to hide keyboard
- (IBAction)viewWasTapped:(UITapGestureRecognizer *)sender {
    [self hideKeyboard];
}

-(void)hideKeyboard {
    [self.view endEditing:YES];
    self.tapGesture.enabled = NO;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self hideKeyboard];
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    self.tapGesture.enabled = YES;
}
#pragma mark - TableView Protocols

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CatagoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CatagoryCell" forIndexPath:indexPath];
    
    return cell;
}


@end
