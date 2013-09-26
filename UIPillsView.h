//
//  UIPillsView.h
//
//  Created by Soheil Yasrebi on 9/25/13.
//

#import <UIKit/UIKit.h>

@interface UIPillsView : UIScrollView

- (void)generatePillsFromStringsArray:(NSArray *)strings;

@property (nonatomic) NSUInteger pillFontSize;
@property (nonatomic) NSUInteger pillTextColor;
@property (nonatomic) NSUInteger pillBackgroundColor;
@property (nonatomic) NSUInteger pillCornerRadius;
@property (nonatomic) NSUInteger pillTextAlignment;
@property (nonatomic) NSUInteger pillSpacingHorizontal;
@property (nonatomic) NSUInteger pillSpacingVertical;
@property (nonatomic) NSUInteger pillHeight;

@end
