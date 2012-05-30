//
//  ViewController.m
//  movieplaylist
//
//  Created by 光太郎 川嶋 on 12/05/30.
//  Copyright (c) 2012年 UtageWorks. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)play:(id *)sender{
	NSLog(@"Play");

	NSString *path = [[NSBundle mainBundlee] pathForResorce:@"sample" ofType:@"m4v"];
	NSURL *url = [NSURL fileURLWithPath:path];

	MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL: url];

	[player.view setFrame: [self.view bounds]];

	[self.view addSubview:player.view];

	[player play];

}

@end
