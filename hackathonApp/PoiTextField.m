//
//  PoiTextField.m
//  hackathonApp
//
//  Created by Dogan Altinbas on 24/03/2017.
//  Copyright © 2017 Dogan Altinbas. All rights reserved.
//

#import "PoiTextField.h"

@implementation PoiTextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (CGRect)textRectForBounds:(CGRect)bounds {
    return CGRectInset(bounds, 10, 10);
}

// text position
- (CGRect)editingRectForBounds:(CGRect)bounds {
    return CGRectInset(bounds, 10, 10);
}

@end
