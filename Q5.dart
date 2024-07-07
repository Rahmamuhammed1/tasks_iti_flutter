void main() {
  BankAccount account = BankAccount(1000.0);
  try {
    account.withdraw(500.0);
    account.withdraw(800.0); 
  } on OverdrawnException catch (e) { 
    print('Exception: ${e.errorMessage()}');
  }
}

// Task 5
class OverdrawnException implements Exception {
  String errorMessage() => 'Cannot withdraw more than current balance!';
}

class BankAccount {
  double balance;

  BankAccount(this.balance);

   void deposit(double amount) {
    balance += amount;
    print('Deposited: \$$amount');
    print('Current Balance: \$$balance');
  }

  void withdraw(double amount) {
    if (amount > balance) {
      throw OverdrawnException();
    } else {
      balance -= amount;
      print('Withdrawn: \$$amount');
      print('Current Balance: \$$balance');
    }
  }
}
