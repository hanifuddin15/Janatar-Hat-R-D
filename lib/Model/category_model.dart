class Categories {
  int ?id;
  String? img, title;

  Categories({this.id, this.img, this.title});

}
List<Categories> categoryList = [
  Categories(img: 'assets/images/categories/kids1.png', title: 'Baby Kids'),
  Categories(
      img: 'assets/images/categories/electronics1.png', title: 'Electronics'),
  Categories(
      img: 'assets/images/categories/medichines1.png', title: 'Medicine'),
  Categories(img: 'assets/images/categories/grocery1.png', title: 'Grocery'),
  Categories(
      img: 'assets/images/categories/tailorfashion1.png', title: 'Tailor'),
  Categories(
      img: 'assets/images/categories/machinerics1.png', title: 'Machineries'),
  Categories(
      img: 'assets/images/categories/readymatedress1.png',
      title: 'Chemicals'),
  Categories(
      img: 'assets/images/categories/hardwaretools1.png', title: 'Tools'),
];
class TopProducts {
  String? img, title, price;

  TopProducts({this.img, this.title, this.price});

}

List<TopProducts> topProductList = [
  TopProducts(img: 'assets/images/topProducts/egg2.png',
  title: 'Egg',
  price: '5.00'),
  TopProducts(img: 'assets/images/topProducts/jhatpotchicken1.png',
      title: 'Jhotpot Chicken',
      price: '5.00'),
  TopProducts(img: 'assets/images/topProducts/perrier.png',
      title: 'Perrier',
      price: '5.00'),
];

