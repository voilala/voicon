//
//  Manager.h
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Category.h"


@interface Manager : NSObject
{
}
@property(nonatomic,strong) NSString *iD;
@property(nonatomic,strong) NSString *name;
-(NSString *)description;
-(id)   init:(NSString *) iD
    withName:(NSString *) name
withPassword:(NSString *) password
withQuyenHan:(int) quyenHan;
-(BOOL) addManger:(Manager *)mana:(NSMutableArray *)array;
-(BOOL) removeManager:(Manager *)mana:(NSMutableArray *)array;
-(BOOL) changeInformationManager:(Manager *)mana;
-(void) addCategory:(Category *)category:(NSMutableArray *) array;
-(void) changeCategory:(Category *)category1:(Category *) category2:(NSMutableArray *)array;
//thay đổi các giá trị trong catagory như name,description,numberOfItem ,còn iD là không đổi

@end
