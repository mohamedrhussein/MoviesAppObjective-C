//
//  NetworkManager.h
//  MoviesApp
//
//  Created by Mohamed Rabie on 11/8/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NetworkManager : NSObject

-(void)getAllMovies:(UIViewController*) delegate;

@end

NS_ASSUME_NONNULL_END
