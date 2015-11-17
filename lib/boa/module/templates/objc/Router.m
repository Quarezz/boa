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

- (void)presentFromViewController:(UIViewController *)viewController
{
    // instantiate viewController
    <%= @prefixed_module %>ViewController *viewController = nil;

    // view <-> presenter
    <%= @prefixed_module %>Presenter *presenter = [<%= @prefixed_module %>Presenter new];

    presenter.router = self;
    presenter.view = viewController;
    viewController.presenter = presenter;

    // interactor <-> presenter
    <%= @prefixed_module %>Interactor *interactor = [<%= @prefixed_module %>Interactor new];
    presenter.interactor = interactor;
    interactor.presenter = presenter;

    // present viewController
}

@end
