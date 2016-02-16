part of slickgrid;

@JS('Slick.Data.DataView')
class SlickDataView {
  external void addItem(dynamic item);
  external void beginUpdate();
  external void collapseAllGroups();
  external void collapseGroup(List<String> groups);
  external void deleteItem(String id);
  external void endUpdate();
  external void expandAllGroups(num level);
  external void expandGroups(List<String> groups);
  external void fastSort(dynamic field, bool ascending);
  external List<SlickGridGroupingInfo> getGrouping();
  external void setGrouping(dynamic groupingInfo);
  external num getIdxById(String id);
  external void setItems(List<Map> data, [String idProperty]);
  external List<JsObject> getItems();
  external JsObject getItem(num rowIdx);
  external dynamic getItemMetadata(num idx);
  external num getLength();
  external void sort(dynamic comparer, bool ascending);
  external void refresh();
  external dynamic getItemById(String id);
  external dynamic getRowById(String id);
  external dynamic getItemByIdx(num idx);
  external dynamic mapIdsToRows(List<String> ids);
  external dynamic mapRowsToIds(List<dynamic> rowArray);

  //events
  external SlickGridEvent get onRowCountChanged;
  external SlickGridEvent get onRowsChanged;

  external factory SlickDataView([SlickDataViewOptions options]);
}

@JS()
@anonymous
class SlickDataViewOptions {
  external get groupItemMetadataProvider;
  external bool get inlineFilters;

  external factory SlickDataViewOptions({
    groupItemMetadataProvider,
    bool inlineFilters
  });
}
