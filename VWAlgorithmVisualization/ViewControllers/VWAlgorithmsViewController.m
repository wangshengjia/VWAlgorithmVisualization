//
//  VWAlgorithmsViewController.m
//  VWAlgorithmVisualization
//
//  Created by WANG ShengJia on 12/28/13.
//  Copyright (c) 2013 Victor Shengjia Wang. All rights reserved.
//

#import "VWAlgorithmsViewController.h"

@interface VWAlgorithmsViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation VWAlgorithmsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	return nil;
}


@end
