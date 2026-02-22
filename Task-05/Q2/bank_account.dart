class BankAccount {
  String accountNumber;
  String accountType;
  double balance;
  String currency;

  BankAccount({
    required this.accountNumber,
    required this.accountType,
    required this.balance,
    required this.currency,
  });

  void deposit(double amount) {
    if (amount <= 0) {
      print('Deposit amount must be greater than zero.');
      return;
    }
    balance += amount;
    print('Deposited $amount $currency. New balance: $balance $currency');
  }

  bool withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('Withdrew $amount $currency. New balance: $balance $currency');
      return true;
    } else {
      print(
        'Transaction declined: Insufficient balance. Available: $balance $currency',
      );
      return false;
    }
  }

  void displayAccount() {
    print('Account Number: $accountNumber');
    print('Account Type: $accountType');
    print('Balance: $balance $currency');
  }

  @override
  String toString() {
    return 'Account Number: $accountNumber\nAccount Type: $accountType\nBalance: $balance $currency';
  }
}
