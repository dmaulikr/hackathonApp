//
//  PoiViewController.m
//  hackathonApp
//
//  Created by Dogan Altinbas on 24/03/2017.
//  Copyright © 2017 Dogan Altinbas. All rights reserved.
//

#import "PoiViewController.h"

@interface PoiViewController ()
@property (weak, nonatomic) IBOutlet UITableView *selectionTableView;

@end

@implementation PoiViewController 

- (void)viewDidLoad {
    [super viewDidLoad];

    /*if (!UIAccessibilityIsReduceTransparencyEnabled()) {
        self.view.backgroundColor = [UIColor clearColor];
        
        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
        UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        blurEffectView.frame = self.view.bounds;
        blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        [self.view addSubview:blurEffectView];
    } else {
        self.view.backgroundColor = [UIColor blackColor];
    }*/
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark  - tableView Delegate Methods

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 60;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *selectedCell=[tableView cellForRowAtIndexPath:indexPath];

    if([selectedCell.reuseIdentifier isEqualToString:@"poiselectionCell"]){
    
    
    
    }
    
    
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{

    return 10;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"poiSelectionCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    //cell.contentView.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    UILabel *textlabel = (UILabel *)[cell viewWithTag:1];
    
    switch (indexPath.section) {
        case 0:
            textlabel.text = @"Şehir seç";
            break;
        case 1:
            textlabel.text = @"Semt seç";
            break;
        case 2:
            textlabel.text = @"Yer seç";
            break;
            
        default:
            break;
    }
    
    
    return cell;
}
- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section{

    view.tintColor = [UIColor clearColor];

}

- (void)tableView:(UITableView *)tableView willDisplayFooterView:(nonnull UIView *)view forSection:(NSInteger)section{
    
    view.tintColor = [UIColor clearColor];
    
}


@end
