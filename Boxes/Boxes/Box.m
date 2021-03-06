//
//  Box.m
//  Boxes
//
//  Created by Zach Smoroden on 2016-05-03.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "Box.h"
#import "Math.h"
@implementation Box

-(instancetype)initWithWidth:(float)width andHeight:(float)height andLength:(float)length {
    
    self.width = width;
    self.height = height;
    self.length = length;
    return self;
}

-(float)volume {
    return self.width * self.height * self.length;
}

-(BOOL)isBiggerThan:(Box *)otherBox {
    return self.volume > otherBox.volume;
}

-(float)timesItFitsInside:(Box *)otherBox {
    return [self isBiggerThan:otherBox] ? 0 : floor(otherBox.volume / self.volume);
}

@end
