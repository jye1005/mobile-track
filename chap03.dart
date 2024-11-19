class Account {
  String name;
  String accountNumber;
  double balance;

  Account(this.name, this.accountNumber, this.balance);

  void deposit(double amount) {
    //수정
    balance -= amount;
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print('출금할 돈이 없습니다. 현재 잔액은 $balance 원입니다.');
    }
  }

  void checkBalance() {
    print('현재 잔액은 $balance 원입니다.');
  }
}

class MaxLimitAccount extends Account {
  double max;

  MaxLimitAccount(String name, String accountNumber, double balance, this.max)
      : super(name, accountNumber, balance);

  @override
  void deposit(double amount) {
    if (balance + amount > max) {
      print('입금할 수 없습니다. 최대 한도 $max 원을 초과합니다.');
    } else {
      super.deposit(amount);
    }
  }
}

void main() {
  var account = Account('John', '1234', 1000);
  account.deposit(500);
  account.withdraw(300);
  account.checkBalance();

  var maxAccount = MaxLimitAccount('Jane', '5678', 1500, 2000);
  maxAccount.deposit(600);
  maxAccount.withdraw(100);
  maxAccount.checkBalance();
}
