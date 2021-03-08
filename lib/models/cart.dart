import 'package:project1/models/catalog.dart';

class CartModel {
  
  //catalog field
  CatalogModel _catalog;

  //collection of ids
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //getitems in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total Price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
