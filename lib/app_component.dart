// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:dart_slickgrid/slickgrid-wrapper/grid.dart' as slick;

@Component(selector: 'my-app', templateUrl: 'app_component.html', encapsulation: ViewEncapsulation.None)
class AppComponent implements OnInit {
  AppComponent() {

  }

  void ngOnInit() {
    var columns = [
      new slick.SlickGridColumn(id: "title", name: "Title", field: "title")
    ];

    var dataViewOptions = new slick.SlickDataViewOptions(
        groupItemMetadataProvider: new slick.SlickDataGroupItemMetadataProvider(),
        inlineFilters: true
    );

    var dataview = new slick.SlickDataView(dataViewOptions);

    var items = [{"title":"Test1"}, {"title":"Test2"}, {"title":"Test3"}];

    var options = new slick.SlickGridOptions(enableColumnReorder:false);

    var grid = new slick.SlickGrid("#myGrid", dataview, columns, options);

    dataview.setItems(items, "title");
    dataview.refresh();
  }
}
