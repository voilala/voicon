//
//  BillImport.m
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import "BillImport.h"

@implementation BillImport
-(NSString *)description{
    if (_idBillImport != nil) {
        return _idBillImport;
    } else {
        return NSStringFromClass([self class]);
    }
}
-(id)init:(NSString *)idBillImport
         :(NSString *)idContractImport
         :(NSDate *)date
         :(int)moneyPayment{
    if (self = [super init]){
        _idBillImport=idBillImport;
        _idContractImport=idContractImport;
        _date=date;
        _moneyPayment=moneyPayment;
    }
return self;
}
@end
