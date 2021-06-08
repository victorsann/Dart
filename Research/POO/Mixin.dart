abstract class Cash {
  balance();
}

class Bank extends Cash {
  @override
  balance() {
    print('Cash');
  }
}

mixin Score {
  void credit() {
    print('Credit');
  }
}

class PremiumCustomer extends Bank with Score {}

class CommonCustomer extends Bank {}

void main() {
  print('\nO Cliente Premium tem: \n');
  PremiumCustomer premium = new PremiumCustomer();
  premium.balance();
  premium.credit();
  print('\nO Cliente Common tem: \n');
  CommonCustomer common = new CommonCustomer();
  common.balance();
}
