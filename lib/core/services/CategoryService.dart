

import '../model/Category.dart';

class CategoryService {
  static List<Category> categoryData = categoryRawData.map((data) => Category.fromJson(data)).toList();
}

var categoryRawData = [
  {
    'featured': true,
    'icon_url': 'assets/icons/Discount.svg',
    'name': 'meilleur offre',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/High-heels.svg',
    'name': 'T-shirt',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/Woman-dress.svg',
    'name': 'robe',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/Man-Clothes.svg',
    'name': 'habit homme',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/Man-Pants.svg',
    'name': 'pantalon',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/Man-Shoes.svg',
    'name': 'shoes',
  },
];
