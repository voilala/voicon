//
//  BillExport.h
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import <Foundation/Foundation.h>
//lớp này lưu trữ các thông tin về 1 phiếu thanh toán xuất kho(1 phiếu xuất kho có thể được thanh toán thành nhiều lần cho đến khi hết nợ)
@interface BillExport : NSObject
{@public
    int _moneyPayment;
    
}
@property (nonatomic,strong) NSString *idBillExport;
@property (nonatomic,strong) NSString *idContractExport;
@property (nonatomic,strong) NSDate *date;
-(id)init:(NSString *) idBillExport
         :(NSString *) idContractExport
         :(NSDate *) date
         :(int) moneyPayment;

@end
