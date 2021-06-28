class EventModel {
  String? title;
  String? description;
  String? location;
  Address? address;
  dynamic date;
  dynamic time;
  String? hostedby;
  List<String>? images;
  String? dressCode;
  int? price;
  int? maxAttendees;
  List<String>? attendees;
  List<String>? updates;

  EventModel(
      {this.title,
      this.description,
      this.location,
      this.address,
      this.date,
      this.time,
      this.images,
      this.dressCode,
      this.price,
      this.maxAttendees,
      this.attendees,
      this.updates});

  EventModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    location = json['location'];
    address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
    date = json['date'];
    time = json['time'];
    if (images != null) {
      images = json['images'].cast<String>();
    }
    dressCode = json['dressCode'];
    price = json['price'];
    maxAttendees = json['maxAttendees'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['location'] = this.location;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    data['date'] = this.date;
    data['time'] = this.time;
    data['images'] = this.images;
    data['dressCode'] = this.dressCode;
    data['price'] = this.price;
    data['maxAttendees'] = this.maxAttendees;

    return data;
  }
}

class Address {
  String? address;
  String? city;
  String? country;

  Address({this.address, this.city, this.country});

  Address.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['city'] = this.city;
    data['country'] = this.country;
    return data;
  }
}
