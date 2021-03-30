// To parse this JSON data, do
//
//     final eventsNearbyModel = eventsNearbyModelFromJson(jsonString);

import 'dart:convert';

EventsNearbyModel eventsNearbyModelFromJson(String str) => EventsNearbyModel.fromJson(json.decode(str));

String eventsNearbyModelToJson(EventsNearbyModel data) => json.encode(data.toJson());

class EventsNearbyModel {
  EventsNearbyModel({
    this.statusCode,
    this.message,
    this.data,
  });

  int statusCode;
  String message;
  List<Datum> data;

  factory EventsNearbyModel.fromJson(Map<String, dynamic> json) => EventsNearbyModel(
    statusCode: json["status_code"] == null ? null : json["status_code"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status_code": statusCode == null ? null : statusCode,
    "message": message == null ? null : message,
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.id,
    this.organizerId,
    this.artistId,
    this.orderId,
    this.eventDate,
    this.cityId,
    this.countryId,
    this.zip,
    this.location,
    this.visibility,
    this.type,
    this.currency,
    this.taxRate,
    this.taxType,
    this.baseAmount,
    this.taxAmt,
    this.discount,
    this.finalAmount,
    this.streamingUrl,
    this.videoUrl,
    this.deletedAt,
    this.lat,
    this.long,
    this.distance,
    this.organizer,
    this.langs,
    this.eventType,
    this.package,
    this.eventOrganizerUserProfile,
    this.eventCheckinsers,
  });

  int id;
  int organizerId;
  dynamic artistId;
  String orderId;
  int eventDate;
  String cityId;
  String countryId;
  String zip;
  Location location;
  String visibility;
  int type;
  String currency;
  int taxRate;
  String taxType;
  int baseAmount;
  int taxAmt;
  int discount;
  int finalAmount;
  dynamic streamingUrl;
  dynamic videoUrl;
  dynamic deletedAt;
  String lat;
  String long;
  int distance;
  List<EventOrganizerUserProfile> organizer;
  DatumLangs langs;
  EventType eventType;
  Package package;
  List<EventOrganizerUserProfile> eventOrganizerUserProfile;
  List<EventCheckinser> eventCheckinsers;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"] == null ? null : json["id"],
    organizerId: json["organizer_id"] == null ? null : json["organizer_id"],
    artistId: json["artist_id"],
    orderId: json["order_id"] == null ? null : json["order_id"],
    eventDate: json["event_date"] == null ? null : json["event_date"],
    cityId: json["city_id"] == null ? null : json["city_id"],
    countryId: json["country_id"] == null ? null : json["country_id"],
    zip: json["zip"] == null ? null : json["zip"],
    location: json["location"] == null ? null : Location.fromJson(json["location"]),
    visibility: json["visibility"] == null ? null : json["visibility"],
    type: json["type"] == null ? null : json["type"],
    currency: json["currency"] == null ? null : json["currency"],
    taxRate: json["tax_rate"] == null ? null : json["tax_rate"],
    taxType: json["tax_type"] == null ? null : json["tax_type"],
    baseAmount: json["base_amount"] == null ? null : json["base_amount"],
    taxAmt: json["tax_amt"] == null ? null : json["tax_amt"],
    discount: json["discount"] == null ? null : json["discount"],
    finalAmount: json["final_amount"] == null ? null : json["final_amount"],
    streamingUrl: json["streaming_url"],
    videoUrl: json["video_url"],
    deletedAt: json["deleted_at"],
    lat: json["lat"] == null ? null : json["lat"],
    long: json["long"] == null ? null : json["long"],
    distance: json["distance"] == null ? null : json["distance"],
    organizer: json["organizer"] == null ? null : List<EventOrganizerUserProfile>.from(json["organizer"].map((x) => EventOrganizerUserProfile.fromJson(x))),
    langs: json["langs"] == null ? null : DatumLangs.fromJson(json["langs"]),
    eventType: json["event_type"] == null ? null : EventType.fromJson(json["event_type"]),
    package: json["package"] == null ? null : Package.fromJson(json["package"]),
    eventOrganizerUserProfile: json["event_organizer_user_profile"] == null ? null : List<EventOrganizerUserProfile>.from(json["event_organizer_user_profile"].map((x) => EventOrganizerUserProfile.fromJson(x))),
    eventCheckinsers: json["event_checkinsers"] == null ? null : List<EventCheckinser>.from(json["event_checkinsers"].map((x) => EventCheckinser.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "organizer_id": organizerId == null ? null : organizerId,
    "artist_id": artistId,
    "order_id": orderId == null ? null : orderId,
    "event_date": eventDate == null ? null : eventDate,
    "city_id": cityId == null ? null : cityId,
    "country_id": countryId == null ? null : countryId,
    "zip": zip == null ? null : zip,
    "location": location == null ? null : location.toJson(),
    "visibility": visibility == null ? null : visibility,
    "type": type == null ? null : type,
    "currency": currency == null ? null : currency,
    "tax_rate": taxRate == null ? null : taxRate,
    "tax_type": taxType == null ? null : taxType,
    "base_amount": baseAmount == null ? null : baseAmount,
    "tax_amt": taxAmt == null ? null : taxAmt,
    "discount": discount == null ? null : discount,
    "final_amount": finalAmount == null ? null : finalAmount,
    "streaming_url": streamingUrl,
    "video_url": videoUrl,
    "deleted_at": deletedAt,
    "lat": lat == null ? null : lat,
    "long": long == null ? null : long,
    "distance": distance == null ? null : distance,
    "organizer": organizer == null ? null : List<dynamic>.from(organizer.map((x) => x.toJson())),
    "langs": langs == null ? null : langs.toJson(),
    "event_type": eventType == null ? null : eventType.toJson(),
    "package": package == null ? null : package.toJson(),
    "event_organizer_user_profile": eventOrganizerUserProfile == null ? null : List<dynamic>.from(eventOrganizerUserProfile.map((x) => x.toJson())),
    "event_checkinsers": eventCheckinsers == null ? null : List<dynamic>.from(eventCheckinsers.map((x) => x.toJson())),
  };
}

class EventCheckinser {
  EventCheckinser({
    this.id,
    this.userId,
    this.eventId,
    this.checkIn,
    this.updatedAt,
    this.createdAt,
    this.checkInuser,
  });

  int id;
  int userId;
  int eventId;
  int checkIn;
  DateTime updatedAt;
  DateTime createdAt;
  User checkInuser;

  factory EventCheckinser.fromJson(Map<String, dynamic> json) => EventCheckinser(
    id: json["id"] == null ? null : json["id"],
    userId: json["user_id"] == null ? null : json["user_id"],
    eventId: json["event_id"] == null ? null : json["event_id"],
    checkIn: json["check_in"] == null ? null : json["check_in"],
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    checkInuser: json["check_inuser"] == null ? null : User.fromJson(json["check_inuser"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "user_id": userId == null ? null : userId,
    "event_id": eventId == null ? null : eventId,
    "check_in": checkIn == null ? null : checkIn,
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "check_inuser": checkInuser == null ? null : checkInuser.toJson(),
  };
}

class User {
  User({
    this.id,
    this.gender,
    this.email,
    this.phone,
    this.mobile,
    this.type,
    this.status,
    this.deviceId,
    this.deviceType,
    this.pushNotificationId,
    this.clientType,
    this.icon,
    this.thumb,
    this.banner,
    this.lang,
    this.isLogin,
  });

  int id;
  String gender;
  String email;
  dynamic phone;
  String mobile;
  String type;
  String status;
  dynamic deviceId;
  String deviceType;
  String pushNotificationId;
  String clientType;
  String icon;
  String thumb;
  String banner;
  String lang;
  int isLogin;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"] == null ? null : json["id"],
    gender: json["gender"] == null ? null : json["gender"],
    email: json["email"] == null ? null : json["email"],
    phone: json["phone"],
    mobile: json["mobile"] == null ? null : json["mobile"],
    type: json["type"] == null ? null : json["type"],
    status: json["status"] == null ? null : json["status"],
    deviceId: json["device_id"],
    deviceType: json["device_type"] == null ? null : json["device_type"],
    pushNotificationId: json["push_notification_id"] == null ? null : json["push_notification_id"],
    clientType: json["client_type"] == null ? null : json["client_type"],
    icon: json["icon"] == null ? null : json["icon"],
    thumb: json["thumb"] == null ? null : json["thumb"],
    banner: json["banner"] == null ? null : json["banner"],
    lang: json["lang"] == null ? null : json["lang"],
    isLogin: json["is_login"] == null ? null : json["is_login"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "gender": gender == null ? null : gender,
    "email": email == null ? null : email,
    "phone": phone,
    "mobile": mobile == null ? null : mobile,
    "type": type == null ? null : type,
    "status": status == null ? null : status,
    "device_id": deviceId,
    "device_type": deviceType == null ? null : deviceType,
    "push_notification_id": pushNotificationId == null ? null : pushNotificationId,
    "client_type": clientType == null ? null : clientType,
    "icon": icon == null ? null : icon,
    "thumb": thumb == null ? null : thumb,
    "banner": banner == null ? null : banner,
    "lang": lang == null ? null : lang,
    "is_login": isLogin == null ? null : isLogin,
  };
}

class EventOrganizerUserProfile {
  EventOrganizerUserProfile({
    this.userId,
    this.langId,
    this.name,
    this.representative,
    this.about,
    this.user,
  });

  int userId;
  int langId;
  String name;
  dynamic representative;
  String about;
  User user;

  factory EventOrganizerUserProfile.fromJson(Map<String, dynamic> json) => EventOrganizerUserProfile(
    userId: json["user_id"] == null ? null : json["user_id"],
    langId: json["lang_id"] == null ? null : json["lang_id"],
    name: json["name"] == null ? null : json["name"],
    representative: json["representative"],
    about: json["about"] == null ? null : json["about"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId == null ? null : userId,
    "lang_id": langId == null ? null : langId,
    "name": name == null ? null : name,
    "representative": representative,
    "about": about == null ? null : about,
    "user": user == null ? null : user.toJson(),
  };
}

class EventType {
  EventType({
    this.en,
    this.ar,
  });

  EventTypeAr en;
  EventTypeAr ar;

  factory EventType.fromJson(Map<String, dynamic> json) => EventType(
    en: json["en"] == null ? null : EventTypeAr.fromJson(json["en"]),
    ar: json["ar"] == null ? null : EventTypeAr.fromJson(json["ar"]),
  );

  Map<String, dynamic> toJson() => {
    "en": en == null ? null : en.toJson(),
    "ar": ar == null ? null : ar.toJson(),
  };
}

class EventTypeAr {
  EventTypeAr({
    this.eventTypeId,
    this.langId,
    this.title,
  });

  int eventTypeId;
  int langId;
  String title;

  factory EventTypeAr.fromJson(Map<String, dynamic> json) => EventTypeAr(
    eventTypeId: json["event_type_id"] == null ? null : json["event_type_id"],
    langId: json["lang_id"] == null ? null : json["lang_id"],
    title: json["title"] == null ? null : json["title"],
  );

  Map<String, dynamic> toJson() => {
    "event_type_id": eventTypeId == null ? null : eventTypeId,
    "lang_id": langId == null ? null : langId,
    "title": title == null ? null : title,
  };
}

class DatumLangs {
  DatumLangs({
    this.en,
  });

  En en;

  factory DatumLangs.fromJson(Map<String, dynamic> json) => DatumLangs(
    en: json["en"] == null ? null : En.fromJson(json["en"]),
  );

  Map<String, dynamic> toJson() => {
    "en": en == null ? null : en.toJson(),
  };
}

class En {
  En({
    this.eventId,
    this.langId,
    this.title,
    this.description,
    this.address,
    this.phone,
    this.radius,
    this.image,
  });

  dynamic eventId;
  int langId;
  String title;
  String description;
  String address;
  dynamic phone;
  String radius;
  String image;

  factory En.fromJson(Map<String, dynamic> json) => En(
    eventId: json["event_id"],
    langId: json["lang_id"] == null ? null : json["lang_id"],
    title: json["title"] == null ? null : json["title"],
    description: json["description"] == null ? null : json["description"],
    address: json["address"] == null ? null : json["address"],
    phone: json["phone"],
    radius: json["radius"] == null ? null : json["radius"],
    image: json["image"] == null ? null : json["image"],
  );

  Map<String, dynamic> toJson() => {
    "event_id": eventId,
    "lang_id": langId == null ? null : langId,
    "title": title == null ? null : title,
    "description": description == null ? null : description,
    "address": address == null ? null : address,
    "phone": phone,
    "radius": radius == null ? null : radius,
    "image": image == null ? null : image,
  };
}

class Location {
  Location({
    this.lat,
    this.lng,
  });

  String lat;
  String lng;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    lat: json["lat"] == null ? null : json["lat"],
    lng: json["lng"] == null ? null : json["lng"],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat == null ? null : lat,
    "lng": lng == null ? null : lng,
  };
}

class Package {
  Package({
    this.id,
    this.userId,
    this.eventId,
    this.packageId,
    this.originalPrice,
    this.discountedPrice,
    this.currency,
    this.startDate,
    this.endDate,
    this.cats,
    this.days,
    this.type,
    this.numOfAudience,
    this.duration,
    this.banner,
    this.createdBy,
    this.langs,
  });

  int id;
  int userId;
  int eventId;
  int packageId;
  int originalPrice;
  int discountedPrice;
  String currency;
  int startDate;
  int endDate;
  List<int> cats;
  List<int> days;
  String type;
  dynamic numOfAudience;
  dynamic duration;
  dynamic banner;
  int createdBy;
  PackageLangs langs;

  factory Package.fromJson(Map<String, dynamic> json) => Package(
    id: json["id"] == null ? null : json["id"],
    userId: json["user_id"] == null ? null : json["user_id"],
    eventId: json["event_id"] == null ? null : json["event_id"],
    packageId: json["package_id"] == null ? null : json["package_id"],
    originalPrice: json["original_price"] == null ? null : json["original_price"],
    discountedPrice: json["discounted_price"] == null ? null : json["discounted_price"],
    currency: json["currency"] == null ? null : json["currency"],
    startDate: json["start_date"] == null ? null : json["start_date"],
    endDate: json["end_date"] == null ? null : json["end_date"],
    cats: json["cats"] == null ? null : List<int>.from(json["cats"].map((x) => x)),
    days: json["days"] == null ? null : List<int>.from(json["days"].map((x) => x)),
    type: json["type"] == null ? null : json["type"],
    numOfAudience: json["num_of_audience"],
    duration: json["duration"],
    banner: json["banner"],
    createdBy: json["created_by"] == null ? null : json["created_by"],
    langs: json["langs"] == null ? null : PackageLangs.fromJson(json["langs"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "user_id": userId == null ? null : userId,
    "event_id": eventId == null ? null : eventId,
    "package_id": packageId == null ? null : packageId,
    "original_price": originalPrice == null ? null : originalPrice,
    "discounted_price": discountedPrice == null ? null : discountedPrice,
    "currency": currency == null ? null : currency,
    "start_date": startDate == null ? null : startDate,
    "end_date": endDate == null ? null : endDate,
    "cats": cats == null ? null : List<dynamic>.from(cats.map((x) => x)),
    "days": days == null ? null : List<dynamic>.from(days.map((x) => x)),
    "type": type == null ? null : type,
    "num_of_audience": numOfAudience,
    "duration": duration,
    "banner": banner,
    "created_by": createdBy == null ? null : createdBy,
    "langs": langs == null ? null : langs.toJson(),
  };
}

class PackageLangs {
  PackageLangs({
    this.en,
    this.ar,
  });

  LangsAr en;
  LangsAr ar;

  factory PackageLangs.fromJson(Map<String, dynamic> json) => PackageLangs(
    en: json["en"] == null ? null : LangsAr.fromJson(json["en"]),
    ar: json["ar"] == null ? null : LangsAr.fromJson(json["ar"]),
  );

  Map<String, dynamic> toJson() => {
    "en": en == null ? null : en.toJson(),
    "ar": ar == null ? null : ar.toJson(),
  };
}

class LangsAr {
  LangsAr({
    this.eventPackageId,
    this.langId,
    this.title,
    this.description,
  });

  int eventPackageId;
  int langId;
  String title;
  String description;

  factory LangsAr.fromJson(Map<String, dynamic> json) => LangsAr(
    eventPackageId: json["event_package_id"] == null ? null : json["event_package_id"],
    langId: json["lang_id"] == null ? null : json["lang_id"],
    title: json["title"] == null ? null : json["title"],
    description: json["description"] == null ? null : json["description"],
  );

  Map<String, dynamic> toJson() => {
    "event_package_id": eventPackageId == null ? null : eventPackageId,
    "lang_id": langId == null ? null : langId,
    "title": title == null ? null : title,
    "description": description == null ? null : description,
  };
}
