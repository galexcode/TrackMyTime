//
//  EKBar.m
//  TrackMyTime
//
//  Created by Evgeny Karkan on 21.12.13.
//  Copyright (c) 2013 EvgenyKarkan. All rights reserved.
//

#import "EKBar.h"


@implementation EKBar;

- (id)initWithFrame:(CGRect)frame
{
	if ((self = [super initWithFrame:frame])) {
		self.backgroundColor = [UIColor colorWithRed:0.811765 green:0.807843 blue:0.823529 alpha:1];
        
		self.bar = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 0.0f, self.frame.size.height)];
		self.bar.userInteractionEnabled = NO;
		[self addSubview:self.bar];
	}
	return self;
}

#pragma mark - Public API

- (void)drawBarWithProgress:(CGFloat)progress animated:(BOOL)animated
{
	[UIView animateWithDuration:0.3 animations: ^{
	    self.bar.frame = CGRectMake(0.0f, 0.0f, progress * self.frame.size.width, self.frame.size.height);
	}];
}

@end
