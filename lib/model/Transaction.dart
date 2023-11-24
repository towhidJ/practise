class Transaction {
  int id = 0;
  late String imageUrl;
  String? name;
  String? accNumber;
  double charge;
  String transactionID;
  double amount;
  String type;
  String transName;
  String reference;
  Transaction(this.id, this.imageUrl, this.transName, this.name, this.accNumber,
      this.charge, this.transactionID, this.amount, this.type, this.reference);
}

List transactionList = [
  Transaction(
      1,
      "assets/icons/qr-code.png",
      "Dhaka Wasa Bill",
      "Towhidul Islam",
      "0191120000000",
      0.0,
      "26745646466",
      1200,
      "IN",
      "2345"),
  Transaction(
      1,
      "assets/icons/qr-code.png",
      "Dhaka Wasa Bill",
      "Towhidul Islam",
      "0191120000000",
      6.50,
      "26745646466",
      500,
      "OUT",
      "AIBL2029T"),
  Transaction(1, "assets/icons/qr-code.png", "Dhaka Wasa Bill", "",
      "0191120000000", 0.0, "26745646466", 100, "OUT", "WASA678"),
  Transaction(
      1,
      "assets/icons/qr-code.png",
      "Dhaka Wasa Bill",
      "Towhidul Islam",
      "0191120000000",
      10.0,
      "26745646466",
      78.50,
      "OUT",
      "BPDB1211"),
];
