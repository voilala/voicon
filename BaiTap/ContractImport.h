//
//  ContractImport.h
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BillImport.h"
//lớp này lưu trữ các thông tin về 1 phiếu nhập kho(hợp đồng nhập kho)
@interface ContractImport : NSObject
{@public
    int _countItem;
    int _pricePurchase;
    int _totalOfMoney;
    int _tongTienNo;
}
@property (nonatomic,strong) NSString *idContractImport;
@property (nonatomic,strong) NSString *idItem;
@property (nonatomic,strong) NSString *idManager;
@property (nonatomic,strong) NSDate *dateOfImport;
@property (nonatomic,strong) NSDate *HSD;
@property (nonatomic,strong) NSString *nameCustomerImport;
-(id)init :(NSString *)idContractImport
          :(NSString *) idItem
          :(NSString *)idManager
          :(NSDate *) dateOfImport
          :(NSDate *)HSD
          :(NSString *)nameCustomerImport
          :(int) countItem
          :(int) pricePurchase
          :(int) totalOfMoney
          :(int) tongTienNo;
-(void) addBillImport:(BillImport *) billImport:(NSMutableArray *) array;
@end
