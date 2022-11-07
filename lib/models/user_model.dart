// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.error,
    this.message,
    this.data,
  });

  bool? error;
  String? message;
  Data? data;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    error: json["error"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "message": message,
    "data": data!.toJson(),
  };
}

class Company {
  Company({
    this.id,
    this.oldId,
    this.identifier,
    this.refNumber,
    this.name,
    this.slug,
    this.email,
    this.aboutUs,
    this.natureOfBusiness,
    this.numberOfEmployees,
    this.yearOfEstablishment,
    this.entityId,
    this.addedBy,
    this.previouslyAddedBy,
    this.referralSourceId,
    this.isActive,
    this.verified,
    this.verifiedBy,
    this.verifiedAt,
    this.promoCode,
    this.seoTitle,
    this.seoDescription,
    this.seoText,
    this.createdAt,
    this.updatedAt,
    this.shopActivatedAt,
    this.shopDeactivatedAt,
    this.shopRevokedAt,
    this.shopReactivatedAt,
    this.shopStatus,
    this.companyAdmin,
    this.pivot,
  });

  int? id;
  int? oldId;
  String? identifier;
  String? refNumber;
  String? name;
  String? slug;
  String? email;
  String? aboutUs;
  String? natureOfBusiness;
  int? numberOfEmployees;
  int? yearOfEstablishment;
  int? entityId;
  int? addedBy;
  dynamic previouslyAddedBy;
  int? referralSourceId;
  int? isActive;
  int? verified;
  dynamic verifiedBy;
  dynamic verifiedAt;
  dynamic promoCode;
  dynamic seoTitle;
  dynamic seoDescription;
  dynamic seoText;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic shopActivatedAt;
  dynamic shopDeactivatedAt;
  dynamic shopRevokedAt;
  dynamic shopReactivatedAt;
  int? shopStatus;
  Data? companyAdmin;
  DataPivot? pivot;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    id: json["id"],
    oldId: json["old_id"],
    identifier: json["identifier"],
    refNumber: json["ref_number"],
    name: json["name"],
    slug: json["slug"],
    email: json["email"],
    aboutUs: json["about_us"],
    natureOfBusiness: json["nature_of_business"],
    numberOfEmployees: json["number_of_employees"],
    yearOfEstablishment: json["year_of_establishment"],
    entityId: json["entity_id"],
    addedBy: json["added_by"],
    previouslyAddedBy: json["previously_added_by"],
    referralSourceId: json["referral_source_id"],
    isActive: json["is_active"],
    verified: json["verified"],
    verifiedBy: json["verified_by"],
    verifiedAt: json["verified_at"],
    promoCode: json["promo_code"],
    seoTitle: json["seo_title"],
    seoDescription: json["seo_description"],
    seoText: json["seo_text"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    shopActivatedAt: json["shop_activated_at"],
    shopDeactivatedAt: json["shop_deactivated_at"],
    shopRevokedAt: json["shop_revoked_at"],
    shopReactivatedAt: json["shop_reactivated_at"],
    shopStatus: json["shop_status"],
    companyAdmin: Data.fromJson(json["company_admin"]),
    pivot: DataPivot.fromJson(json["pivot"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "old_id": oldId,
    "identifier": identifier,
    "ref_number": refNumber,
    "name": name,
    "slug": slug,
    "email": email,
    "about_us": aboutUs,
    "nature_of_business": natureOfBusiness,
    "number_of_employees": numberOfEmployees,
    "year_of_establishment": yearOfEstablishment,
    "entity_id": entityId,
    "added_by": addedBy,
    "previously_added_by": previouslyAddedBy,
    "referral_source_id": referralSourceId,
    "is_active": isActive,
    "verified": verified,
    "verified_by": verifiedBy,
    "verified_at": verifiedAt,
    "promo_code": promoCode,
    "seo_title": seoTitle,
    "seo_description": seoDescription,
    "seo_text": seoText,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "shop_activated_at": shopActivatedAt,
    "shop_deactivated_at": shopDeactivatedAt,
    "shop_revoked_at": shopRevokedAt,
    "shop_reactivated_at": shopReactivatedAt,
    "shop_status": shopStatus,
    "company_admin": companyAdmin!.toJson(),
    "pivot": pivot!.toJson(),
  };
}

class Data {
  Data({
    this.id,
    this.oldId,
    this.identifier,
    this.firstname,
    this.lastname,
    this.email,
    this.phoneNumber,
    this.altPhoneNumber,
    this.username,
    this.emailVerifiedAt,
    this.avatar,
    this.verified,
    this.active,
    this.addedBy,
    this.countryId,
    this.createdAt,
    this.updatedAt,
    this.currentSelectedCompanyUserRoleId,
    this.currentSelectedCompanyId,
    this.googleId,
    this.phoneNumberVerifiedAt,
    this.otp,
    this.otpExpiresAt,
    this.deletedAt,
    this.emailOtp,
    this.emailOtpExpiresAt,
    this.reason,
    this.region,
    this.areaName,
    this.deliveryType,
    this.myRoles,
    this.shippingAddress,
    this.billingAddress,
    this.companies,
    this.roles,
    this.pivot,
  });

  int? id;
  int? oldId;
  String? identifier;
  String? firstname;
  String? lastname;
  String? email;
  String? phoneNumber;
  String? altPhoneNumber;
  String? username;
  DateTime? emailVerifiedAt;
  String? avatar;
  int? verified;
  int? active;
  int? addedBy;
  int? countryId;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? currentSelectedCompanyUserRoleId;
  int? currentSelectedCompanyId;
  dynamic googleId;
  DateTime? phoneNumberVerifiedAt;
  dynamic otp;
  dynamic otpExpiresAt;
  dynamic deletedAt;
  dynamic emailOtp;
  dynamic emailOtpExpiresAt;
  dynamic reason;
  dynamic region;
  dynamic areaName;
  dynamic deliveryType;
  List<Role>? myRoles;
  List<ShippingAddress>? shippingAddress;
  List<BillingAddress>? billingAddress;
  List<Company>? companies;
  List<Role>? roles;
  DataPivot? pivot;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    oldId: json["old_id"],
    identifier: json["identifier"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    email: json["email"],
    phoneNumber: json["phone_number"],
    altPhoneNumber: json["alt_phone_number"],
    username: json["username"],
    emailVerifiedAt: DateTime.parse(json["email_verified_at"]),
    avatar: json["avatar"],
    verified: json["verified"],
    active: json["active"],
    addedBy: json["added_by"],
    countryId: json["country_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    currentSelectedCompanyUserRoleId: json["current_selected_company_user_role_id"],
    currentSelectedCompanyId: json["current_selected_company_id"],
    googleId: json["google_id"],
    phoneNumberVerifiedAt: DateTime.parse(json["phone_number_verified_at"]),
    otp: json["otp"],
    otpExpiresAt: json["otp_expires_at"],
    deletedAt: json["deleted_at"],
    emailOtp: json["email_otp"],
    emailOtpExpiresAt: json["email_otp_expires_at"],
    reason: json["reason"],
    region: json["region"],
    areaName: json["area_name"],
    deliveryType: json["delivery_type"],
    myRoles: json["my_roles"] == null ? null : List<Role>.from(json["my_roles"].map((x) => Role.fromJson(x))),
    shippingAddress: List<ShippingAddress>.from(json["shipping_address"].map((x) => ShippingAddress.fromJson(x))),
    billingAddress: List<BillingAddress>.from(json["billing_address"].map((x) => BillingAddress.fromJson(x))),
    companies: json["companies"] == null ? null : List<Company>.from(json["companies"].map((x) => Company.fromJson(x))),
    roles: json["roles"] == null ? null : List<Role>.from(json["roles"].map((x) => Role.fromJson(x))),
    pivot: json["pivot"] == null ? null : DataPivot.fromJson(json["pivot"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "old_id": oldId,
    "identifier": identifier,
    "firstname": firstname,
    "lastname": lastname,
    "email": email,
    "phone_number": phoneNumber,
    "alt_phone_number": altPhoneNumber,
    "username": username,
    "email_verified_at": emailVerifiedAt!.toIso8601String(),
    "avatar": avatar,
    "verified": verified,
    "active": active,
    "added_by": addedBy,
    "country_id": countryId,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "current_selected_company_user_role_id": currentSelectedCompanyUserRoleId,
    "current_selected_company_id": currentSelectedCompanyId,
    "google_id": googleId,
    "phone_number_verified_at": phoneNumberVerifiedAt!.toIso8601String(),
    "otp": otp,
    "otp_expires_at": otpExpiresAt,
    "deleted_at": deletedAt,
    "email_otp": emailOtp,
    "email_otp_expires_at": emailOtpExpiresAt,
    "reason": reason,
    "region": region,
    "area_name": areaName,
    "delivery_type": deliveryType,
    "my_roles": myRoles == null ? null : List<dynamic>.from(myRoles!.map((x) => x.toJson())),
    "shipping_address": List<dynamic>.from(shippingAddress!.map((x) => x.toJson())),
    "billing_address": List<dynamic>.from(billingAddress!.map((x) => x.toJson())),
    "companies": companies == null ? null : List<dynamic>.from(companies!.map((x) => x.toJson())),
    "roles": roles == null ? null : List<dynamic>.from(roles!.map((x) => x.toJson())),
    "pivot": pivot == null ? null : pivot!.toJson(),
  };
}

class DataPivot {
  DataPivot({
    this.companyId,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.role,
  });

  int? companyId;
  int? userId;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? role;

  factory DataPivot.fromJson(Map<String, dynamic> json) => DataPivot(
    companyId: json["company_id"],
    userId: json["user_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    role: json["role"],
  );

  Map<String, dynamic> toJson() => {
    "company_id": companyId,
    "user_id": userId,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "role": role,
  };
}

class BillingAddress {
  BillingAddress({
    this.id,
    this.userId,
    this.billingAddressDefault,
    this.firstname,
    this.lastname,
    this.email,
    this.phone,
    this.address,
    this.postalCode,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int? id;
  int? userId;
  int? billingAddressDefault;
  String? firstname;
  String? lastname;
  dynamic email;
  String? phone;
  String? address;
  String? postalCode;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;

  factory BillingAddress.fromJson(Map<String, dynamic> json) => BillingAddress(
    id: json["id"],
    userId: json["user_id"],
    billingAddressDefault: json["default"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    email: json["email"],
    phone: json["phone"],
    address: json["address"],
    postalCode: json["postal_code"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "default": billingAddressDefault,
    "firstname": firstname,
    "lastname": lastname,
    "email": email,
    "phone": phone,
    "address": address,
    "postal_code": postalCode,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

class Role {
  Role({
    this.id,
    this.name,
    this.guardName,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  int? id;
  String? name;
  String? guardName;
  DateTime? createdAt;
  DateTime? updatedAt;
  MyRolePivot? pivot;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
    id: json["id"],
    name: json["name"],
    guardName: json["guard_name"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    pivot: MyRolePivot.fromJson(json["pivot"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "guard_name": guardName,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "pivot": pivot!.toJson(),
  };
}

class MyRolePivot {
  MyRolePivot({
    this.modelId,
    this.roleId,
    this.modelType,
  });

  int? modelId;
  int? roleId;
  String? modelType;

  factory MyRolePivot.fromJson(Map<String, dynamic> json) => MyRolePivot(
    modelId: json["model_id"],
    roleId: json["role_id"],
    modelType: json["model_type"],
  );

  Map<String, dynamic> toJson() => {
    "model_id": modelId,
    "role_id": roleId,
    "model_type": modelType,
  };
}

class ShippingAddress {
  ShippingAddress({
    this.id,
    this.userId,
    this.shippingAddressDefault,
    this.firstname,
    this.lastname,
    this.phone,
    this.email,
    this.latitude,
    this.longitude,
    this.address,
    this.postalCode,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.region,
    this.areaName,
    this.deliveryType,
  });

  int? id;
  int? userId;
  int? shippingAddressDefault;
  String? firstname;
  String? lastname;
  String? phone;
  String? email;
  String? latitude;
  String? longitude;
  String? address;
  String? postalCode;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? region;
  String? areaName;
  int? deliveryType;

  factory ShippingAddress.fromJson(Map<String, dynamic> json) => ShippingAddress(
    id: json["id"],
    userId: json["user_id"],
    shippingAddressDefault: json["default"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    phone: json["phone"] == null ? null : json["phone"],
    email: json["email"] == null ? null : json["email"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    address: json["address"],
    postalCode: json["postal_code"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    region: json["region"],
    areaName: json["area_name"],
    deliveryType: json["delivery_type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "default": shippingAddressDefault,
    "firstname": firstname,
    "lastname": lastname,
    "phone": phone == null ? null : phone,
    "email": email == null ? null : email,
    "latitude": latitude,
    "longitude": longitude,
    "address": address,
    "postal_code": postalCode,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "deleted_at": deletedAt,
    "region": region,
    "area_name": areaName,
    "delivery_type": deliveryType,
  };
}
