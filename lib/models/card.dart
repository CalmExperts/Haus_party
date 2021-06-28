class CardModel {
  String? cvcCheck;
  String? funding;
  String? object;

  String? country;
  String? brand;
  int? expMonth;

  String? id;
  String? customer;
  int? expYear;
  String? fingerprint;
  String? last4;
  CardModel({
    this.cvcCheck,
    this.funding,
    this.object,
    this.country,
    this.brand,
    this.expMonth,
    this.id,
    this.customer,
    this.expYear,
    this.fingerprint,
    this.last4,
  });

  CardModel.fromJson(Map<String, dynamic> json) {
    cvcCheck = json['cvc_check'];
    funding = json['funding'];
    object = json['object'];
    country = json['country'];
    brand = json['brand'];
    expMonth = json['exp_month'];

    id = json['id'];
    customer = json['customer'];

    expYear = json['exp_year'];
    fingerprint = json['fingerprint'];
    last4 = json['last4'];
  }
}
