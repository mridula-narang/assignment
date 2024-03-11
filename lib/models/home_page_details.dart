
class HomePageDetails {
  int? status;
  Data? data;

  HomePageDetails({this.status, this.data});

  HomePageDetails.fromJson(Map<String, dynamic> json) {
    if(json["status"] is int) {
      status = json["status"];
    }
    if(json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  List<BannerOne>? bannerOne;
  List<Category>? category;
  List<Products>? products;
  List<BannerTwo>? bannerTwo;
  List<NewArrivals>? newArrivals;
  List<BannerThree>? bannerThree;
  List<CategoriesListing>? categoriesListing;
  List<TopBrands>? topBrands;
  List<BrandListing>? brandListing;
  List<TopSellingProducts>? topSellingProducts;
  List<FeaturedLaptop>? featuredLaptop;
  List<UpcomingLaptops>? upcomingLaptops;
  List<UnboxedDeals>? unboxedDeals;
  List<MyBrowsingHistory>? myBrowsingHistory;

  Data({this.bannerOne, this.category, this.products, this.bannerTwo, this.newArrivals, this.bannerThree, this.categoriesListing, this.topBrands, this.brandListing, this.topSellingProducts, this.featuredLaptop, this.upcomingLaptops, this.unboxedDeals, this.myBrowsingHistory});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["banner_one"] is List) {
      bannerOne = json["banner_one"] == null ? null : (json["banner_one"] as List).map((e) => BannerOne.fromJson(e)).toList();
    }
    if(json["category"] is List) {
      category = json["category"] == null ? null : (json["category"] as List).map((e) => Category.fromJson(e)).toList();
    }
    if(json["products"] is List) {
      products = json["products"] == null ? null : (json["products"] as List).map((e) => Products.fromJson(e)).toList();
    }
    if(json["banner_two"] is List) {
      bannerTwo = json["banner_two"] == null ? null : (json["banner_two"] as List).map((e) => BannerTwo.fromJson(e)).toList();
    }
    if(json["new_arrivals"] is List) {
      newArrivals = json["new_arrivals"] == null ? null : (json["new_arrivals"] as List).map((e) => NewArrivals.fromJson(e)).toList();
    }
    if(json["banner_three"] is List) {
      bannerThree = json["banner_three"] == null ? null : (json["banner_three"] as List).map((e) => BannerThree.fromJson(e)).toList();
    }
    if(json["categories_listing"] is List) {
      categoriesListing = json["categories_listing"] == null ? null : (json["categories_listing"] as List).map((e) => CategoriesListing.fromJson(e)).toList();
    }
    if(json["top_brands"] is List) {
      topBrands = json["top_brands"] == null ? null : (json["top_brands"] as List).map((e) => TopBrands.fromJson(e)).toList();
    }
    if(json["brand_listing"] is List) {
      brandListing = json["brand_listing"] == null ? null : (json["brand_listing"] as List).map((e) => BrandListing.fromJson(e)).toList();
    }
    if(json["top_selling_products"] is List) {
      topSellingProducts = json["top_selling_products"] == null ? null : (json["top_selling_products"] as List).map((e) => TopSellingProducts.fromJson(e)).toList();
    }
    if(json["featured_laptop"] is List) {
      featuredLaptop = json["featured_laptop"] == null ? null : (json["featured_laptop"] as List).map((e) => FeaturedLaptop.fromJson(e)).toList();
    }
    if(json["upcoming_laptops"] is List) {
      upcomingLaptops = json["upcoming_laptops"] == null ? null : (json["upcoming_laptops"] as List).map((e) => UpcomingLaptops.fromJson(e)).toList();
    }
    if(json["unboxed_deals"] is List) {
      unboxedDeals = json["unboxed_deals"] == null ? null : (json["unboxed_deals"] as List).map((e) => UnboxedDeals.fromJson(e)).toList();
    }
    if(json["my_browsing_history"] is List) {
      myBrowsingHistory = json["my_browsing_history"] == null ? null : (json["my_browsing_history"] as List).map((e) => MyBrowsingHistory.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(bannerOne != null) {
      _data["banner_one"] = bannerOne?.map((e) => e.toJson()).toList();
    }
    if(category != null) {
      _data["category"] = category?.map((e) => e.toJson()).toList();
    }
    if(products != null) {
      _data["products"] = products?.map((e) => e.toJson()).toList();
    }
    if(bannerTwo != null) {
      _data["banner_two"] = bannerTwo?.map((e) => e.toJson()).toList();
    }
    if(newArrivals != null) {
      _data["new_arrivals"] = newArrivals?.map((e) => e.toJson()).toList();
    }
    if(bannerThree != null) {
      _data["banner_three"] = bannerThree?.map((e) => e.toJson()).toList();
    }
    if(categoriesListing != null) {
      _data["categories_listing"] = categoriesListing?.map((e) => e.toJson()).toList();
    }
    if(topBrands != null) {
      _data["top_brands"] = topBrands?.map((e) => e.toJson()).toList();
    }
    if(brandListing != null) {
      _data["brand_listing"] = brandListing?.map((e) => e.toJson()).toList();
    }
    if(topSellingProducts != null) {
      _data["top_selling_products"] = topSellingProducts?.map((e) => e.toJson()).toList();
    }
    if(featuredLaptop != null) {
      _data["featured_laptop"] = featuredLaptop?.map((e) => e.toJson()).toList();
    }
    if(upcomingLaptops != null) {
      _data["upcoming_laptops"] = upcomingLaptops?.map((e) => e.toJson()).toList();
    }
    if(unboxedDeals != null) {
      _data["unboxed_deals"] = unboxedDeals?.map((e) => e.toJson()).toList();
    }
    if(myBrowsingHistory != null) {
      _data["my_browsing_history"] = myBrowsingHistory?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class MyBrowsingHistory {
  String? icon;
  String? offer;
  String? brandIcon;
  String? label;

  MyBrowsingHistory({this.icon, this.offer, this.brandIcon, this.label});

  MyBrowsingHistory.fromJson(Map<String, dynamic> json) {
    if(json["icon"] is String) {
      icon = json["icon"];
    }
    if(json["offer"] is String) {
      offer = json["offer"];
    }
    if(json["brandIcon"] is String) {
      brandIcon = json["brandIcon"];
    }
    if(json["label"] is String) {
      label = json["label"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    _data["offer"] = offer;
    _data["brandIcon"] = brandIcon;
    _data["label"] = label;
    return _data;
  }
}

class UnboxedDeals {
  String? icon;
  String? offer;
  String? label;

  UnboxedDeals({this.icon, this.offer, this.label});

  UnboxedDeals.fromJson(Map<String, dynamic> json) {
    if(json["icon"] is String) {
      icon = json["icon"];
    }
    if(json["offer"] is String) {
      offer = json["offer"];
    }
    if(json["label"] is String) {
      label = json["label"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    _data["offer"] = offer;
    _data["label"] = label;
    return _data;
  }
}

class UpcomingLaptops {
  String? icon;

  UpcomingLaptops({this.icon});

  UpcomingLaptops.fromJson(Map<String, dynamic> json) {
    if(json["icon"] is String) {
      icon = json["icon"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    return _data;
  }
}

class FeaturedLaptop {
  String? icon;
  String? brandIcon;
  String? label;
  String? price;

  FeaturedLaptop({this.icon, this.brandIcon, this.label, this.price});

  FeaturedLaptop.fromJson(Map<String, dynamic> json) {
    if(json["icon"] is String) {
      icon = json["icon"];
    }
    if(json["brandIcon"] is String) {
      brandIcon = json["brandIcon"];
    }
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["price"] is String) {
      price = json["price"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    _data["brandIcon"] = brandIcon;
    _data["label"] = label;
    _data["price"] = price;
    return _data;
  }
}

class TopSellingProducts {
  String? icon;
  String? label;

  TopSellingProducts({this.icon, this.label});

  TopSellingProducts.fromJson(Map<String, dynamic> json) {
    if(json["icon"] is String) {
      icon = json["icon"];
    }
    if(json["label"] is String) {
      label = json["label"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    _data["label"] = label;
    return _data;
  }
}

class BrandListing {
  String? icon;
  String? offer;
  String? brandIcon;
  String? label;

  BrandListing({this.icon, this.offer, this.brandIcon, this.label});

  BrandListing.fromJson(Map<String, dynamic> json) {
    if(json["icon"] is String) {
      icon = json["icon"];
    }
    if(json["offer"] is String) {
      offer = json["offer"];
    }
    if(json["brandIcon"] is String) {
      brandIcon = json["brandIcon"];
    }
    if(json["label"] is String) {
      label = json["label"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    _data["offer"] = offer;
    _data["brandIcon"] = brandIcon;
    _data["label"] = label;
    return _data;
  }
}

class TopBrands {
  String? icon;

  TopBrands({this.icon});

  TopBrands.fromJson(Map<String, dynamic> json) {
    if(json["icon"] is String) {
      icon = json["icon"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    return _data;
  }
}

class CategoriesListing {
  String? icon;
  String? offer;
  String? label;

  CategoriesListing({this.icon, this.offer, this.label});

  CategoriesListing.fromJson(Map<String, dynamic> json) {
    if(json["icon"] is String) {
      icon = json["icon"];
    }
    if(json["offer"] is String) {
      offer = json["offer"];
    }
    if(json["label"] is String) {
      label = json["label"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    _data["offer"] = offer;
    _data["label"] = label;
    return _data;
  }
}

class BannerThree {
  String? banner;

  BannerThree({this.banner});

  BannerThree.fromJson(Map<String, dynamic> json) {
    if(json["banner"] is String) {
      banner = json["banner"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["banner"] = banner;
    return _data;
  }
}

class NewArrivals {
  String? icon;
  String? offer;
  String? brandIcon;
  String? label;

  NewArrivals({this.icon, this.offer, this.brandIcon, this.label});

  NewArrivals.fromJson(Map<String, dynamic> json) {
    if(json["icon"] is String) {
      icon = json["icon"];
    }
    if(json["offer"] is String) {
      offer = json["offer"];
    }
    if(json["brandIcon"] is String) {
      brandIcon = json["brandIcon"];
    }
    if(json["label"] is String) {
      label = json["label"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    _data["offer"] = offer;
    _data["brandIcon"] = brandIcon;
    _data["label"] = label;
    return _data;
  }
}

class BannerTwo {
  String? banner;

  BannerTwo({this.banner});

  BannerTwo.fromJson(Map<String, dynamic> json) {
    if(json["banner"] is String) {
      banner = json["banner"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["banner"] = banner;
    return _data;
  }
}

class Products {
  String? icon;
  String? offer;
  String? label;
  String? subLabel;

  Products({this.icon, this.offer, this.label, this.subLabel});

  Products.fromJson(Map<String, dynamic> json) {
    if(json["icon"] is String) {
      icon = json["icon"];
    }
    if(json["offer"] is String) {
      offer = json["offer"];
    }
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["SubLabel"] is String) {
      subLabel = json["SubLabel"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    _data["offer"] = offer;
    _data["label"] = label;
    _data["SubLabel"] = subLabel;
    return _data;
  }
}

class Category {
  String? label;
  String? icon;

  Category({this.label, this.icon});

  Category.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["icon"] is String) {
      icon = json["icon"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["icon"] = icon;
    return _data;
  }
}

class BannerOne {
  String? banner;

  BannerOne({this.banner});

  BannerOne.fromJson(Map<String, dynamic> json) {
    if(json["banner"] is String) {
      banner = json["banner"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["banner"] = banner;
    return _data;
  }
}