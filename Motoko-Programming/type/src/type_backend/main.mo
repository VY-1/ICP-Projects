import Float "mo:base/Float";
import Debug "mo:base/Debug";

actor {

  //convert float to int
  let a : Float = 1.5;
  let b: Int = Float.toInt(Float.ceil(a));  

  Debug.print(debug_show(b));
};
