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

- (void)presentFromViewController:(UIViewController *) sourceViewController
{
    // instantiate viewController
    self.viewController = nil;

    // view <-> presenter
    PRMProductsPresenter *presenter = [PRMProductsPresenter new];

    presenter.router = self;
    presenter.view = self.viewController;
    self.viewController.presenter = presenter;

    // interactor <-> presenter
    PRMProductsInteractor *interactor = [PRMProductsInteractor new];
    presenter.interactor = interactor;
    interactor.presenter = presenter;

    // present viewController
    [sourceViewController presentViewController:self.viewController animated:YES completion:nil];
}

@end
