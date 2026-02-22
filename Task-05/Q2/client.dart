import 'bank_account.dart';

class Client {
  String clientNumber;
  String clientName;
  List<BankAccount> accounts = [];

  Client({required this.clientNumber, required this.clientName});

  void addAccount(BankAccount account) {
    accounts.add(account);
    print('Account ${account.accountNumber} added to client ${clientName}');
  }

  void displayClientInfo() {
    print('\n=== Client Information ===');
    print('Client Number: $clientNumber');
    print('Client Name: $clientName');
    print('\nAccount Details:');
    for (var account in accounts) {
      print('  Account Number: ${account.accountNumber}');
      print('  Account Type: ${account.accountType}');
      print('  Balance: ${account.balance} ${account.currency}');
      print('');
    }
  }
}
