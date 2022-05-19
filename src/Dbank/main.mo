import Debug "mo:base/Debug";
import Time "mo:base/Time";

actor DBank {
    stable var currentValue: Nat = 300;

    let startTime = Time.now();
    Debug.print(debug_show(startTime));

    public func topUp(amount: Nat) {
        currentValue += amount;
        Debug.print(debug_show(currentValue));
    };

    public func withdraw(amount: Nat) {
        currentValue -= amount;
        Debug.print(debug_show(currentValue));
    };

    public query func getBalance(): async Nat {
        return currentValue;
    };
};