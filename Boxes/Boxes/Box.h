//
//  Box.h
//  Boxes
//
//  Created by Zach Smoroden on 2016-05-03.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;

-(Box *)initWithWidth:(float)width andHeight:(float)height andLength:(float)length;
-(float)volume;
-(NSString *)timesItFitsInside:(Box *)otherBox;

@end
