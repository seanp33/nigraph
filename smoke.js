var nigraph = require('bindings')('nigraph')

nigraph.igraph_erdos_renyi_game(200000, function (result) {
  console.log("v_count: " + result.v_count);
  console.log("e_count: " + result.e_count);
  console.log("points.length: " + result.points.length);
  console.log("points[10]: " + JSON.stringify(result.points[10]));
});
