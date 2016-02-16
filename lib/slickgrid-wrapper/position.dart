part of slickgrid;

@JS()
@anonymous
class SlickGridRange {
  external num get top;
  external num get bottom;
  external num get leftPx;
  external num get rightPx;

  external factory SlickGridRange({
    num top,
    num bottom,
    num leftPx,
    num rightPx
  });
}

@JS()
@anonymous
class SlickGridCellCoords {
  external num get row;
  external num get cell;

  external factory SlickGridCellCoords({
    num row,
    num cell
  });
}

@JS()
@anonymous
class SlickGridPosition {
  external num get bottom;
  external num get height;
  external num get left;
  external num get right;
  external num get top;
  external bool get visible;
  external num get width;

  external factory SlickGridPosition({
    num bottom,
    num height,
    num left,
    num right,
    num top,
    bool visible,
    num width
  });
}
