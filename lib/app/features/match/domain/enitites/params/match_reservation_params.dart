class StadiumParams {
  final int sportId;
  final int pageNumber;
  final int pageSize;
  StadiumParams({
    required this.sportId,
    required this.pageNumber,
    required this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return {
      "SportId": sportId,
      "PageNum": pageNumber,
      "PageSize": pageSize,
    };
  }
}

class ReserviedTimesParams {
  final int stadiumFloorId;
  final int? stadiumId;
  ReserviedTimesParams({
    this.stadiumId,
    required this.stadiumFloorId,
  });

  Map<String, dynamic> toMap() {
    return {
      "stadiumFloorId": stadiumFloorId,
      "stadiumId": stadiumId,
    };
  }
}

class ReservationParams {
  final int? stadiumFloorId;
  final String? reservationDate;
  final String? reservatonTimeFrom;
  final String? reservatonTimeTo;
  ReservationParams({
    required this.reservationDate,
    required this.reservatonTimeFrom,
    required this.reservatonTimeTo,
    required this.stadiumFloorId,
  });

  Map<String, dynamic> toMap() {
    return {
      "stadiumFloorId": stadiumFloorId,
      "reservationDate": reservationDate,
      "reservatonTimeFrom": reservatonTimeFrom,
      "reservatonTimeTo": reservatonTimeTo
    };
  }
}
