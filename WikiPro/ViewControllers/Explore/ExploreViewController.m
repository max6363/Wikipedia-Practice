//
//  ExploreViewController.m
//  WikiPro
//
//  Created by Minhaz on 16/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "ExploreViewController.h"

@interface ExploreViewController () <UITableViewDelegate,UITableViewDataSource>
{
    __weak IBOutlet UITableView *theTableView;
    NSMutableArray *arrIdentifiers;
}
@end

@implementation ExploreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    arrIdentifiers = [NSMutableArray arrayWithObjects:
                      @"image_cell",
                      @"title_cell",
                      @"subtitle_cell",
                      @"description_title",
                      @"description_text",
                      nil];
    
    [self reloadTableData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Reload Table Data

- (void)reloadTableData
{
    theTableView.delegate = self;
    theTableView.dataSource = self;
    [theTableView reloadData];
}

#pragma mark - Actions
- (IBAction)onSettingsBtClicked:(id)sender
{
    UINavigationController *navSettings = [self.storyboard instantiateViewControllerWithIdentifier:@"Settings_NVC"];
    [self presentViewController:navSettings animated:YES completion:^{
        
    }];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identifier = arrIdentifiers[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    return cell.contentView.frame.size.height;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrIdentifiers.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identifier = arrIdentifiers[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    return cell;
}

@end
