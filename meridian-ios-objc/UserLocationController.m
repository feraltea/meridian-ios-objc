//
//  UserLocationController.m
//  meridian-ios-objc
//
//  Created by Tyler Frith on 7/20/17.
//  Copyright © 2017 tfrth. All rights reserved.
//

#import "UserLocationController.h"
#import "ExamplesController.h"

@interface UserLocationController ()
@property (strong, nonatomic) MRLocationManager *locationManager;
@property (nonatomic, copy) MREditorKey *appKey;

@end

@implementation UserLocationController

-(void)loadView {
    
    self.appKey = [MREditorKey keyWithIdentifier:APP_ID];
    
    //mapView stuffs
    self.mapView = [[MRMapView alloc]init];
    self.mapView.showsUserLocation = YES;
    self.mapView.delegate = self;
    self.mapView.mapKey = [MREditorKey keyForMap:MAP_ID app:APP_ID];
    self.view = self.mapView;
    
    //create our location manager
    self.locationManager = [[MRLocationManager alloc]initWithApp:self.appKey];
    self.locationManager.delegate = self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    //start updating location (every time view appears)
     [self.locationManager startUpdatingLocation];
}

-(void)viewWillDisappear:(BOOL)animated {
    //stop updating location
    [self.locationManager stopUpdatingLocation];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
