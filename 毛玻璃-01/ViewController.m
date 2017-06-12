//
//  ViewController.m
//  毛玻璃-01
//
//  Created by shiwei on 2017/3/6.
//  Copyright © 2017年 shiwei. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+BoxBlur.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageView.image = [[UIImage imageNamed:@"Snip20170217_1"] drn_boxblurImageWithBlur:0.1];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.imageView.image = [[UIImage imageNamed:@"Snip20170217_1"] drn_boxblurImageWithBlur:1];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
