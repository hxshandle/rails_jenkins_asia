//= require ./base_view
_R.Views.App = _R.Views.BaseView.extend({
  initialize: function () {
    this.leftSideBar = new RailsJenkinsAisa.Views.LeftSideBar();
    this.render();
    this._bindingHerfLink();
  },
  el: $("#main"),
  /**
   * Render HTML DOM
   */
  render: function () {
    this.leftSideBar.render();
  }
});