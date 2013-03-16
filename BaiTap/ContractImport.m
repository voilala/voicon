//
//  ContractImport.m
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import "ContractImport.h"

@implementation ContractImport
-(NSString *)description{
    if (_idContractImport != nil) {
        return _idContractImport;
    } else {
        return NSStringFromClass([self class]);
    }
}
-(id)init:(NSString *)idContractImport
         :(NSString *)idItem
         :(NSString *)idManager
         :(NSDate *)dateOfImport
         :(NSDate *)HSD
         :(NSString *)nameCustomerImport
         :(int)countItem
         :(int)pricePurchase
         :(int) totalOfMoney
         :(int)tongTienNo
{
    if (self = [super init]){
    _idContractImport=idContractImport;
    _idItem=idItem;
    _idManager=idManager;
    _dateOfImport=dateOfImport;
    _HSD=HSD;
    _nameCustomerImport=nameCustomerImport;
    _countItem=countItem;
    _pricePurchase=pricePurchase;
    _totalOfMoney=totalOfMoney;
    _tongTienNo=tongTienNo;
    }
    return self;
}
-(void)addBillImport:(BillImport *)billImport :(NSMutableArray *)array{
    [array addObject:billImport];
    _tongTienNo=_tongTienNo-billImport->_moneyPayment;
    if(_tongTienNo>0){
        NSLog(@"chúng ta đã thanh toán %d và vẫn còn nợ %d với khách hàng %@",billImport->_moneyPayment,_tongTienNo,_nameCustomerImport);
    
    }else {
        NSLog(@"Đã trả hết nợ");
    }
}
@end
