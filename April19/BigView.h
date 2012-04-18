//
//  BigView.h
//  April19
//
//  Created by John Eiche on 4/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BigView: UIView {
	//holds the two subviews we transtion between
	NSArray *views;
    
	//index in views of the currently displayed little view: 0 or 1
	NSUInteger index;
}

@end
