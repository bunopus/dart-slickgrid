part of slickgrid;

@JS()
@anonymous
class SlickGridGroupingInfo {
  external dynamic get formatter;
  external dynamic get comparer;
  external String get getter;
  external List<dynamic> get aggregators;
  external List get predefinedValues;
  external bool get aggregateEmpty;
  external bool get aggregateCollapsed;
  external bool get aggregateChildGroups;
  external bool get collapsed;
  external bool get displayTotalsRow;
  external bool get lazyTotalsCalculation;


  external factory SlickGridGroupingInfo({
    formatter,
    comparer,
    getter,
    aggregators,
    predefinedValues,
    aggregateEmpty,
    aggregateCollapsed,
    aggregateChildGroups,
    collapsed,
    displayTotalsRow,
    lazyTotalsCalculation
  });
}

@JS()
@anonymous
class SlickGridGroup {
  external bool get collapsed;
  external num get count;
  external String get groupingKey;
  external List get groups;
  external num get level;
  external List<Map> get rows;
  external String get title;
  external dynamic get totals;
  external dynamic get value;

  external factory SlickGridGroup({
    collapsed,
    count,
    groupingKey,
    groups,
    level,
    rows,
    title,
    totals,
    value
  });
}