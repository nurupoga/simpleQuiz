//
//  ViewController.m
//  Quiz
//
//  Created by ohtatomotaka on 2014/12/03.
//  Copyright (c) 2014年 ohtatomotaka. All rights reserved.
//

#import "ViewController.h"
#import "ResultViewController.h"
//何問出題するかの設定
#define COUNT 2
@interface ViewController ()

@end

@implementation ViewController

//アプリの起動時に最初に呼ばれる
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //auizListArrayを初期化
    quizListArray= [NSMutableArray array];
    //変数の初期化処理
    sumCount = 0;
    answerCount = 0;
    
    //↓で配列に問題を追加
    // TODO:ここに問題を追加
    //--------------ここから下にクイズの問題を書いてみよう！--------------//
    
    //[quizListArray addObject:[NSArray arrayWithObjects:@"2LifeisTech!は何をしている会社ですか？", @"まっすー帝国", @"みっちー帝国",@"IT教育",@"3",nil] ];の形で問題を書く
    //例↓
    [quizListArray addObject:[NSArray arrayWithObjects:@"LifeisTech!は何をしている会社ですか？", @"まっすー帝国", @"みっちー帝国",@"IT教育",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"LifeisTech!の事務所はどこにありますか？", @"目黒駅近く", @"白金高輪駅近く",@"恵比寿駅近く",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"LifeisTech!のアイドルは誰でしょう？", @"とびすけ", @"ぬるぽ",@"まっすー",@"1",nil] ];
    
    //--------------ここから上にクイズの問題を書いてみよう！--------------//
    //最初の問題を設定
    [self setQuestion];
}
//選択肢のボタンをおした時の処理
-(IBAction)answerIsChoise1{
    if (answerNumber == 1) {
        answerCount = answerCount +1;
    }
    [self setQuestion];
}
-(IBAction)answerIsChoise2{
    if (answerNumber == 2) {
        answerCount = answerCount +1;
    }
    [self setQuestion];
}
-(IBAction)answerIsChoise3{
    if (answerNumber == 3) {
        answerCount = answerCount +1;
    }
    [self setQuestion];
}
//配列から問題をセット&規定数出題した場合の画面推移
-(void)setQuestion{
    //define　COUNTした値だけ問題を出題したら結果画面に推移する
    if (sumCount == COUNT) {
        [self performSegueWithIdentifier:@"Result" sender:self];

    }else{
        //現在解いている問題の出題数を保存
        sumCount = sumCount +1;
        //クイズがRANDOMに出題されるように設定
        int section = arc4random() % [quizListArray count];
        //配列の中の問題を表示する
        probelemText.text=[[quizListArray objectAtIndex:section] objectAtIndex:0];
        [choise1 setTitle:[[quizListArray objectAtIndex:section] objectAtIndex:1] forState:UIControlStateNormal];
        [choise2 setTitle:[[quizListArray objectAtIndex:section] objectAtIndex:2] forState:UIControlStateNormal];
        [choise3 setTitle:[[quizListArray objectAtIndex:section] objectAtIndex:3] forState:UIControlStateNormal];
        answerNumber = [[[quizListArray objectAtIndex:section] objectAtIndex:4] intValue];
        //問題の重複表示を回避　↓コメントアウトで重複も可能
        [quizListArray removeObjectAtIndex:section];
    }
}
//画面推移時に値を渡す
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Result"]) {
        ResultViewController *viewCon = segue.destinationViewController;
        viewCon.getAnswerCount = answerCount;
        viewCon.getSumCount = sumCount;
    }
}
@end
