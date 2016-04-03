//
//  DhtUtils.m
//  DhtPhotoLibarby
//
//  Created by Nguyen Van Dung on 4/3/16.
//  Copyright © 2016 Dht. All rights reserved.
//

#import "DhtUtils.h"
CGSize ScreenSize() {
    static CGSize size;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIScreen *screen = [UIScreen mainScreen];
        if ([screen respondsToSelector:@selector(coordinateSpace)])
        {
            size = [screen.coordinateSpace convertRect:screen.bounds toCoordinateSpace:screen.fixedCoordinateSpace].size;
        }else{
            size = screen.bounds.size;
        }
    });
    
    return size;
}
@implementation DhtUtils

@end
