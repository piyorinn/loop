
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    resultLabel1.text=@"?";
    resultLabel2.text=@"?";
    resultLabel3.text=@"?";
    resultLabel4.text=@"?";
    //resultLabel5.text=@"?";


    int random_number=arc4random_uniform(10000);
    password=random_number;
    //int  random_number=arc4random()%10000;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)start{
    for(int i=0;i<=password;i=i+1){
        //int i=0-最初の値　　i<10000-ループを続ける条件　　i=i+1-値の変化
        //if(i==password){//pasewordと一致した時
        int suuji[4];
        int k=i;

        for(int j=0;j<4;j=j+1){
                        suuji[j]=(k%10);
            k=k/10;

                //resultLabel5.text=[NSString stringWithFormat:@"%d",i%100000-i%10000];
        
        [[NSRunLoop currentRunLoop]
         runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.0005]//処理を0.0005秒待機
         ];
        }
        resultLabel1.text=[NSString stringWithFormat:@"%d",suuji[0]];
        resultLabel2.text=[NSString stringWithFormat:@"%d",suuji[1]];
        resultLabel3.text=[NSString stringWithFormat:@"%d",suuji[2]];
        resultLabel4.text=[NSString stringWithFormat:@"%d",suuji[3]];//解析中の数字を表示

        if(i==password){//pasewordと一致した時
            int digit[4];
            for(int j=0;j<4;j=j+1){
                //j=0-最初の値　　j<4-ループを続ける条件　　j=j+1-値の変化
                digit[j]=(password%10);//j桁目の数字
                password=password/10;                                //かっこの間ループする
            }
            resultLabel1.text=[NSString stringWithFormat:@"%d",digit[0]];
            resultLabel2.text=[NSString stringWithFormat:@"%d",digit[1]];
            resultLabel3.text=[NSString stringWithFormat:@"%d",digit[2]];
            resultLabel4.text=[NSString stringWithFormat:@"%d",digit[3]];
            //resultLabel5.text=[NSString stringWithFormat:@"%d",digit[4]];
        }
    }
 }

@end
