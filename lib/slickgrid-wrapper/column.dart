part of slickgrid;

@JS()
@anonymous
class SlickGridColumn{
  external get asyncPostRender;
  external get behavior;
  external get cannotTriggerInsert;
  external String get cssClass;
  external bool get defaultSortAsc;
  external get editor;
  external String get field;
  external bool get focusable;
  external get formatter;
  external String get headerCssClass;
  external String get id;
  external num get maxWidth;
  external num get minWidth;
  external String get name;
  external bool get rerenderOnResize;
  external bool get resizable;
  external bool get removable;
  external bool get isDraggable;
  external bool get isGroupable;
  external bool get selectable;
  external bool get sortable;
  external get toolTip;
  external num get width;
  external bool get fillScreenByDefault;

  external factory SlickGridColumn({
    asyncPostRender,
    behavior,
    cannotTriggerInsert,
    String cssClass,
    bool defaultSortAsc: true,
    editor,
    String field,
    bool focusable: true,
    formatter,
    String headerCssClass,
    String id,
    num maxWidth,
    num minWidth: 30,
    String name,
    bool rerenderOnResize: false,
    bool resizable: true,
    bool selectable: true,
    bool sortable: false,
    toolTip,
    width,
    bool isDraggable,
    bool removable,
    bool isGroupable: true,
    bool fillScreenByDefault
  });
}
