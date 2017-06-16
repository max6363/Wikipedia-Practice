//
//  ExploreViewController.m
//  WikiPro
//
//  Created by Minhaz on 16/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "ExploreViewController.h"

@interface ExploreViewController ()

@end

@implementation ExploreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
- (IBAction)onSettingsBtClicked:(id)sender
{
    UINavigationController *navSettings = [self.storyboard instantiateViewControllerWithIdentifier:@"Settings_NVC"];
    [self presentViewController:navSettings animated:YES completion:^{
        
    }];
}


@end
