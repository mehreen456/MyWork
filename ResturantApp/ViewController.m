//
//  ViewController.m
//  ResturantApp
//
//  Created by Amerald on 17/06/2016.
//  Copyright © 2016 attribe. All rights reserved.
//




#import "ViewController.h"
#import "MyTableViewCell.h"
# import "SWRevealViewController.h"
@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *DishName;
    NSArray *thumbnails;
    NSArray *description;
    NSArray *price;
    
    
}- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
    
   DishName = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg",@"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", nil];
    
    _barButton.target= self.revealViewController;
    _barButton.action=@selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [DishName count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"MyTableCell";
    
    MyTableViewCell *cell = (MyTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MyTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = [DishName objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:@"food1.jpg"];
    cell.descriptionLabel.text = @"Description";
    cell.priceLabel.text=@"Price";

    return cell;
}
@end
