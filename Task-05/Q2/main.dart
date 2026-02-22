import 'bank_account.dart';
import 'client.dart';

void main() {
  print('=== Creating New Client ===');
  print('Enter the Client Number: 991316');
  print('Enter the Client Name: Ali Mohamed Nabil\n');

  Client client = Client(
    clientNumber: '991316',
    clientName: 'Ali Mohamed Nabil',
  );

  print('=== Creating Bank Accounts ===');

  BankAccount account1 = BankAccount(
    accountNumber: '73740192',
    accountType: 'Current',
    balance: 25000,
    currency: 'EGP',
  );
  client.addAccount(account1);

  BankAccount account2 = BankAccount(
    accountNumber: '73700438',
    accountType: 'Saving',
    balance: 1800,
    currency: 'USD',
  );
  client.addAccount(account2);

  print('\n=== Performing Transactions ===');

  print('\n1. Depositing 1500 EGP to account ${account1.accountNumber}:');
  account1.deposit(1500);

  print(
    '\n2. Attempting to withdraw 5000 USD from account ${account2.accountNumber}:',
  );
  account2.withdraw(5000);

  print('\n3. Withdrawing 300 USD from account ${account2.accountNumber}:');
  account2.withdraw(300);

  client.displayClientInfo();
}
