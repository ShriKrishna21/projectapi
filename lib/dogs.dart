// class dogmodel {
//          Meta? meta;
//   Links? links;

//   dogmodel({this.data, this.meta, this.links});

//   dogmodel.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = <Datat>[];
//       json['data'].forEach((v) {
//         data!.add(new Datat.fromJson(v));
//       });
//     }
//     meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
//     links = json['links'] != null ? new Links.fromJson(json['links']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     if (this.meta != null) {
//       data['meta'] = this.meta!.toJson();
//     }
//     if (this.links != null) {
//       data['links'] = this.links!.toJson();
//     }
//     return data;
//   }
// }

// class Datat {
//   String? id;
//   String? type;
//   Attributes? attributes;
//   Relationships? relationships;

//   Datat({this.id, this.type, this.attributes, this.relationships});

//   Datat.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     type = json['type'];
//     attributes = json['attributes'] != null
//         ? new Attributes.fromJson(json['attributes'])
//         : null;
//     relationships = json['relationships'] != null
//         ? new Relationships.fromJson(json['relationships'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['type'] = this.type;
//     if (this.attributes != null) {
//       data['attributes'] = this.attributes!.toJson();
//     }
//     if (this.relationships != null) {
//       data['relationships'] = this.relationships!.toJson();
//     }
//     return data;
//   }
// }

// class Attributes {
//   String? name;
//   String? description;
//   Life? life;
//   Life? maleWeight;
//   Life? femaleWeight;
//   bool? hypoallergenic;

//   Attributes(
//       {this.name,
//       this.description,
//       this.life,
//       this.maleWeight,
//       this.femaleWeight,
//       this.hypoallergenic});

//   Attributes.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     description = json['description'];
//     life = json['life'] != null ? new Life.fromJson(json['life']) : null;
//     maleWeight = json['male_weight'] != null
//         ? new Life.fromJson(json['male_weight'])
//         : null;
//     femaleWeight = json['female_weight'] != null
//         ? new Life.fromJson(json['female_weight'])
//         : null;
//     hypoallergenic = json['hypoallergenic'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['description'] = this.description;
//     if (this.life != null) {
//       data['life'] = this.life!.toJson();
//     }
//     if (this.maleWeight != null) {
//       data['male_weight'] = this.maleWeight!.toJson();
//     }
//     if (this.femaleWeight != null) {
//       data['female_weight'] = this.femaleWeight!.toJson();
//     }
//     data['hypoallergenic'] = this.hypoallergenic;
//     return data;
//   }
// }

// class Life {
//   int? max;
//   int? min;

//   Life({this.max, this.min});

//   Life.fromJson(Map<String, dynamic> json) {
//     max = json['max'];
//     min = json['min'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['max'] = this.max;
//     data['min'] = this.min;
//     return data;
//   }
// }

// class Relationships {
//   Group? group;

//   Relationships({this.group});

//   Relationships.fromJson(Map<String, dynamic> json) {
//     group = json['group'] != null ? new Group.fromJson(json['group']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.group != null) {
//       data['group'] = this.group!.toJson();
//     }
//     return data;
//   }
// }

// class Group {
//   Datat? data;

//   Group({this.data});

//   Group.fromJson(Map<String, dynamic> json) {
//     data = json['data'] != null ? new Datat.fromJson(json['data']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     return data;
//   }
// }

// class Datas {
//   String? id;
//   String? type;

//   Datas({this.id, this.type});

//   Datas.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     type = json['type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['type'] = this.type;
//     return data;
//   }
// }

// class Meta {
//   Pagination? pagination;

//   Meta({this.pagination});

//   Meta.fromJson(Map<String, dynamic> json) {
//     pagination = json['pagination'] != null
//         ? new Pagination.fromJson(json['pagination'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.pagination != null) {
//       data['pagination'] = this.pagination!.toJson();
//     }
//     return data;
//   }
// }

// class Pagination {
//   int? current;
//   int? next;
//   int? last;
//   int? records;

//   Pagination({this.current, this.next, this.last, this.records});

//   Pagination.fromJson(Map<String, dynamic> json) {
//     current = json['current'];
//     next = json['next'];
//     last = json['last'];
//     records = json['records'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['current'] = this.current;
//     data['next'] = this.next;
//     data['last'] = this.last;
//     data['records'] = this.records;
//     return data;
//   }
// }

// class Links {
//   String? self;
//   String? current;
//   String? next;
//   String? last;

//   Links({this.self, this.current, this.next, this.last});

//   Links.fromJson(Map<String, dynamic> json) {
//     self = json['self'];
//     current = json['current'];
//     next = json['next'];
//     last = json['last'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['self'] = this.self;
//     data['current'] = this.current;
//     data['next'] = this.next;
//     data['last'] = this.last;
//     return data;
//   }
// }