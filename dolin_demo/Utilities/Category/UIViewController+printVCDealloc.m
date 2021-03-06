//
//  UIViewController+printVCDealloc.m
//   
//
//  Created by Dolin on 2019/4/30.
//  Copyright © 2019 shaolin. All rights reserved.
//

#import "UIViewController+printVCDealloc.h"
#import <objc/runtime.h>

@implementation UIViewController (printVCDealloc)

+ (void)load {
    Method dealloc = class_getInstanceMethod([self class], NSSelectorFromString(@"dealloc"));
    Method deallocPrint = class_getInstanceMethod([self class], NSSelectorFromString(@"deallocPrint"));
    method_exchangeImplementations(dealloc, deallocPrint);
}

- (void)deallocPrint {
    NSLog(@" --- %@ --- dealloc", self.class);
    [self deallocPrint];
}

@end
