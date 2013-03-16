//
//  BillExport.m
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import "BillExport.h"

@implementation BillExport
-(NSString *)description{
    if (_idBillExport != nil) {
        return _idBillExport;
    } else {
        return NSStringFromClass([self class]);
    }
}
-(id)init:(NSString *)idBillExport
         :(NSString *)idContractExport
         :(NSDate *)date
         :(int)moneyPayment{
    if (self = [super init]){
        _idBillExport=idBillExport;
        _idContractExport=idContractExport;
        _date=date;
        _moneyPayment=moneyPayment;
    }
    return self;
}

@end
