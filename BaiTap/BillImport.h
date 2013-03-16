//
//  BillImport.h
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import <Foundation/Foundation.h>
//lớp này lưu trữ các thông tin về 1 phiếu thanh toán nhập kho(1 phiếu nhập kho có thể được thanh toán thành nhiều lần cho đến khi hết nợ)
@interface BillImport : NSObject
{@public
    int _moneyPayment;

}
@property (nonatomic,strong) NSString *idBillImport;
@property (nonatomic,strong) NSString *idContractImport;
@property (nonatomic,strong) NSDate *date;
-(id)init:(NSString *) idBillImport
         :(NSString *) idContractImport
         :(NSDate *) date
         :(int) moneyPayment;
@end
