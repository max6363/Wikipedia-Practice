//
//  SettingsViewController.m
//  WikiPro
//
//  Created by Minhaz on 16/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "SettingsViewController.h"
#import "SettingsCell.h"
#import "UIColor+Utils.h"
#import "Utility.h"
#import "SignInViewController.h"

@interface SettingsViewController () <UITableViewDelegate,UITableViewDataSource>
{
    __weak IBOutlet UITableView *theTableView;
    NSMutableArray *arrSectionKeys;
    NSMutableDictionary *dictData;
}
@end

#define kSection_LoginDetails           @"kSection_LoginDetails"
#define kSection_Languages              @"kSection_Languages"
#define kSection_PrivacyAndTerms        @"kSection_PrivacyAndTerms"
#define kSection_WikiInfo               @"kSection_WikiInfo"
#define kSection_RateAndHelp            @"kSection_RateAndHelp"

#define kSectionDictKeys                @"kSectionDictKeys"
#define kSectionDictItems               @"kSectionDictItems"

//Details Keys


@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // initialize
    arrSectionKeys = [NSMutableArray array];
    dictData = [NSMutableDictionary dictionary];
    
    // prepare items
    [self prepareItems];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // reload table data
    [self reloadTableData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
- (IBAction)onCloseBtClicked:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:^{
        
    }];
}

#pragma mark - Reload Table Data

- (void)reloadTableData
{
    theTableView.delegate = self;
    theTableView.dataSource = self;
    [theTableView reloadData];
}

#define kId_LoggedIn                @"kId_LoggedIn"
#define kId_SupportWiki             @"kId_SupportWiki"

#define kId_MyLanguage              @"kId_MyLanguage"
#define kId_ShowLanguageOnSearch    @"kId_ShowLanguageOnSearch"
#define kId_Notifications           @"kId_Notifications"

#define kId_PrivacyPolicy           @"kId_PrivacyPolicy"
#define kId_TermsOfUse              @"kId_TermsOfUse"
#define kId_SendUsageReport         @"kId_SendUsageReport"

#define kId_WarnIfLeavingZero       @"kId_WarnIfLeavingZero"
#define kId_WikiFAQ                 @"kId_WikiFAQ"

#define kId_RateTheApp              @"kId_RateTheApp"
#define kId_HelpAndFeedback         @"kId_HelpAndFeedback"
#define kId_AboutApp                @"kId_AboutApp"

#pragma mark - Prepare Items
- (void)prepareItems
{
    NSArray *items = @[
                       kSection_LoginDetails,
                       kSection_Languages,
                       kSection_PrivacyAndTerms,
                       kSection_WikiInfo,
                       kSection_RateAndHelp,
                       ];
    arrSectionKeys = [NSMutableArray arrayWithArray:items];
    
    // items
    // Section : 0
    NSMutableArray *keys0 = [NSMutableArray arrayWithObjects:
                             kId_LoggedIn,
                             kId_SupportWiki, nil];
    NSMutableArray *arr0 = [NSMutableArray array];
    [self setTitle:@"Logged in as Minhaz Panara" imageIcon:@"" identifier:kId_LoggedIn array:arr0 colorHex:@"#FF8D33"];
    [self setTitle:@"Support Wikipedia" imageIcon:@"" identifier:kId_SupportWiki array:arr0 colorHex:@"#F00B0B"];
    NSMutableDictionary *d = [NSMutableDictionary dictionary];
    d[kSectionDictKeys] = keys0;
    d[kSectionDictItems] = arr0;
    dictData[kSection_LoginDetails] = d;
    
    // Section : 1
    NSMutableArray *keys1 = [NSMutableArray arrayWithObjects:
                             kId_MyLanguage,
                             kId_ShowLanguageOnSearch,
                             kId_Notifications       , nil];
    NSMutableArray *arr1 = [NSMutableArray array];
    [self setTitle:@"My Languages" imageIcon:@"" identifier:kId_MyLanguage array:arr1 colorHex:@"#4C95F3"];
    [self setTitle:@"Show Language on search" imageIcon:@"" identifier:kId_ShowLanguageOnSearch array:arr1 colorHex:@"#48C648"];
    [self setTitle:@"Notifications" imageIcon:@"" identifier:kId_Notifications array:arr1 colorHex:@"#EC0A03"];
    NSMutableDictionary *d1 = [NSMutableDictionary dictionary];
    d1[kSectionDictKeys] = keys1;
    d1[kSectionDictItems] = arr1;
    dictData[kSection_Languages] = d1;
    
    // Section : 2
    NSMutableArray *keys2 = [NSMutableArray arrayWithObjects:
                             kId_PrivacyPolicy,
                             kId_TermsOfUse,
                             kId_SendUsageReport      , nil];
    NSMutableArray *arr2 = [NSMutableArray array];
    [self setTitle:@"Privacy Policy" imageIcon:@"" identifier:kId_PrivacyPolicy array:arr2 colorHex:@"#A41C87"];
    [self setTitle:@"Terms of Use" imageIcon:@"" identifier:kId_TermsOfUse array:arr2 colorHex:@"#BCAFB9"];
    [self setTitle:@"Send usage reports" imageIcon:@"" identifier:kId_SendUsageReport array:arr2 colorHex:@"#36DE22"];
    NSMutableDictionary *d2 = [NSMutableDictionary dictionary];
    d2[kSectionDictKeys] = keys2;
    d2[kSectionDictItems] = arr2;
    dictData[kSection_PrivacyAndTerms] = d2;
    
    // Section : 3
    NSMutableArray *keys3 = [NSMutableArray arrayWithObjects:
                             kId_WarnIfLeavingZero
                             kId_WikiFAQ          , nil];
    NSMutableArray *arr3 = [NSMutableArray array];
    [self setTitle:@"Warn if leaving Zero" imageIcon:@"" identifier:kId_WarnIfLeavingZero array:arr3 colorHex:@"#6783F2"];
    [self setTitle:@"Wikipedia Zero FAQ" imageIcon:@"" identifier:kId_WikiFAQ array:arr3 colorHex:@"#88898B"];
    NSMutableDictionary *d3 = [NSMutableDictionary dictionary];
    d3[kSectionDictKeys] = keys3;
    d3[kSectionDictItems] = arr3;
    dictData[kSection_WikiInfo] = d3;
    
    // Section : 4
    NSMutableArray *keys4 = [NSMutableArray arrayWithObjects:
                             kId_RateTheApp,
                             kId_HelpAndFeedback,
                             kId_AboutApp              , nil];
    NSMutableArray *arr4 = [NSMutableArray array];
    [self setTitle:@"Rate the app" imageIcon:@"" identifier:kId_RateTheApp array:arr4 colorHex:@"#FFC21E"];
    [self setTitle:@"Help and feedback" imageIcon:@"" identifier:kId_HelpAndFeedback array:arr4 colorHex:@"#DC3232"];
    [self setTitle:@"About the app" imageIcon:@"" identifier:kId_AboutApp array:arr4 colorHex:@"#100F0F"];
    NSMutableDictionary *d4 = [NSMutableDictionary dictionary];
    d4[kSectionDictKeys] = keys4;
    d4[kSectionDictItems] = arr4;
    dictData[kSection_RateAndHelp] = d4;
}

#define kRowTitle       @"kRowTitle"
#define kRowIcon        @"kRowIcon"
#define kRowIdentifier  @"kRowIdentifier"
#define kRowColorHex       @"kColorHex"

- (void)setTitle:(NSString *)title
       imageIcon:(NSString *)imageIcon
      identifier:(NSString *)identifier
           array:(NSMutableArray *)array
        colorHex:(NSString *)colorHex
{
    NSMutableDictionary *d = [NSMutableDictionary dictionary];
    d[kRowTitle] = title;
    d[kRowIcon] = imageIcon;
    d[kRowIdentifier] = identifier;
    d[kRowColorHex] = colorHex;
    [array addObject:d];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return arrSectionKeys.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *key = arrSectionKeys[section];
    NSMutableDictionary *d = dictData[key];
    NSMutableArray *items = d[kSectionDictKeys];
    return items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SettingsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SettingsCell"];
    
    NSString *key = arrSectionKeys[indexPath.section];
    NSMutableDictionary *d = dictData[key];
    NSMutableArray *items = d[kSectionDictItems];
    NSMutableDictionary *info = items[indexPath.row];
    
    NSString *title = info[kRowTitle];
    cell.lblTitle.text = title;
    cell.switchT.hidden = NO;
    cell.lblInfo.hidden = YES;
    cell.shareIcon.hidden = YES;
    cell.accessoryType = UITableViewCellAccessoryNone;
    
    NSString *identifier = info[kRowIdentifier];
    if ([identifier isEqualToString:kId_MyLanguage]) {
        cell.lblInfo.hidden = NO;
        cell.lblInfo.text = @"EN";
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    if ([identifier isEqualToString:kId_LoggedIn]
        || [identifier isEqualToString:kId_MyLanguage]
        || [identifier isEqualToString:kId_Notifications]
        || [identifier isEqualToString:kId_HelpAndFeedback]
        || [identifier isEqualToString:kId_AboutApp]
        ) {
        cell.switchT.hidden = YES;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    if ([identifier isEqualToString:kId_SupportWiki]
        || [identifier isEqualToString:kId_PrivacyPolicy]
        || [identifier isEqualToString:kId_TermsOfUse]
        || [identifier isEqualToString:kId_WikiFAQ]
        || [identifier isEqualToString:kId_RateTheApp]
        ) {
        cell.shareIcon.hidden = NO;
        cell.switchT.hidden = YES;
    }
    
    if ([identifier isEqualToString:kId_LoggedIn]) {
        BOOL isLoggedIn = [[Utility sharedInstance] isLoggedIn];
        if (isLoggedIn) {
            cell.lblTitle.text = title;
        } else {
            cell.lblTitle.text = @"Login";
        }
    }
    
    NSString *colorHex = info[kRowColorHex];
    cell.imgIcon.backgroundColor = [UIColor colorWithHexString:colorHex];
    cell.imgIcon.layer.cornerRadius = 4;
    cell.imgIcon.layer.masksToBounds = YES;
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *key = arrSectionKeys[indexPath.section];
    NSMutableDictionary *d = dictData[key];
    NSMutableArray *items = d[kSectionDictItems];
    NSMutableDictionary *info = items[indexPath.row];
    NSString *identifier = info[kRowIdentifier];
    
    if ([identifier isEqualToString:kId_LoggedIn]) {
        BOOL isLoggedIn = [[Utility sharedInstance] isLoggedIn];
        if (isLoggedIn) {
            
            [self showLogoutOptions];
            
        } else {
        
            SignInViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"SignInViewController"];
            [self presentViewController:vc animated:YES completion:nil];
        }
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark - Show options for SignIn
- (void)showLogoutOptions
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"Are you sure you want to logout?" preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"Log out" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
        [[Utility sharedInstance] setLogin:NO];
        [theTableView reloadData];
        
    }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
