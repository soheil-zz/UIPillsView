//
//  UILabel+dynamicSizeMeWidth.m
//
//  Created by Soheil Yasrebi on 9/25/13.
//

#import "UILabel+dynamicSizeMeWidth.h"

@implementation UILabel (dynamicSizeMeWidth)

-(void)resizeToStretch
{
    float width = [self expectedWidth] + 7;
    CGRect newFrame = [self frame];
    newFrame.size.width = width;
    [self setFrame:newFrame];
}

-(float)expectedWidth
{
    [self setNumberOfLines:1];
    CGSize expectedLabelSize = [[self text] sizeWithAttributes:@{NSFontAttributeName:[self font]}];
    return expectedLabelSize.width;
}

@end
