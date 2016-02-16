library slickgrid;

import 'dart:js';
import 'package:js/js.dart';
import 'dart:html' as html;

part 'package:dart_slickgrid/slickgrid-wrapper/position.dart';
part 'package:dart_slickgrid/slickgrid-wrapper/grid_options.dart';
part 'package:dart_slickgrid/slickgrid-wrapper/column.dart';
part 'package:dart_slickgrid/slickgrid-wrapper/data/data_provider.dart';
part 'package:dart_slickgrid/slickgrid-wrapper/data/dataview.dart';
part 'package:dart_slickgrid/slickgrid-wrapper/plugins/cell_selection_model.dart';
part 'package:dart_slickgrid/slickgrid-wrapper/plugins/auto_tooltips.dart';
part 'package:dart_slickgrid/slickgrid-wrapper/plugins/copy_manager.dart';
part 'package:dart_slickgrid/slickgrid-wrapper/grouping_info.dart';

@JS('Slick.Grid')
class SlickGrid {
  //core
  external void init();
  external List<JsObject> getData();
  external Map getDataItem(num index);
  external void setData(List<JsObject> data, [bool scrollToTop = false]);
  external num getDataLength();
  external SlickGridOptions getOptions();
  external List<num> getSelectedRows();
  external dynamic getSelectionModel();
  external void setOptions(SlickGridOptions);
  external void setSelectedRows(List<num> rows);
  external void setSelectionModel(dynamic model);

  //columns
  external void autosizeColumns();
  external num getColumnIndex(String id);
  external List<SlickGridColumn> getColumns();
  external void setColumns(List<SlickGridColumn> columns);
  external void setSortColumn(String colId, bool ascending);
  external void setSortColumns(List<SlickGridColumnSortOptions> columns);
  external void updateColumnHeader(String columnId, String title);

  //cells
  external void addCellCssStyles(String key, Map hash);
  external bool canCellBeActive(num rowIdx, num colIdx);
  external bool canCellBeSelected(num rowIdx, num colIdx);
  external void editActiveCell(dynamic editor);
  external void flashCell(num rowIdx, num colIdx, num speed);
  external SlickGridCellCoords getActiveCell();
  external html.HtmlElement getActiveCellNode();
  external SlickGridPosition getActiveCellPosition();
  external getCellCssStyles(String key);
  external dynamic getCellEditor();
  external dynamic getCellFromEvent();
  external SlickGridCellCoords getCellFromPoint(num x, num y);
  external html.HtmlElement getCellNode(num rowIdx, num colIdx);
  external SlickGridPosition getCellNodeBox(num rowIdx, num colIdx);
  external void gotoCell(num rowIdx, num colIdx, [bool forceEdit = false]);
  external void navigateDown();
  external void navigateLeft();
  external void navigateNext();
  external void navigatePrev();
  external void navigateRight();
  external void navigateUp();
  external void removeCellCssStyles(String key);
  external void resetActiveCell();
  external void setActiveCell(num rowIdx, num colIdx);
  external void setCellCssStyles(String key, Map hash);

  //rendering
  external html.HtmlElement getCanvasNode();
  external SlickGridPosition getGridPosition();
  external SlickGridRange getRenderedRange([num viewportTop, num viewportLeft]);
  external SlickGridRange getViewport([num viewportTop, num viewportLeft]);
  external void invalidate();
  external void invalidateAllRows();
  external void invalidateRow(num rowIdx);
  external void invalidateRows(List<num> rowIdxs);
  external void render();
  external void resizeCanvas();
  external void scrollCellIntoView(num rowIdx, num colIdx);
  external void scrollRowIntoView(num rowIdx, bool doPadding);
  external void scrollRowToTop(num rowIdx);
  external void updateCell(num rowIdx, num colIdx);
  external void updateRow(num rowIdx);
  external void updateRowCount();

  //headers
  external html.HtmlElement getHeaderRow();
  external html.HtmlElement getHeaderRowColumn(String columnId);
  external List<SlickGridColumnSortOptions> getSortColumns();
  external html.HtmlElement getTopPanel();
  external void setHeaderRowVisibility(bool visible);

  //events
  external SlickGridEvent get onSort;
  external SlickGridEvent get onClick;
  external SlickGridEvent get onColumnsResized;
  external SlickGridEvent get onColumnsReordered;

  //other
  external void registerPlugin(dynamic plugin);

  external factory SlickGrid(
    String id,
    SlickDataView dataView,
    List<SlickGridColumn> columns,
    SlickGridOptions options
  );
}

@JS()
@anonymous
class SlickGridColumnSortOptions {
  external String get columnId;
  external bool get sortAsc;

  external factory SlickGridColumnSortOptions({
    String columnId,
    bool sortAsc
  });
}

@JS()
@anonymous
class SlickGridEvent {
  external void notify(Map args, dynamic e, JsObject scope);
  external void subscribe(Function fn);
  external void unsubscribe(Function fn);

  external factory SlickGridEvent();
}
