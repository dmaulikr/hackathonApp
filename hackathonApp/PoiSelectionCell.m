//
//  PoiSelectionCell.m
//  hackathonApp
//
//  Created by Dogan Altinbas on 24/03/2017.
//  Copyright © 2017 Dogan Altinbas. All rights reserved.
//

#import "PoiSelectionCell.h"

@implementation PoiSelectionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.shadowOffset = CGSizeMake(1, 0);
    self.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.layer.shadowRadius = 5;
    self.layer.shadowOpacity = .35;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
