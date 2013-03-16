//
//  ViewController.m
//  BaiTap
//
//  Created by Fighting on 3/15/13.
//  Copyright (c) 2013 Fighting. All rights reserved.
//

#import "ViewController.h"
#import "Manager.h"
#import "ContractImport.h"
#import "ContractExport.h"
#import "Item.h"

@interface ViewController ()
{

    Manager *_manager1;
    Manager *_manager2;
    Manager *_manager3;
    Category *_category1;
    Category *_category2;
    Item *_item1;
    Item *_item2;
    ContractImport *_contractImport;
    ContractExport *_contractExport;
    BillImport *_billImport;
    BillExport *_billExport;
    NSMutableArray *managerArray;
    NSMutableArray *categoryArray;
    NSMutableArray *itemArray;
    NSMutableArray *contractImportArray;
    NSMutableArray *contractExportArray;
    NSMutableArray *billImportArray;
    NSMutableArray *billExportArray;
}
//@property (nonatomic,strong) 
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)DemoManager:(id)sender {
    _manager1 =[[Manager alloc]init:@"A1"
                          withName:@"Luong Hien"
                      withPassword:@"123"
                      withQuyenHan:1];
    _manager2=[[Manager alloc]init:@"A2"
                          withName:@"Ngo Du"
                      withPassword:@"abc123"
                      withQuyenHan:2];
    _manager3=[[Manager alloc]init:@"A3"
                          withName:@"Pham Hoan"
                      withPassword:@"abcd"
                      withQuyenHan:2];
    
    managerArray=[NSMutableArray arrayWithObjects:_manager1,_manager2
                  , nil];
    [_manager2 addManger:_manager3 :managerArray];
    NSLog(@"%@",managerArray);

    [_manager1 addManger:_manager3 :managerArray];
    NSLog(@"%@",managerArray);
        
}
- (IBAction)Category:(id)sender {
    _manager2=[[Manager alloc]init:@"A2"
                          withName:@"Ngo Du"
                      withPassword:@"abc123"
                      withQuyenHan:2];
    _category1 =[[Category alloc]init:@"C1" :@"Dien Thoai" :@"chi ban smartphone cao cap thoi" :0];
    _category2 =[[Category alloc]init:@"C2" :@"LapTop" :@"lap top loai nao cung ban" :0];
    categoryArray =[NSMutableArray arrayWithObjects:_category1, nil];
    NSLog(@"%@",categoryArray);
                    [_manager2 addCategory:_category2 :categoryArray];
    NSLog(@"%@",categoryArray);
    
    //thay đổi thông tin name của catagory1 thành "Dien Thoai Xin"
    Category *ct1=[Category new];
    ct1=_category1 ;
    ct1.name=@"Dien Thoai Xin";
    [_manager2 changeCategory:_category1 :ct1 :categoryArray];
    NSLog(@"%@",categoryArray);

}
- (IBAction)DemoItem:(id)sender {
    //---------------
    _manager1 =[[Manager alloc]init:@"A1"
                           withName:@"Luong Hien"
                       withPassword:@"123"
                       withQuyenHan:1];
    _category1 =[[Category alloc]init:@"C1" :@"Dien Thoai" :@"chi ban smartphone cao cap thoi" :0];
    //-------------
    _item1 =[[Item alloc]init:@"I1" :@"Galaxy S3" :@"C1" :0 :0 :0];
    _item2 =[[Item alloc]init:@"I1" :@"Galaxy S4" :@"C1" :0 :0 :0];
    itemArray =[NSMutableArray arrayWithObject:_item1];
    NSLog(@"%@",itemArray);
    //add thêm phần tử
    [_category1 addItem:_item2 :itemArray];
    NSLog(@"%@",itemArray);
    NSLog(@"Số lượng của Galaxy S3 là %d và giá nhập là %d và giá bán là %d",_item1->_count,_item1->_pricePurchase,_item1->_priceSold);
    
    //add phiếu nhập kho(hợp đồng nhập kho)
    _contractImport =[[ContractImport alloc]init:@"CI1"
                                                :@"I1"
                                                :_manager1.iD
                                                :12/3/2013
                                                :25/4/2017
                                                :@"Viet Cuong Mobile"
                                                :100
                                                :13000000
                                                :100*13000000
                                                :100*13000000];
    [_item1 addContractImport:_contractImport:contractImportArray];
    NSLog(@"Số lượng của Galaxy S3 là %d và giá nhập là %d và giá bán là %d",_item1->_count,_item1->_pricePurchase,_item1->_priceSold);
    
    //add phiếu xuất kho(hợp đồng xuất kho)
    
    _contractExport =[[ContractExport alloc]init:@"CE1"
                                                :@"I1"
                                                :15/3/2013
                                                :_manager1.iD
                                                :@"Nguyễn văn A"
                                                :_item1->_priceSold
                                                :5
                                                :5*(_item1->_priceSold)
                                                :5*(_item1->_priceSold)];
    if([_item1 addContractExport:_contractExport:contractExportArray])
    {
        NSLog(@"Đã bán thành công");
    NSLog(@"Số lượng của Galaxy S3 còn lại trong kho là %d và giá nhập là %d và giá bán là %d",_item1->_count,_item1->_pricePurchase,_item1->_priceSold);
    }else{
        NSLog(@"không còn đủ hàng để bán");
    }
}

- (IBAction)DemoBillImport:(id)sender {
    
    _contractImport =[[ContractImport alloc]init:@"CI1"
                                                :@"I1"
                                                :@"A1"
                                                :12/3/2013
                                                :25/4/2017
                                                :@"Viet Cuong Mobile"
                                                :100
                                                :13000000
                                                :100*13000000
                                                :100*13000000];
    _billImport =[[BillImport alloc] init:@"BI1"
                                         :_contractImport.idContractImport
                                         :15/3/2012
                                         :500000000];
    billImportArray=[NSMutableArray new];
    [_contractImport addBillImport:_billImport :billImportArray];
    
}

- (IBAction)DemoBillExport:(id)sender {
    
    _contractExport =[[ContractExport alloc]init:@"CE1"
                                                :@"I1"
                                                :15/3/2013
                                                :@"A1"
                                                :@"Nguyễn văn A"
                                                :13500000
                                                :5
                                                :5*13500000
                                                :5*13500000];
    _billExport =[[BillExport alloc] init:@"BE1"
                                         :_contractExport.idContractExport
                                         :15/3/2012
                                         :10000000];
    billExportArray=[NSMutableArray new];
    [_contractExport addBillExport:_billExport :billExportArray];

}

@end
