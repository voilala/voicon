//
//  Cetagory.h
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
// lop nay luu thông tin các danh mục sản phẩm như điện thoại,laptop....
@interface Category : NSObject
{@public
    int _numberOfItem;
}
@property(nonatomic,strong) NSString *iDCategory;
@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSString *description;
-(id) init:(NSString *) iD:(NSString *)name:(NSString *) description:(int)numberOfItem;

-(BOOL) addItem:(Item *)item:(NSMutableArray *)array;
@end
