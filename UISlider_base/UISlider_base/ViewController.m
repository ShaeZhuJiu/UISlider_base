//
//  ViewController.m
//  UISlider_base
//
//  Created by 谢鑫 on 2019/7/17.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UISlider *slider;
@property(nonatomic,strong)UIImageView *imageView;
@end

@implementation ViewController
- (UISlider *)slider{
    if (_slider==nil) {
        _slider=[[UISlider alloc]initWithFrame:CGRectMake(20, 400, [UIScreen mainScreen].bounds.size.width-40, 20)];
        _slider.value=0.5;
        _slider.minimumTrackTintColor=[UIColor greenColor];
        _slider.maximumTrackTintColor=[UIColor blackColor];
        _slider.thumbTintColor=[UIColor grayColor];
        [_slider addTarget:self action:@selector(change) forControlEvents:UIControlEventValueChanged];
    }
    return _slider;
}
- (UIImageView *)imageView{
    if (_imageView==nil) {
        _imageView=[[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 220, 220)];
        _imageView.image=[UIImage imageNamed:@"1"];
        _imageView.layer.masksToBounds=YES;
        _imageView.layer.borderWidth=1;
        _imageView.alpha=0.5;
    }
    return _imageView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.slider];
    [self.view addSubview:self.imageView];
}
-(void)change{
    self.imageView.alpha=self.slider.value;
}

@end
