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

-(NSString *)timesItFitsInside:(Box *)otherBox {
    NSLog(@"Self volume: %f, other voluem: %f", self.volume, otherBox.volume);
    if (self.volume > otherBox.volume) {
        return [NSString stringWithFormat:@"The first box fits inside: %f",floor(self.volume / otherBox.volume)];
    } else {
        return [NSString stringWithFormat:@"The second box fits inside: %f",floor(otherBox.volume / self.volume)];
    }
}

@end
