//
//  Item.h
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContractImport.h"
#import "ContractExport.h"
// lớp này lưu trữ các thông tin của các sản phẩm như :Galaxy s3,Galaxy S4
@interface Item : NSObject
{@public
    int _count;
    int _priceSold;
    int _pricePurchase;
}
@property (nonatomic,strong) NSString *idItem;
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *idCatagory;
-(NSString *)description;
-(id)init:(NSString *)idItem
         :(NSString *)name
         :(NSString *)idCatagory
         :(int) count
         :(int) priceSold
         :(int) pricePurchase;
-(void) addContractImport:(ContractImport *)cntImport:(NSMutableArray *)array;
-(BOOL) addContractExport:(ContractExport *)cntExport:(NSMutableArray *)array;
@end
