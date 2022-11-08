//
//  NetworkManager.m
//  MoviesApp
//
//  Created by Mohamed Rabie on 11/8/22.
//

#import <Foundation/Foundation.h>
#import "NetworkManager.h"

@implementation NetworkManager

-(void)getAllMovies:(UIViewController *)delegate{
    NSURL *url = [NSURL URLWithString:@"https://api.androidhive.info/json/movies.json"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:delegate];
    [connection start];
}

@end
