//
//  ViewController.m
//  TouchGesture
//
//  Created by Felix-Madhuri on 10/08/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _lbl.userInteractionEnabled=YES;
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapclick)];
    
    tap.numberOfTapsRequired=2;
    
    [_lbl addGestureRecognizer:tap];
    
    
    
    _btn.userInteractionEnabled=YES;
    
    UILongPressGestureRecognizer *longpress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longpress)];
    
    longpress.minimumPressDuration=3;
    
    
    [_btn addGestureRecognizer:longpress];
    
    
    _imgview.userInteractionEnabled=YES;
    
    _s1=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s1.direction=UISwipeGestureRecognizerDirectionLeft;
    
    _s2=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s2.direction=UISwipeGestureRecognizerDirectionRight;
    
    _s3=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s3.direction=UISwipeGestureRecognizerDirectionUp;
    
    _s4=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s4.direction=UISwipeGestureRecognizerDirectionDown;
    
    [_imgview addGestureRecognizer:_s4];
    [_imgview addGestureRecognizer:_s3];
    [_imgview addGestureRecognizer:_s2];
    [_imgview addGestureRecognizer:_s1];
    
}
-(void)swipe:(UISwipeGestureRecognizer *)sender
{
    //UISwipeGestureRecognizer *temp=(UISwipeGestureRecognizer *)sender;
    if(sender==_s1)
        _imgview.image=[UIImage imageNamed:@"2"];
    else if(sender==_s2)
        _imgview.image=[UIImage imageNamed:@"3"];
    else
        if(sender==_s3)
            _imgview.image=[UIImage imageNamed:@"Australia"];
    else
        _imgview.image=[UIImage imageNamed:@"Austria"];
}


-(void)tapclick
{
    self.view.backgroundColor=[UIColor redColor];
    
}
-(void)longpress
{
    self.view.backgroundColor=[UIColor greenColor];
}




//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//   UITouch *touchpoints= [touches anyObject];
//   CGPoint points= [touchpoints locationInView:self.view];
//    NSLog(@"start at %f    %f",points.x,points.y);
//    
//    
//}
//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *touchpoints= [touches anyObject];
//    CGPoint points= [touchpoints locationInView:self.view];
//    NSLog(@"move at %f    %f",points.x,points.y);
//}
//-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *touchpoints= [touches anyObject];
//    CGPoint points= [touchpoints locationInView:self.view];
//    NSLog(@"end at %f    %f",points.x,points.y);
//    
//}
//
//
//






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
