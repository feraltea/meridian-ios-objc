//
//  UserLocationController.m
//  meridian-ios-objc
//
//  Created by Tyler Frith on 7/20/17.
//  Copyright © 2017 tfrth. All rights reserved.
//

#import "UserLocationController.h"
#import "ExamplesController.h"

@interface UserLocationController () <MRMapViewDelegate>

@end

@implementation UserLocationController

-(void)loadView {
    self.mapView = [[MRMapView alloc]init];
    //show map picker
  //  self.mapView.showsMapPicker = YES;
    //show compass
//    self.mapView.showsUserHeading = YES;
    //show blue dot location
   // self.mapView.showsUserLocation = YES;
    self.mapView.delegate = self;
    self.mapView.mapKey = [MREditorKey keyForMap:MAP_ID app:APP_ID];
    self.view = self.mapView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
