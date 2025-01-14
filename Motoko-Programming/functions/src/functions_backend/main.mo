import Debug "mo:base/Debug";
import Nat8 "mo:base/Nat8";

actor {
  func add(a: Int, b: Int): Int{

    //returns a+b, can explicitly use return a + b;
    a + b;
  };

  let sum = add(1, 2);
  Debug.print(debug_show(sum));

  func subtract(a: Int, b: Int): Int {
    a - b;
  };

  let difference = subtract(3, 1);
  Debug.print(debug_show(difference));

  // Type annotations,
  //Motoko is a statically-typed language, meaning that every variable is assigned a specific type. The compiler prohibits you from assigning a value of an incorrect type to a variable. For instance, you cannot assign a string to a number.

  //To specify a variable type, you put a type annotation after the variable name, separated by a colon:
  
  func greet(name: Text): Text {
    "Hello, " # name;
  };

  let name = "World";
  Debug.print(greet(name));

  //void function with unit type ()
  func printNumber(a: Nat): () {
    Debug.print(debug_show(a));
  };
  printNumber(10);
  
  //by default a is a Nat and will net take neg value assignment and needs to be explicitly
  //specify the type Int
  //var a = 30;
  var a: Int = 30;
  a -= 100;
  Debug.print(debug_show(a));

  //Nat conversion
  let nata : Nat8 = 10;
  let natb : Nat = 300;

  let natc = Nat8.toNat(nata) + natb;

};
