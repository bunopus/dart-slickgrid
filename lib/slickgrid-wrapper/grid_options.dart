part of slickgrid;

@JS()
@anonymous
class SlickGridOptions {
  external bool get asyncEditorLoading;
  external num get asyncEditorLoadDelay;
  external num get asyncPostRenderDelay;
  external bool get autoEdit;
  external bool get autoHeight;
  external String get cellFlashingCssClass;
  external String get cellHighlightCssClass;
  external get dataItemColumnValueExtractor;
  external num get defaultColumnWidth;
  external get defaultFormatter;
  external bool get editable;
  external get editCommandHandler;
  external get editorFactory;
  external get editorLock;
  external bool get enableAddRow;
  external bool get enableAsyncPostRender;
  external bool get enableCellNavigation;
  external bool get enableColumnReorder;
  external bool get enableTextSelectionOnCells;
  external bool get explicitInitialization;
  external bool get forceFitColumns;
  external bool get forceSyncScrolling;
  external get formatterFactory;
  external bool get fullWidthRows;
  external num get headerRowHeight;
  external bool get leaveSpaceForNewRows;
  external bool get multiColumnSort;
  external bool get multiSelect;
  external num get rowHeight;
  external String get selectedCellCssClass;
  external bool get showHeaderRow;
  external bool get syncColumnCellResize;
  external num get topPanelHeight;
  external bool get enableHeaderContextMenu;

  external factory SlickGridOptions({
    bool asyncEditorLoading: false,
    num asyncEditorLoadDelay: 100,
    num asyncPostRenderDelay: 50,
    bool autoEdit: true,
    bool autoHeight: false,
    String cellFlashingCssClass: 'flashing',
    String cellHighlightCssClass: 'selected',
    dataItemColumnValueExtractor,
    num defaultColumnWidth: 80,
    defaultFormatter,
    bool editable: false,
    editCommandHandler,
    editorFactory,
    editorLock,
    bool enableAddRow: false,
    bool enableAsyncPostRender: false,
    bool enableCellNavigation: true,
    bool enableColumnReorder: true,
    bool enableTextSelectionOnCells: false,
    bool explicitInitialization: false,
    bool forceFitColumns: false,
    bool forceSyncScrolling: false,
    formatterFactory,
    bool fullWidthRows: false,
    num headerRowHeight: 25,
    bool leaveSpaceForNewRows: false,
    bool multiColumnSort: false,
    bool multiSelect: true,
    num rowHeight: 25,
    String selectedCellCssClass: 'selected',
    bool showHeaderRow: false,
    bool syncColumnCellResize: false,
    num topPanelHeight: 25,
    bool enableHeaderContextMenu
  });
}
