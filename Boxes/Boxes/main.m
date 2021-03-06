//
//  main.m
//  Boxes
//
//  Created by Zach Smoroden on 2016-05-03.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Box *newBox = [[Box alloc]initWithWidth:2 andHeight:2 andLength:2];
        Box *secondBox = [[Box alloc]initWithWidth:2 andHeight:2 andLength:2];
        
        NSLog(@"The volume of the box is: %f", newBox.volume);
        
        NSLog(@"new box fits in second box %f times.", [newBox timesItFitsInside:secondBox]);
    }
    return 0;
}
