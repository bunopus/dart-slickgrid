part of slickgrid;

@JS('Slick.Data.GroupItemMetadataProvider')
class SlickDataGroupItemMetadataProvider {
  external SlickDataGroupRowMetadata getGroupRowMetadata(dynamic item);
  external SlickDataTotalsRowMetaData getTotalsRowMetadata(dynamic item);
  external void init(SlickGrid grid);

  external factory SlickDataGroupItemMetadataProvider();
}

@JS()
@anonymous
class SlickDataGroupRowMetadata {
  external bool get selectable;
  external bool get focusable;
  external List<String> get cssClasses;
  external Map get columns;
}

@JS()
@anonymous
class SlickDataTotalsRowMetaData {
  external bool get selectable;
  external bool get focusable;
  external List<String> get cssClasses;
  external dynamic get formatter;
  external dynamic get editor;

  external factory SlickDataTotalsRowMetaData({
    bool selectable,
    bool focusable,
    List<String> cssClasses,
    dynamic formatter,
    dynamic editor
  });
}