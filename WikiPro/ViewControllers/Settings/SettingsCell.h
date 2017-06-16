//
//  SettingsCell.h
//  WikiPro
//
//  Created by Minhaz on 16/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsCell : UITableViewCell

@property (nonatomic) __weak IBOutlet UILabel *lblTitle;
@property (nonatomic) __weak IBOutlet UILabel *lblInfo;
@property (nonatomic) __weak IBOutlet UIImageView *imgIcon;
@property (nonatomic) __weak IBOutlet UISwitch *switchT;
@property (nonatomic) __weak IBOutlet UIImageView *shareIcon;

@end
