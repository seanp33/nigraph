var nigraph = require('./build/Release/nigraph');

nigraph.igraph_erdos_renyi_game(1000, function(result){
  console.log("v_count: " + result.v_count);
  console.log("e_count: " + result.e_count);
  console.log("diameter: " + result.diameter);
  console.log("points: " + JSON.stringify(result.points));
});
