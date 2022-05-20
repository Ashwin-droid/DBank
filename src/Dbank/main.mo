import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DBank {
    stable var currentValue: Float = 300;

    stable var startTime = Time.now();
    Debug.print(debug_show(startTime));

    public func topUp(amount: Float) {
        currentValue += amount;
        Debug.print(debug_show(currentValue));
    };

    public func withdraw(amount: Float) {
        currentValue -= amount;
        Debug.print(debug_show(currentValue));
    };

    public query func getBalance(): async Float {
        return currentValue;
    };

    public func hardReset() {
        currentValue := 1000;
        startTime := Time.now();
    };

    public func compound() {
        let now = Time.now();
        let elapsed = (now - startTime) / 1000000000;
        currentValue := currentValue * (1.01 ** Float.fromInt(elapsed));
        Debug.print(debug_show(currentValue));
        startTime := now;
    };
};