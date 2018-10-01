//
//  ViewController.m
//  jailbreakdetector
//
//  Created by iKilledAppl3 on 6/22/17.
//  Copyright © 2017 iKilledAppl3 & ToxicAppl3 Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Jailbreak detection simple but so far it works!
    //Apple will accept applications that detect jailbreak! read more below!
    //This is an example and you may edit as you like there are far better jailbreak detectors out there just search around :P
     NSString *filePath = @"/Applications/Cydia.app"; //See if cydia is in the /Applications/ folder of the device
    
    // alert strings feel free to change them if you'd like!
     NSString *titleString = @"AH! AH! AH!\n JAILBROKEN DEVICE!";
     NSString *messageString = @"You didn't say the magic word!\n Just kidding! \n Your device is jailbroken!\n In order to use this app please restore back to factory settings!";
     
     if ([[NSFileManager defaultManager] fileExistsAtPath:filePath]) //if Cydia exists show a non-dismisable alert!
     {
         /*I know UIAlertView is deprecated but if you use UIAlertController for some reason it's finicky about the view hireachy if called in the view did load*/
         
     alertView = [[UIAlertView alloc] initWithTitle:titleString message:messageString delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
     [alertView show];
        
     //Sound path and play AH AH AH sound from Jurassic Park you can remove this if you want!
     NSString *path = [[NSBundle mainBundle] pathForResource:@"magic_word" ofType:@"caf"];
     NSURL *url = [NSURL fileURLWithPath:path];
     ahAhAh = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
     ahAhAh.numberOfLoops = 0;
     ahAhAh.volume = 1.0;
     
     [self performSelector:@selector(playSound) withObject:nil afterDelay:1.0];
     
     
     
     }

}

//remove this pointer if you don't want the application to crash
//Apple WILL NOT accept any apps that do this!
//It's fun to have and to show off :P
-(void)crashMyApp {
 exit(0);
 }

//remove this pointer if you remove the sound part!
-(void)playSound {
 
 //play sound and crash application after 5 seconds
    //remove the self perform selector method if you don't want your application to crash
 [ahAhAh play];
 [self performSelector:@selector(crashMyApp) withObject:nil afterDelay:5.0];
 }




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
