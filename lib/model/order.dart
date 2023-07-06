
class Order{
  int orderNo;
  int quantity;
  List products;
  String status;
  List variants;

  Order({
    this.orderNo,
    this.quantity,
    this.products,
    this.status,
    this.variants
  });
}

class OrderDraft{
  int qty;
  String status;
  bool isSaved;
  bool isWished;

  OrderDraft({
    this.qty,
    this.status,
    this.isSaved,
    this.isWished
  });
}