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

@interface <%= @prefixed_module %>Router ()

@end

@implementation <%= @prefixed_module %>Router

-(instancetype) init
{
    if (self = [super init])
    {
      // instantiate viewController
      // self.viewController = ...;

      // view <-> presenter
      <%= @prefixed_module %>Presenter *presenter = [<%= @prefixed_module %>Presenter new];

      presenter.view = self.viewController;
      self.viewController.presenter = presenter;

      // interactor <-> presenter
      <%= @prefixed_module %>Interactor *interactor = [<%= @prefixed_module %>Interactor new];
      presenter.interactor = interactor;
      interactor.presenter = presenter;
    }
    return self;
}

- (void)presentFromViewController:(UIViewController *)viewController
{
    // present controller
}

@end
