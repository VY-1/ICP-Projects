import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Bool "mo:base/Bool";


actor {
  let tuple = (42, true);

  // dot notation
  let first = tuple.0; //42
  let second = tuple.1;  // true

  Debug.print(Nat.toText(first));
  Debug.print(Bool.toText(second));

  // destructuring
  //tuple is immutable, meaning you cannot modify the values within it

  //let (first, second) = tuple;    //will not work
  let (a, b) = tuple;
  let (_, d) = tuple;   //ignore the first value

  Debug.print(debug_show(a, b, d));

  //Tuples can also be used to return multiple values from a function:
  // this function returns the result and remainder of x / y
  func divide(x : Nat, y : Nat) : (Nat, Nat) {
    (x / y, x % y)
  };

  let result1 = divide(11, 5); // (2, 1)

  Debug.print(debug_show(result1));

  // func swap(x: Nat, y: Nat) : (Nat, Nat){
  //   return (y, x);
  // };

  //Using dot notation:
  // func swap(t : (Nat, Nat)) : (Nat, Nat) {
  //   (t.1, t.0);
  // };

  //Using destructuring:
  func swap((a, b): (Nat, Nat)) : (Nat, Nat){
    (b, a);
  };

  let swap_result = swap(4, 2);
  Debug.print(debug_show(swap_result));

}
