UIPillsView
===========

Pills view for iOS, given an array of strings it generates a scrollable view with a cloud of pill-shaped tags.

Example
=======

    - (void)viewDidLoad
    {
        CGRect frame = self.view.frame;

        frame.origin.y = 100;
        frame.size.height = 100;
        UIPillsView *pillsView = [[UIPillsView alloc] initWithFrame:frame];
        NSArray *strings = [NSArray arrayWithObjects:@"Pills", @"view", @"for", @"iOS", @"given", @"an", @"array of strings", @"it", @"generates", @"a view with", @"a cloud", @"of", @"pill-shaped", @"tags", @"Pills", @"view", @"for", @"iOS", nil];
        [pillsView generatePillsFromStringsArray:strings];
        
        [self.view addSubview:pillsView];
    }


![alt tag](https://raw.github.com/syasrebi/UIPillsView/master/screenshot.png)

Integration Instruction
=======================
Copy `UIPillsView.h`, `UIPillsView.m`, `UILabel+dynamicSizeMeWidth.h` and `UILabel+dynamicSizeMeWidth.m` files to your project and include `UIPillsView.h` in the class that you will be creating a `UIPillsView` view from.