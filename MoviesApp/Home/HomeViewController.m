//
//  HomeViewController.m
//  MoviesApp
//
//  Created by Mohamed Rabie on 11/8/22.
//

#import "HomeViewController.h"
#import "SDWebImage.h"
#import "Movies.h"
#import "DetailsViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _networkManager = [NetworkManager new];
    [_networkManager getAllMovies:self];
    // Do any additional setup after loading the view.
}

#pragma mark - Connection Delegate

-(void)connection: (NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    
    _responseData = [[NSMutableData alloc] init];
    
}

-(void)connection: (NSURLConnection *)connection didReceiveData:(NSData *)data{
    
    [self.responseData appendData:data];
    
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
    _movies = [NSJSONSerialization JSONObjectWithData:self.responseData options:NSJSONReadingAllowFragments error:nil];
    
}


#pragma mark - Table View Data Source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _movies.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSDictionary *current_dict = _movies[indexPath.row];
    cell.textLabel.text = [current_dict objectForKey:@"title"];
    
    NSString *image_str = [current_dict objectForKey:@"image"];
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:image_str] placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    cell.imageView.layer.cornerRadius = 28;
    cell.imageView.layer.masksToBounds = true;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSDictionary *current_dict = _movies[self.tableView.indexPathForSelectedRow.row];
   
    Movies *movie = [Movies new];
    movie.title = [current_dict objectForKey:@"title"];
    movie.image = [current_dict objectForKey:@"image"];
    movie.rating = [[current_dict objectForKey:@"rating"] doubleValue];
    movie.releaseYear = [[current_dict objectForKey:@"releaseYear"] intValue];
    movie.genre = [current_dict objectForKey:@"genre"];
    
    ((DetailsViewController*) segue.destinationViewController).movies = movie;
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
