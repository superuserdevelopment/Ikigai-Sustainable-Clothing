class Item {
  String _itemID = "";
  String _itemName = "";
  String _itemImageURL = "";
  int _itemCategory = -1;
  double _itemPrice = 0.0;

  Item(String itemID, String itemName, String itemImageURL, int itemCategory,
      double itemPrice) {
    _itemID = itemID;
    _itemName = itemName;
    _itemImageURL = itemImageURL;
    _itemCategory = (itemCategory >= 0 && itemCategory < 3) ? itemCategory : -1;
    _itemPrice = itemPrice;
  }

  String getItemID() {
    return _itemID;
  }

  String getName() {
    return _itemName;
  }

  String getItemImageURL() {
    return _itemImageURL;
  }

  int getItemCategory() {
    return _itemCategory;
  }

  double getItemPrice() {
    return _itemPrice;
  }
}
