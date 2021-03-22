class RestaurantModel {
  String name;
  String location;
  String information;
  String imageAsset;
  String priceFood;
  String nameFood;
  String numStar;
  List<String> imageUrls;

  RestaurantModel(
      {this.name,
      this.location,
      this.information,
      this.imageAsset,
      this.nameFood,
      this.priceFood,
      this.numStar,
      this.imageUrls});
}
