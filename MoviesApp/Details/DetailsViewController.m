//
//  DetailsViewController.m
//  MoviesApp
//
//  Created by Mohamed Rabie on 11/8/22.
//

#import "DetailsViewController.h"
#import "SDWebImage.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.movieTitle.text = self.movies.title;
    [self.movieImage sd_setImageWithURL:[NSURL URLWithString:self.movies.image] placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    self.movieRating.text = [NSString stringWithFormat:@"%.2lf", self.movies.rating];
    self.movieReleaseYear.text = [NSString stringWithFormat:@"%d", self.movies.releaseYear];
    self.movieGenre.text = [self.movies.genre componentsJoinedByString:@", "];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
