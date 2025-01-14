import D "mo:base/Debug";
actor {


  let a = -100;

  // your code here
  var isInRange = a <= 100 and a >= 0;

  if (isInRange){
    D.print("a is in range");
  };

  D.print("isInRange: " # debug_show(isInRange));


}
