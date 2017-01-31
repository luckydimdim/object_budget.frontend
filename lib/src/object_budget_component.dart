import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'dart:async';

import 'package:alert/alert_service.dart';
import 'package:js/js.dart';

import 'package:resources_loader/resources_loader.dart';

import 'package:grid/JsObjectConverter.dart';
import 'package:grid/jq_grid.dart';


@Component(selector: 'object-budget')
@View(
    templateUrl: 'object_budget_component.html',
    directives: const [RouterLink])
class ObjectBudgetComponent
    implements OnInit, OnDestroy {
  static const String route_name = "ObjectBudget";
  static const String route_path = "object-budget";
  static const Route route = const Route(
      path: ObjectBudgetComponent.route_path,
      component: ObjectBudgetComponent,
      name: ObjectBudgetComponent.route_name);

  final Router _router;
  final AlertService _alertService;
  final ResourcesLoaderService _resourcesLoaderService;

  ObjectBudgetComponent(this._router, this._alertService, this._resourcesLoaderService) {}

  @override
  void ngOnInit() {
    showGrid(
        "#grid", 'packages/object_budget/src/months_budget.json');
  }

  @override
  void ngOnDestroy() {}

  Future showGrid(String selector, url) async {
    var columns = new List<Column>();

    columns.add(new Column()
      ..dataField = 'Name'
      ..text = 'Наименование этапа/работы'
      ..width = '400px'
      ..pinned = true);

    var monthColumnWidth = '100px';

    columns.add(new Column()
      ..dataField = '01_2017'
      ..text = 'Январь'
      ..columnGroup = '2017'
      ..width = monthColumnWidth);

    columns.add(new Column()
      ..dataField = '02_2017'
      ..text = 'Февраль'
      ..columnGroup = '2017'
      ..width = monthColumnWidth);

    columns.add(new Column()
      ..dataField = '03_2017'
      ..text = 'Март'
      ..columnGroup = '2017'
      ..width = monthColumnWidth);

    columns.add(new Column()
      ..dataField = '04_2017'
      ..text = 'Апрель'
      ..columnGroup = '2017'
      ..width = monthColumnWidth);

    columns.add(new Column()
      ..dataField = '05_2017'
      ..text = 'Май'
      ..columnGroup = '2017'
      ..width = monthColumnWidth);

    columns.add(new Column()
      ..dataField = '06_2017'
      ..text = 'Июнь'
      ..columnGroup = '2017'
      ..width = monthColumnWidth);

    columns.add(new Column()
      ..dataField = '07_2017'
      ..text = 'Июль'
      ..columnGroup = '2017'
      ..width = monthColumnWidth);

    columns.add(new Column()
      ..dataField = '08_2017'
      ..text = 'Август'
      ..columnGroup = '2017'
      ..width = monthColumnWidth);

    columns.add(new Column()
      ..dataField = '09_2017'
      ..text = 'Сентябрь'
      ..columnGroup = '2017'
      ..width = monthColumnWidth);

    columns.add(new Column()
      ..dataField = '10_2017'
      ..text = 'Октябрь'
      ..columnGroup = '2017'
      ..width = monthColumnWidth);

    columns.add(new Column()
      ..dataField = '11_2017'
      ..text = 'Ноябрь'
      ..columnGroup = '2017'
      ..width = monthColumnWidth);

    columns.add(new Column()
      ..dataField = '12_2017'
      ..text = 'Декабрь'
      ..columnGroup = '2017'
      ..width = monthColumnWidth);

    var groups = new List<ColumnGroup>();

    groups.add(new ColumnGroup()
      ..name = '2017'
      ..text = '2017'
      ..align = 'center');
    groups.add(new ColumnGroup()
      ..name = '2017'
      ..text = '2018'
      ..align = 'center');

    var hierarchy = new Hierarchy()
      ..root = 'children';

    var source = new SourceOptions()
      ..url = url
      ..id = 'recid'
      ..hierarchy = hierarchy
      ..dataType = 'json';

    var options = new GridOptions()
      ..checkboxes = false
      ..source = source
      ..columnGroups = groups
      ..columns = columns;

    var _worksGrid = new jqGrid(this._resourcesLoaderService, selector,
        JsObjectConverter.convert(options));

    await _worksGrid.Init();
  }
}
