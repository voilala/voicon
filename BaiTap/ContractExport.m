//
//  ContractExport.m
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import "ContractExport.h"

@implementation ContractExport
-(NSString *)description{
    if (_idContractExport != nil) {
        return _idContractExport;
    } else {
        return NSStringFromClass([self class]);
    }
}
-(id)init:(NSString *)idCntExport
         :(NSString *)idItem
         :(NSDate *)dateOfExport
         :(NSString *)idManager
         :(NSString *)nameCustomerExport
         :(int)priceSold
         :(int)countItem
         :(int)totalOfMoney
         :(int)tongTienNo{
    if (self = [super init])
    {
        _idContractExport=idCntExport;
        _idItem=idItem;
        _dateOfExport=dateOfExport;
        _idManager=idManager;
        _nameCustomerExport=nameCustomerExport;
        _priceSold=priceSold;
        _countItem=countItem;
        _tongTienNo=tongTienNo;
        _totalOfMoney=totalOfMoney;
    }
    return self;
}
-(void)addBillExport:(BillExport *)billExport :(NSMutableArray *)array{
    [array addObject:billExport];
    _tongTienNo=_tongTienNo - billExport->_moneyPayment;
    if(_tongTienNo>0){
        NSLog(@"khách hàng %@ đã thanh toán %d và vẫn còn nợ %d",_nameCustomerExport,billExport->_moneyPayment,_tongTienNo);
    }else {
        NSLog(@"Đã trả hết nợ");
    }
}
@end
