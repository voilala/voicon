//
//  Item.m
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import "Item.h"

@implementation Item
-(NSString *)description{
    if (_name != nil) {
        return _name;
    } else {
        return NSStringFromClass([self class]);
    }

}
-(id)init:(NSString *)idItem :(NSString *)name :(NSString *)idCatagory :(int)count :(int)priceSold :(int)pricePurchase{
    if (self = [super init]){
    _idItem =idItem;
    _idCatagory=idCatagory;
    _name=name;
    _count=count;
    _priceSold=priceSold;
    _pricePurchase=pricePurchase;
    }
    return self;
}
-(void)addContractImport:(ContractImport *)cntImport :(NSMutableArray *)array{
    [array addObject:cntImport];
    NSLog(@"đã thêm Phiếu nhập kho mã số %@",cntImport);
    _count=_count+cntImport->_countItem;
    _pricePurchase=cntImport->_pricePurchase;
    _priceSold=_pricePurchase+500000;
}
-(BOOL)addContractExport:(ContractExport *)cntExport :(NSMutableArray *)array{
    if(cntExport->_countItem<_count){
    [array addObject:cntExport];
    NSLog(@"đã thêm Phiếu xuất kho mã số %@",cntExport);
    _count=_count-cntExport->_countItem;
    
    return YES;
    }else return NO;
}
@end
