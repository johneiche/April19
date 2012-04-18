//
//  LittleView0.m
//  April19
//
//  Created by John Eiche on 4/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LittleView0.h"

@implementation LittleView0

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor redColor];
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
	// Drawing code
    //Print the name of the class.  See the main function in main.m.
    Class class = [self class];
    NSString *string = NSStringFromClass(class);
	UIFont *font = [UIFont systemFontOfSize: 32];
	[string drawAtPoint: CGPointZero withFont: font];
}

@end
