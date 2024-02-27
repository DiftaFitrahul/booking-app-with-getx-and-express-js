class HomeCubitState {
  final bool isShowTextFilter;
  final bool isDrawerOpen;
  final double xOffset;
  final double yOffset;
  final double zOffset;
  final double xOffsetNavigationBar;
  final double yOffsetNavigationBar;
  final double xOffsetFloatingActionButton;
  final double yOffsetFloatingActionButton;

  const HomeCubitState(
      {required this.isDrawerOpen,
      required this.isShowTextFilter,
      required this.xOffset,
      required this.xOffsetFloatingActionButton,
      required this.xOffsetNavigationBar,
      required this.yOffset,
      required this.yOffsetFloatingActionButton,
      required this.yOffsetNavigationBar,
      required this.zOffset});

  const HomeCubitState.initial() : this._();

  const HomeCubitState._(
      {this.isShowTextFilter = false,
      this.isDrawerOpen = false,
      this.xOffset = 0.0,
      this.yOffset = 0.0,
      this.zOffset = 0.0,
      this.xOffsetNavigationBar = 0.0,
      this.yOffsetNavigationBar = 0.0,
      this.xOffsetFloatingActionButton = 0.0,
      this.yOffsetFloatingActionButton = 0.0});

  HomeCubitState copyWith(
      {bool? isShowTextFilter,
      bool? isDrawerOpen,
      double? xOffset,
      double? yOffset,
      double? zOffset,
      double? xOffsetNavigationBar,
      double? yOffsetNavigationBar,
      double? xOffsetFloatingActionButton,
      double? yOffsetFloatingActionButton}) {
    return HomeCubitState(
        isDrawerOpen: isDrawerOpen ?? this.isDrawerOpen,
        isShowTextFilter: isShowTextFilter ?? this.isShowTextFilter,
        xOffset: xOffset ?? this.xOffset,
        xOffsetFloatingActionButton:
            xOffsetFloatingActionButton ?? this.xOffsetFloatingActionButton,
        xOffsetNavigationBar: xOffsetNavigationBar ?? this.xOffsetNavigationBar,
        yOffset: yOffset ?? this.yOffset,
        yOffsetFloatingActionButton:
            yOffsetFloatingActionButton ?? this.yOffsetFloatingActionButton,
        yOffsetNavigationBar: yOffsetNavigationBar ?? this.yOffsetNavigationBar,
        zOffset: zOffset ?? this.zOffset);
  }
}
