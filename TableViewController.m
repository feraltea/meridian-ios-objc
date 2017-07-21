//
//  TableViewController.m
//  meridian-ios-objc
//
//  Created by Tyler Frith on 7/20/17.
//  Copyright © 2017 tfrth. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

//create our array of meridian functionalist examples
{
    NSArray *examples;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //initialize examples array
    examples = [NSArray arrayWithObjects:@"Basic Map View", @"User Location", @"Campaign Monitoring", @"Tags", @"Directions", @"Custom Placemarks", nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return [examples count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *tableIdentifier = @"exampleCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier forIndexPath:indexPath];
    
    // Configure the cell..
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifier];
    }
    cell.textLabel.text = [examples objectAtIndex:indexPath.row];
    return cell;
}




/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //switch between controllers based on cell selected
    
    switch (indexPath.row) {
        case 0:
            [self performSegueWithIdentifier:@"BasicMapView" sender:nil];
            break;
        case 1:
            [self performSegueWithIdentifier:@"UserLocation" sender:nil];
            break;
        case 2:
            [self performSegueWithIdentifier:@"Campaigns" sender:nil];
            break;
        case 3:
            [self performSegueWithIdentifier:@"Tags" sender:nil];
            break;
        case 4:
            [self performSegueWithIdentifier:@"Directions" sender:nil];
            break;
        case 5:
            [self performSegueWithIdentifier:@"CustomPlacemarks" sender:nil];
            break;
            //        case 6:
            //            [self performSegueWithIdentifier:@"BasicMapView" sender:nil];
            //            break;
            //        case 7:
            //            [self performSegueWithIdentifier:@"BasicMapView" sender:nil];
            //            break;
            
        default:
            break;
    }
};


// In a storyboard-based application, you will often want to do a little preparation before navigation
//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id) sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
//}

@end
