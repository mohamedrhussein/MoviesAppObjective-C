//
//  HomeViewController.h
//  MoviesApp
//
//  Created by Mohamed Rabie on 11/9/22.
//

#import <UIKit/UIKit.h>
#import "NetworkManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UITableViewController<NSURLConnectionDelegate,NSURLConnectionDataDelegate>

@property NetworkManager *networkManager;
@property NSMutableData *responseData;
@property NSMutableArray *movies;

@end

NS_ASSUME_NONNULL_END
