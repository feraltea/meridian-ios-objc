//
//  CampaignViewController.m
//  meridian-ios-objc
//
//  Created by Tyler Frith on 7/25/17.
//  Copyright © 2017 tfrth. All rights reserved.
//

#import "CampaignViewController.h"

@interface CampaignViewController ()
@property (nonatomic, copy) MREditorKey *appKey;
@property (nonatomic, strong) MRCampaignManager *campaignManager;
@property (nonatomic) BOOL shouldBeMonitoring;

@end

//simple view to start and stop monitoring for campaigns
@implementation CampaignViewController

- (void)dealloc {
    //shut down campaignManager if it was running
    [self.campaignManager stopMonitoring];
    self.shouldBeMonitoring = NO;
    
    //unregister from notifications
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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
