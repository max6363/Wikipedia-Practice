//
//  ExploreDetailViewController.m
//  WikiPro
//
//  Created by Minhaz on 17/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "ExploreDetailViewController.h"

@interface ExploreDetailViewController ()

@end

@implementation ExploreDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segue
- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@""]) {
        
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
