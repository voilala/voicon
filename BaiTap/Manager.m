//
//  Manager.m
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import "Manager.h"
@interface Manager(){
    NSString *_password;
    int _quyenHan;
}
@end
@implementation Manager
- (NSString*) description
{
    if (_name != nil) { 
        return _name;
    } else {
        return NSStringFromClass([self class]);
    }
}


-(id)init:(NSString *)iD withName:(NSString *)name withPassword:(NSString *)password withQuyenHan:(int)quyenHan{
if (self = [super init])
{
    _iD=iD;
    _name=name;
    _password=password;
    _quyenHan=quyenHan;
    }
    return self;
}
-(BOOL)addManger:(Manager *)mana:(NSMutableArray *)array{
    if(self->_quyenHan==1){
        [array addObject:mana];
        NSLog(@"%@ đã được thêm",mana);
        return true;
    }else {
        NSLog(@"%@ không được quyền thêm manager",self);
        return false;}
}
-(void)addCategory:(Category *)category :(NSMutableArray *)array{
    [array addObject:category];
    NSLog(@"catagory %@ da duoc them thanh cong",category);
}
-(void)changeCategory:(Category *)category1 :(Category *)category2 :(NSMutableArray *)array{
    category1.name=category2.name;
    category1.description=category2.description;
    category1->_numberOfItem =category2->_numberOfItem;
}

@end
