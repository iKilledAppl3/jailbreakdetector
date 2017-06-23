//
//  ViewController.h
//  jailbreakdetector
//
//  Created by iKilledAppl3 on 6/22/17.
//  Copyright © 2017 iKilledAppl3 & ToxicAppl3 Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

//Audio Frameworks :)
@import AVKit;
@import AVFoundation;
@import AudioToolbox;

@interface ViewController : UIViewController


@end

//The sound to play if you want a sound that is :P
AVAudioPlayer *ahAhAh;

/*I know UIAlertView is deprecated but if you use UIAlertController for some reason it's finicky about the view hireachy if called in the view did load*/

UIAlertView *alertView;

