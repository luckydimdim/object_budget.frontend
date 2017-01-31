import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:alert/alert_service.dart';
import 'package:js/js.dart';

@Component(selector: 'object-budget')
@View(
    templateUrl: 'object_budget_component.html',
    directives: const [RouterLink])
class ObjectBudgetComponent implements OnInit, OnDestroy {
  static const String route_name = "ObjectBudgetComponent";
  static const String route_path = "object-budget-component";
  static const Route route = const Route(
      path: ObjectBudgetComponent.route_path,
      component: ObjectBudgetComponent,
      name: ObjectBudgetComponent.route_name);

  final Router _router;
  final AlertService _alertService;

  ObjectBudgetComponent(this._router, this._alertService) {}

  @override
  void ngOnInit() {}

  @override
  void ngOnDestroy() {}
}
