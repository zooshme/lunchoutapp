!function(e){var t="object"==typeof exports,n="undefined"==typeof JS?require("./core"):JS,r=n.Hash||require("./hash").Hash;t&&(exports.JS=exports),e(n,r,t?exports:n)}(function(e,t,n){"use strict";var r=new e.Module("TSort",{extend:{Cyclic:new e.Class(Error)},tsort:function(){var e=[];return this.tsortEach(e.push,e),e},tsortEach:function(e,t){this.eachStronglyConnectedComponent(function(n){if(1!==n.length)throw new r.Cyclic("topological sort failed: "+n);e.call(t,n[0])})},stronglyConnectedComponents:function(){var e=[];return this.eachStronglyConnectedComponent(e.push,e),e},eachStronglyConnectedComponent:function(e,n){var r=new t,s=[];this.tsortEachNode(function(t){r.hasKey(t)||this.eachStronglyConnectedComponentFrom(t,r,s,function(t){e.call(n,t)})},this)},eachStronglyConnectedComponentFrom:function(e,t,n,r,s){var i,o,a=t.size,u=n.length,c=a;if(t.store(e,a),n.push(e),this.tsortEachChild(e,function(e){if(t.hasKey(e)){var i=t.get(e);void 0!==e&&c>i&&(c=i)}else{var o=this.eachStronglyConnectedComponentFrom(e,t,n,r,s);c>o&&(c=o)}},this),a===c){for(i=n.splice(u,n.length-u),o=i.length;o--;)t.store(i[o],void 0);r.call(s,i)}return c},tsortEachNode:function(){throw new e.NotImplementedError("tsortEachNode")},tsortEachChild:function(){throw new e.NotImplementedError("tsortEachChild")}});n.TSort=r});
//@ sourceMappingURL=tsort.js.map