//
//  MyTableViewCell.m
//  ResturantApp
//
//  Created by Amerald on 18/06/2016.
//  Copyright © 2016 attribe. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell
@synthesize nameLabel = _nameLabel;
@synthesize descriptionLabel = _descriptionLabel;
@synthesize priceLabel = _priceLabel;
@synthesize thumbnailImageView = _thumbnailImageView;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
