// ------------------------------------------------------------------
// begin <%= @module %> module

// instantiate classes
<%= @prefixed_module %>Router   *<%= @module.downcase %>Router   = [<%= @prefixed_module %>Router new];
<%= @prefixed_module %>Presenter   *<%= @module.downcase %>Presenter   = [<%= @prefixed_module %>Presenter new];
<%= @prefixed_module %>DataManager *<%= @module.downcase %>DataManager = [<%= @prefixed_module %>DataManager new];
<%= @prefixed_module %>Interactor  *<%= @module.downcase %>Interactor  = [<%= @prefixed_module %>Interactor new];

// presenter <-> Router
<%= @module.downcase %>Presenter.Router = <%= @module.downcase %>Router;
<%= @module.downcase %>Router.presenter = <%= @module.downcase %>Presenter;

// presenter <-> interactor
<%= @module.downcase %>Presenter.interactor = <%= @module.downcase %>Interactor;
<%= @module.downcase %>Interactor.presenter = <%= @module.downcase %>Presenter;

// interactor -> data_manager
<%= @module.downcase %>Interactor.dataManager = <%= @module.downcase %>DataManager;

// data_manager -> data_store
// *** connect datastore

// connect Routers
<%= @module.downcase %>Router.rootRouter = rootRouter;
// *** connect more Routers

// configure delegate
// *** add delegate here if needed

// end <%= @module %> module
// ------------------------------------------------------------------
