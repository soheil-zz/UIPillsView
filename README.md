UIPillsView
===========

Pills view for iOS, given an array of strings it generates a view with a cloud of pill-shaped tags.

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