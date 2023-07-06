class Transaction{
  int refNo;
  String payMethod;
  int paidAmt;
  int tranAmt;
  DateTime tranDate;
  String currency;
  String status;

  Transaction({
    this.refNo,
    this.payMethod,
    this.paidAmt,
    this.tranAmt,
    this.tranDate,
    this.currency,
    this.status
  });
}