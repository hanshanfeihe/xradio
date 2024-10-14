import 'package:equatable/equatable.dart';

class Station extends Equatable {
  Station({
    required this.changeuuid,
    required this.stationuuid,
    required this.serveruuid,
    required this.name,
    required this.url,
    required this.urlResolved,
    required this.homepage,
    required this.favicon,
    required this.tags,
    required this.country,
    required this.countrycode,
    required this.iso31662,
    required this.state,
    required this.language,
    required this.languagecodes,
    required this.votes,
    required this.lastchangetime,
    required this.lastchangetimeIso8601,
    required this.codec,
    required this.bitrate,
    required this.hls,
    required this.lastcheckok,
    required this.lastchecktime,
    required this.lastchecktimeIso8601,
    required this.lastcheckoktime,
    required this.lastcheckoktimeIso8601,
    required this.lastlocalchecktime,
    required this.lastlocalchecktimeIso8601,
    required this.clicktimestamp,
    required this.clicktimestampIso8601,
    required this.clickcount,
    required this.clicktrend,
    required this.sslError,
    required this.geoLat,
    required this.geoLong,
    required this.hasExtendedInfo,
  });

  final String? changeuuid;
  final String? stationuuid;
  final dynamic serveruuid;
  final String? name;
  final String? url;
  final String? urlResolved;
  final String? homepage;
  final String? favicon;
  final String? tags;
  final String? country;
  final String? countrycode;
  final dynamic iso31662;
  final String? state;
  final String? language;
  final String? languagecodes;
  final num? votes;
  final DateTime? lastchangetime;
  final DateTime? lastchangetimeIso8601;
  final String? codec;
  final num? bitrate;
  final num? hls;
  final num? lastcheckok;
  final DateTime? lastchecktime;
  final DateTime? lastchecktimeIso8601;
  final DateTime? lastcheckoktime;
  final DateTime? lastcheckoktimeIso8601;
  final String? lastlocalchecktime;
  final dynamic lastlocalchecktimeIso8601;
  final DateTime? clicktimestamp;
  final DateTime? clicktimestampIso8601;
  final num? clickcount;
  final num? clicktrend;
  final num? sslError;
  final dynamic geoLat;
  final dynamic geoLong;
  final bool? hasExtendedInfo;

  Station copyWith({
    String? changeuuid,
    String? stationuuid,
    dynamic? serveruuid,
    String? name,
    String? url,
    String? urlResolved,
    String? homepage,
    String? favicon,
    String? tags,
    String? country,
    String? countrycode,
    dynamic? iso31662,
    String? state,
    String? language,
    String? languagecodes,
    num? votes,
    DateTime? lastchangetime,
    DateTime? lastchangetimeIso8601,
    String? codec,
    num? bitrate,
    num? hls,
    num? lastcheckok,
    DateTime? lastchecktime,
    DateTime? lastchecktimeIso8601,
    DateTime? lastcheckoktime,
    DateTime? lastcheckoktimeIso8601,
    String? lastlocalchecktime,
    dynamic? lastlocalchecktimeIso8601,
    DateTime? clicktimestamp,
    DateTime? clicktimestampIso8601,
    num? clickcount,
    num? clicktrend,
    num? sslError,
    dynamic? geoLat,
    dynamic? geoLong,
    bool? hasExtendedInfo,
  }) {
    return Station(
      changeuuid: changeuuid ?? this.changeuuid,
      stationuuid: stationuuid ?? this.stationuuid,
      serveruuid: serveruuid ?? this.serveruuid,
      name: name ?? this.name,
      url: url ?? this.url,
      urlResolved: urlResolved ?? this.urlResolved,
      homepage: homepage ?? this.homepage,
      favicon: favicon ?? this.favicon,
      tags: tags ?? this.tags,
      country: country ?? this.country,
      countrycode: countrycode ?? this.countrycode,
      iso31662: iso31662 ?? this.iso31662,
      state: state ?? this.state,
      language: language ?? this.language,
      languagecodes: languagecodes ?? this.languagecodes,
      votes: votes ?? this.votes,
      lastchangetime: lastchangetime ?? this.lastchangetime,
      lastchangetimeIso8601: lastchangetimeIso8601 ?? this.lastchangetimeIso8601,
      codec: codec ?? this.codec,
      bitrate: bitrate ?? this.bitrate,
      hls: hls ?? this.hls,
      lastcheckok: lastcheckok ?? this.lastcheckok,
      lastchecktime: lastchecktime ?? this.lastchecktime,
      lastchecktimeIso8601: lastchecktimeIso8601 ?? this.lastchecktimeIso8601,
      lastcheckoktime: lastcheckoktime ?? this.lastcheckoktime,
      lastcheckoktimeIso8601: lastcheckoktimeIso8601 ?? this.lastcheckoktimeIso8601,
      lastlocalchecktime: lastlocalchecktime ?? this.lastlocalchecktime,
      lastlocalchecktimeIso8601: lastlocalchecktimeIso8601 ?? this.lastlocalchecktimeIso8601,
      clicktimestamp: clicktimestamp ?? this.clicktimestamp,
      clicktimestampIso8601: clicktimestampIso8601 ?? this.clicktimestampIso8601,
      clickcount: clickcount ?? this.clickcount,
      clicktrend: clicktrend ?? this.clicktrend,
      sslError: sslError ?? this.sslError,
      geoLat: geoLat ?? this.geoLat,
      geoLong: geoLong ?? this.geoLong,
      hasExtendedInfo: hasExtendedInfo ?? this.hasExtendedInfo,
    );
  }

  factory Station.fromJson(Map<String, dynamic> json){
    return Station(
      changeuuid: json["changeuuid"],
      stationuuid: json["stationuuid"],
      serveruuid: json["serveruuid"],
      name: json["name"],
      url: json["url"],
      urlResolved: json["url_resolved"],
      homepage: json["homepage"],
      favicon: json["favicon"],
      tags: json["tags"],
      country: json["country"],
      countrycode: json["countrycode"],
      iso31662: json["iso_3166_2"],
      state: json["state"],
      language: json["language"],
      languagecodes: json["languagecodes"],
      votes: json["votes"],
      lastchangetime: DateTime.tryParse(json["lastchangetime"] ?? ""),
      lastchangetimeIso8601: DateTime.tryParse(json["lastchangetime_iso8601"] ?? ""),
      codec: json["codec"],
      bitrate: json["bitrate"],
      hls: json["hls"],
      lastcheckok: json["lastcheckok"],
      lastchecktime: DateTime.tryParse(json["lastchecktime"] ?? ""),
      lastchecktimeIso8601: DateTime.tryParse(json["lastchecktime_iso8601"] ?? ""),
      lastcheckoktime: DateTime.tryParse(json["lastcheckoktime"] ?? ""),
      lastcheckoktimeIso8601: DateTime.tryParse(json["lastcheckoktime_iso8601"] ?? ""),
      lastlocalchecktime: json["lastlocalchecktime"],
      lastlocalchecktimeIso8601: json["lastlocalchecktime_iso8601"],
      clicktimestamp: DateTime.tryParse(json["clicktimestamp"] ?? ""),
      clicktimestampIso8601: DateTime.tryParse(json["clicktimestamp_iso8601"] ?? ""),
      clickcount: json["clickcount"],
      clicktrend: json["clicktrend"],
      sslError: json["ssl_error"],
      geoLat: json["geo_lat"],
      geoLong: json["geo_long"],
      hasExtendedInfo: json["has_extended_info"],
    );
  }

  Map<String, dynamic> toJson() => {
    "changeuuid": changeuuid,
    "stationuuid": stationuuid,
    "serveruuid": serveruuid,
    "name": name,
    "url": url,
    "url_resolved": urlResolved,
    "homepage": homepage,
    "favicon": favicon,
    "tags": tags,
    "country": country,
    "countrycode": countrycode,
    "iso_3166_2": iso31662,
    "state": state,
    "language": language,
    "languagecodes": languagecodes,
    "votes": votes,
    "lastchangetime": lastchangetime?.toIso8601String(),
    "lastchangetime_iso8601": lastchangetimeIso8601?.toIso8601String(),
    "codec": codec,
    "bitrate": bitrate,
    "hls": hls,
    "lastcheckok": lastcheckok,
    "lastchecktime": lastchecktime?.toIso8601String(),
    "lastchecktime_iso8601": lastchecktimeIso8601?.toIso8601String(),
    "lastcheckoktime": lastcheckoktime?.toIso8601String(),
    "lastcheckoktime_iso8601": lastcheckoktimeIso8601?.toIso8601String(),
    "lastlocalchecktime": lastlocalchecktime,
    "lastlocalchecktime_iso8601": lastlocalchecktimeIso8601,
    "clicktimestamp": clicktimestamp?.toIso8601String(),
    "clicktimestamp_iso8601": clicktimestampIso8601?.toIso8601String(),
    "clickcount": clickcount,
    "clicktrend": clicktrend,
    "ssl_error": sslError,
    "geo_lat": geoLat,
    "geo_long": geoLong,
    "has_extended_info": hasExtendedInfo,
  };

  @override
  String toString(){
    return "$changeuuid, $stationuuid, $serveruuid, $name, $url, $urlResolved, $homepage, $favicon, $tags, $country, $countrycode, $iso31662, $state, $language, $languagecodes, $votes, $lastchangetime, $lastchangetimeIso8601, $codec, $bitrate, $hls, $lastcheckok, $lastchecktime, $lastchecktimeIso8601, $lastcheckoktime, $lastcheckoktimeIso8601, $lastlocalchecktime, $lastlocalchecktimeIso8601, $clicktimestamp, $clicktimestampIso8601, $clickcount, $clicktrend, $sslError, $geoLat, $geoLong, $hasExtendedInfo, ";
  }

  @override
  List<Object?> get props => [
    changeuuid, stationuuid, serveruuid, name, url, urlResolved, homepage, favicon, tags, country, countrycode, iso31662, state, language, languagecodes, votes, lastchangetime, lastchangetimeIso8601, codec, bitrate, hls, lastcheckok, lastchecktime, lastchecktimeIso8601, lastcheckoktime, lastcheckoktimeIso8601, lastlocalchecktime, lastlocalchecktimeIso8601, clicktimestamp, clicktimestampIso8601, clickcount, clicktrend, sslError, geoLat, geoLong, hasExtendedInfo, ];
}
