_R.Routers.Router = Backbone.Router.extend({
  routes: {
    "": "index",
    "projects": "projects"
  },
  _currentView: null,
  _clearCurrentView: function () {
    if (this._currentView){
      this._currentView.remove();
    }
  },
  index: function () {
    console.log("index page");
    var _app = new _R.Views.App();
    this._clearCurrentView();
    var _dashboard = new _R.Views.Dashboard();
    this._currentView = _dashboard;
  },
  projects: function () {
    console.log("projects page");
    this._clearCurrentView();
    var projectView = new _R.Views.Projects();
    this._currentView = projectView;

  }
});