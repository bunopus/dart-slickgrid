// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:dart_slickgrid/slickgrid-wrapper/slickgrid-wrapper.dart' as slick;

@Component(selector: 'my-app', templateUrl: 'app_component.html', encapsulation: ViewEncapsulation.None)
class AppComponent implements OnInit {
  AppComponent() {

  }

  void ngOnInit() {
    var columns = [
      new slick.Column(id: "title", name: "Title", field: "title")
    ];

    var items = [{"title":"Test1"}, {"title":"Test2"}, {"title":"Test3"}];

    var options = new slick.Options(enableColumnReorder:false);

    var grid = new slick.Grid("#myGrid", items, columns, options);
  }
}
