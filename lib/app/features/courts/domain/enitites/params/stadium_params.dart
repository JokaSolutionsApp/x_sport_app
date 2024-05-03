class StadiumPrams {
  final int sportId;
  final int pageSize;
  final int pageNum;
  StadiumPrams({
    required this.sportId,
    required this.pageSize,
    required this.pageNum,
  });

  Map<String, dynamic> toMap() {
    return {
      "sportId": sportId,
      "pageNum": pageNum,
      "PageSize": pageSize,
    };
  }
}
