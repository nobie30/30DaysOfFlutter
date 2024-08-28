class CatalogModel {
  static final items = [
    Item(
        id: 001,
        name: "Lenovo Thinkpad",
        desc: "i5 8th generation",
        price: 49000,
        color: "#33505a",
        image:
            "https://p4-ofp.static.pub//fes/cms/2024/04/01/8w1vgn0kvd1l0cvykxqsc2is12fz80519230.png")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
