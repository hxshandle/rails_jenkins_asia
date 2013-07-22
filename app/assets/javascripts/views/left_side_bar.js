_R.Views.LeftSideBar = _R.Views.BaseView.extend({
  template:"left_side_bar",
  el: $('#left-side-bar'),
  render:function(){
    this.$el.append(this._renderTemplate());
    return this;
  }
});