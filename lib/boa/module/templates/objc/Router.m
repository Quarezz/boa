//
//  <%= @prefixed_module %>Router.m
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import "<%= @prefixed_module %>Router.h"

#import "<%= @prefixed_module %>ModuleInterface.h"

#import "<%= @prefixed_module %>ViewController.h"
#import "<%= @prefixed_module %>Interactor.h"
#import "<%= @prefixed_module %>Presenter.h"

@implementation <%= @prefixed_module %>Router

-(void) navigateFrom:(UIViewController *) sourceViewController
{
    // instantiate viewController
    _viewController = [[UIStoryboard storyboardWithName:@"" bundle:nil] instantiateViewControllerWithIdentifier:@"<%= @prefixed_module %>ViewController"];

    <%= @prefixed_module %>Presenter *presenter = [<%= @prefixed_module %>Presenter new];

    presenter.router = self;
    presenter.view = self.viewController;
    self.viewController.presenter = presenter;

    <%= @prefixed_module %>Interactor *interactor = [<%= @prefixed_module %>Interactor new];
    presenter.interactor = interactor;
    interactor.presenter = presenter;

    // show viewController
    //[sourceViewController presentViewController:self.viewController animated:YES completion:nil];
}

@end
