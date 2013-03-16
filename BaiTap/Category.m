//
//  Catagory.m
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import "Category.h"

@implementation Category
- (NSString*) description
{
    if (_name != nil) { 
        return _name;
    } else {
        return NSStringFromClass([self class]);
    }
}
-(id)init:(NSString *)iD :(NSString *)name :(NSString *)description :(int)numberOfItem{
    if (self = [super init])
    {
        _iDCategory=iD;
        _name=name;
        _description=description;
        _numberOfItem=numberOfItem;
    }
    return self;
}
-(BOOL)addItem:(Item *)item :(NSMutableArray *)array{
    [array addObject:item];
    NSLog(@"Đã thêm thành công item %@ vào catagory %@",item,self);
}
@end
