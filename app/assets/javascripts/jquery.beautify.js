$.fn.beautify = function(opts) {
  $(this).each(function() {
    var elem = $(this);
    elem.text(js_beautify(elem.text(), opts));
  });
};