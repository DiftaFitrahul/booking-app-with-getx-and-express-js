class FilterCubitState {
  final bool isSports;
  final bool isMusic;
  final bool isFood;
  final bool isArt;
  final bool isLove;
  final bool isEducation;

  const FilterCubitState(
      {required this.isArt,
      required this.isEducation,
      required this.isFood,
      required this.isLove,
      required this.isMusic,
      required this.isSports});

  const FilterCubitState._(
      {this.isArt = false,
      this.isEducation = false,
      this.isFood = false,
      this.isLove = false,
      this.isMusic = false,
      this.isSports = false});

  const FilterCubitState.initial() : this._();

  FilterCubitState copyWith({
    bool? isSports,
    bool? isMusic,
    bool? isFood,
    bool? isArt,
    bool? isLove,
    bool? isEducation,
  }) {
    return FilterCubitState(
        isArt: isArt ?? this.isArt,
        isEducation: isEducation ?? this.isEducation,
        isFood: isFood ?? this.isFood,
        isLove: isLove ?? this.isLove,
        isMusic: isMusic ?? this.isMusic,
        isSports: isSports ?? this.isSports);
  }
}
