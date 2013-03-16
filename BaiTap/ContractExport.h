//
//  ContractExport.h
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BillExport.h"
//lớp này lưu trữ các thông tin về 1 phiếu Xuất kho(hợp đồng Xuất kho)
@interface ContractExport : NSObject
{@public
    int _priceSold;
    int _countItem;
    int _totalOfMoney;
    int _tongTienNo;
}
@property (nonatomic,strong) NSString *idContractExport;
@property (nonatomic,strong) NSString *idItem;
@property (nonatomic,strong) NSDate *dateOfExport;
@property (nonatomic,strong) NSString *idManager;
@property (nonatomic,strong) NSString *nameCustomerExport;
-(id)init :(NSString *) idCntExport
          :(NSString *) idItem
          :(NSDate *) dateOfExport
          :(NSString *)idManager
          :(NSString *)nameCustomerExport
          :(int)priceSold
          :(int)countItem
          :(int) totalOfMoney
          :(int) tongTienNo;
-(void) addBillExport:(BillExport *) billExport:(NSMutableArray *) array;
@end
