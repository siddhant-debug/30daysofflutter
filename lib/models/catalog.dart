class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 pro max",
      desc: "Apple iphone 12th geneartion",
      price: 100000,
      color: "#33505a",
      image:
          "https://www.reliancedigital.in/medias/Apple-12-Pro-Max-Smartphones-491901577-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wxMjU2NDd8aW1hZ2UvanBlZ3xpbWFnZXMvaDU4L2gyZi85NDA3ODUyMjE2MzUwLmpwZ3wxNDJlY2YyMmM4ZWQxYmVkN2ZjZTRmY2U3MjMwMjI0MTJmN2MzYjcyODI5MzU1ODVjM2I2MmE1ZWQyYTlmMDVh",

    ),
    Item(
      id:2,
      name:"Macbook pro 512 GB",
      desc: "Macbook pro 8 gb ram 512gb ssd",
      price: 150000,
      color: "#212121",
      image: "https://rukminim1.flixcart.com/image/312/312/khdqnbk0/computer/e/6/n/apple-original-imafxfyq4agsgysn.jpeg?q=70",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
  
}




