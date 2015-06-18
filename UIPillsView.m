//
//  UIPillsView.m
//
//  Created by Soheil Yasrebi on 9/25/13.
//

#import "UIPillsView.h"
#import "UILabel+dynamicSizeMeWidth.h"

@implementation UIPillsView

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.pillFontSize = 9;
        self.pillTextColor = 0x668B8B;
        self.pillBackgroundColor = 0xE0EEEE;
        self.pillCornerRadius = 8;
        self.pillTextAlignment = NSTextAlignmentCenter;
        self.pillSpacingHorizontal = 3;
        self.pillSpacingVertical = 3;
        self.pillHeight = 15;
    }
    return self;
}

- (void)generatePillsFromStringsArray:(NSArray *)strings
{
    NSEnumerator *enumeratorskill = [strings objectEnumerator];
    NSString* string;
    int w, h;
    w = h = 0;
    
    while (string = (NSString *)[enumeratorskill nextObject]) {
        UILabel *pill = [[UILabel alloc] initWithFrame:CGRectMake(w, h, 0, self.pillHeight)];
        
        pill.autoresizingMask = UIViewAutoresizingFlexibleRightMargin;
        pill.font = [UIFont boldSystemFontOfSize:self.pillFontSize];
        pill.textColor = UIColorFromRGB(self.pillTextColor);
        pill.backgroundColor = UIColorFromRGB(self.pillBackgroundColor);
        pill.layer.cornerRadius = self.pillCornerRadius;
        pill.textAlignment = self.pillTextAlignment;
        pill.text = string;
        [pill resizeToStretch];
        w += pill.frame.size.width + self.pillSpacingHorizontal;
        if (w > self.frame.size.width) {
            w = 0;
            h += self.pillHeight + self.pillSpacingVertical;
            CGRect frame = pill.frame;
            frame.origin.x = w;
            frame.origin.y = h;
            pill.frame = frame;
            w += pill.frame.size.width + self.pillSpacingHorizontal;
        }
        [self addSubview:pill];
    }
    CGSize size = self.frame.size;
    size.height = h + self.pillHeight;
    self.contentSize = size;
}

@end
