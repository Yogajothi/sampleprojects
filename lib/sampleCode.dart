import 'dart:convert';

Payload payloadFromJson(String str) => Payload.fromJson(json.decode(str));

String payloadToJson(Payload data) => json.encode(data.toJson());

class Payload {
  String sessid;
  String sessionName;
  String token;
  User user;

  Payload({
    this.sessid,
    this.sessionName,
    this.token,
    this.user,
  });

  factory Payload.fromJson(Map<String, dynamic> json) => new Payload(
    sessid: json["sessid"],
    sessionName: json["session_name"],
    token: json["token"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "sessid": sessid,
    "session_name": sessionName,
    "token": token,
    "user": user.toJson(),
  };
}

class User {
  String uid;
  String name;
  String mail;
  String theme;
  String signature;
  String signatureFormat;
  String created;
  String access;
  int login;
  String status;
  String timezone;
  String language;
  String picture;
  Data data;
  String uuid;
  Map<String, String> roles;
  RdfMapping rdfMapping;

  User({
    this.uid,
    this.name,
    this.mail,
    this.theme,
    this.signature,
    this.signatureFormat,
    this.created,
    this.access,
    this.login,
    this.status,
    this.timezone,
    this.language,
    this.picture,
    this.data,
    this.uuid,
    this.roles,
    this.rdfMapping,
  });

  factory User.fromJson(Map<String, dynamic> json) => new User(
    uid: json["uid"],
    name: json["name"],
    mail: json["mail"],
    theme: json["theme"],
    signature: json["signature"],
    signatureFormat: json["signature_format"],
    created: json["created"],
    access: json["access"],
    login: json["login"],
    status: json["status"],
    timezone: json["timezone"],
    language: json["language"],
    picture: json["picture"],
    data: Data.fromJson(json["data"]),
    uuid: json["uuid"],
    roles: new Map.from(json["roles"]).map((k, v) => new MapEntry<String, String>(k, v)),
    rdfMapping: RdfMapping.fromJson(json["rdf_mapping"]),
  );

  Map<String, dynamic> toJson() => {
    "uid": uid,
    "name": name,
    "mail": mail,
    "theme": theme,
    "signature": signature,
    "signature_format": signatureFormat,
    "created": created,
    "access": access,
    "login": login,
    "status": status,
    "timezone": timezone,
    "language": language,
    "picture": picture,
    "data": data.toJson(),
    "uuid": uuid,
    "roles": new Map.from(roles).map((k, v) => new MapEntry<String, dynamic>(k, v)),
    "rdf_mapping": rdfMapping.toJson(),
  };
}

class Data {
  int mimemailTextonly;

  Data({
    this.mimemailTextonly,
  });

  factory Data.fromJson(Map<String, dynamic> json) => new Data(
    mimemailTextonly: json["mimemail_textonly"],
  );

  Map<String, dynamic> toJson() => {
    "mimemail_textonly": mimemailTextonly,
  };
}

class RdfMapping {
  List<String> rdftype;
  Name name;
  Homepage homepage;

  RdfMapping({
    this.rdftype,
    this.name,
    this.homepage,
  });

  factory RdfMapping.fromJson(Map<String, dynamic> json) => new RdfMapping(
    rdftype: new List<String>.from(json["rdftype"].map((x) => x)),
    name: Name.fromJson(json["name"]),
    homepage: Homepage.fromJson(json["homepage"]),
  );

  Map<String, dynamic> toJson() => {
    "rdftype": new List<dynamic>.from(rdftype.map((x) => x)),
    "name": name.toJson(),
    "homepage": homepage.toJson(),
  };
}

class Homepage {
  List<String> predicates;
  String type;

  Homepage({
    this.predicates,
    this.type,
  });

  factory Homepage.fromJson(Map<String, dynamic> json) => new Homepage(
    predicates: new List<String>.from(json["predicates"].map((x) => x)),
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "predicates": new List<dynamic>.from(predicates.map((x) => x)),
    "type": type,
  };
}

class Name {
  List<String> predicates;

  Name({
    this.predicates,
  });

  factory Name.fromJson(Map<String, dynamic> json) => new Name(
    predicates: new List<String>.from(json["predicates"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "predicates": new List<dynamic>.from(predicates.map((x) => x)),
  };
}

