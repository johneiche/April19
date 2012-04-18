//
//  LittleView1.m
//  April19
//
//  Created by John Eiche on 4/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LittleView1.h"

@implementation LittleView1

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor blueColor];
        
        //Trailing blank to avoid cutting off last letter
        //because italic leans to the right.
        NSString *text = @"GONE  WITH  THE  WIND ";
        NSString *text2 = @"David O. Selznick"; 
        NSString *text3 = @"Presents";
        
        CGRect b = self.bounds;
        UIFont *font = [UIFont italicSystemFontOfSize: b.size.height];
        CGSize size = [text sizeWithFont: font];
        
        UIFont *font2 = [UIFont systemFontOfSize: 32];
        CGSize size2 = [text2 sizeWithFont: font2];
        CGSize size3 = [text3 sizeWithFont: font2];
        
        
        
        CGRect f = CGRectMake(
                              b.size.width,
                              0,
                              size.width,
                              size.height
                              );
        
        
        CGRect f2 = CGRectMake(b.size.width / 2 - size2.width / 2, b.size.height, size2.width, size2.height);
        
        NSLog(@"f2 x = %g, y = %g, width = %g, height = %g", b.size.width, b.size.height, size2.width, size2.height);
        
        
        CGRect f3 = CGRectMake(  b.size.width / 2 - size3.width / 2, 
                               b.size.height / 2 - size3.height / 2, 
                               size3.width, 
                               size3.height);
        
        NSLog(@"f3 x = %g, y = %g, width = %g, height = %g", b.size.width, b.size.height, size2.width, size2.height);
        
        
        labelPresents = [[UILabel alloc] initWithFrame: f2];
        labelPresents.font = font2;
        labelPresents.backgroundColor = [UIColor clearColor];
        labelPresents.textColor = [UIColor whiteColor];
        labelPresents.text = text2;
        [self addSubview: labelPresents];
        
        labelPresents2 = [[UILabel alloc] initWithFrame: f3];
        labelPresents2.font = font2;
        labelPresents2.backgroundColor = [UIColor clearColor];
        labelPresents2.textColor = [UIColor whiteColor];
        labelPresents2.text = text3;
        labelPresents2.alpha = 0.0;
        [self addSubview: labelPresents2];
        
        
        label = [[UILabel alloc] initWithFrame: f];
        label.font = font;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor whiteColor];
        label.text = text;
        [self addSubview: label];
        
        
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
    // Drawing code
	//Print the name of the class.  See the main function in main.m.
    NSLog(@"labelPresents.center = %g, %g", labelPresents.bounds.size.width / 2, self.bounds.size.height / 2); 
    [UIView animateWithDuration: 22
     
     
                          delay: 2.00
                        options: 
     UIViewAnimationOptionBeginFromCurrentState
     | UIViewAnimationOptionCurveLinear
                     animations: ^{
                         //Move the label far enough to the left
                         //so that it's out of the View.
                         labelPresents.center = CGPointMake(
                                                            labelPresents.bounds.size.width / 2,
                                                            self.bounds.size.height / 2
                                                            
                                                            );
                         labelPresents.alpha = 0.0;
                     }
                     completion: NULL
     ];
    
    
    [UIView animateWithDuration: 5
                          delay: 17.00
                        options: 
     UIViewAnimationOptionBeginFromCurrentState
     | UIViewAnimationOptionCurveLinear
                     animations: ^{
                         //Move the label far enough to the left
                         //so that it's out of the View.
                         //     labelPresents2.center = CGPointMake(
                         //     labelPresents2.bounds.size.width / 2,
                         //     self.bounds.size.height / 2
                         
                         //);
                         labelPresents2.alpha = 1.0;
                     }
                     completion: NULL
     ];
    
    [UIView animateWithDuration: 25
                          delay: 23.75
                        options: UIViewAnimationOptionCurveLinear
                     animations: ^{
                         //Move the label far enough to the left
                         //so that it's out of the View.
                         label.center = CGPointMake(
                                                    -label.bounds.size.width / 2,
                                                    self.bounds.size.height / 2
                                                    );
                     }
                     completion: NULL
     ];
    
    /*
     Class class = [self class];
     NSString *string = NSStringFromClass(class);
     UIFont *font = [UIFont systemFontOfSize: 32];
     [string drawAtPoint: CGPointZero withFont: font];
     */
}

@end
