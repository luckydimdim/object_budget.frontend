import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:alert/alert_service.dart';

import 'package:resources_loader/resources_loader.dart';
@Component(selector: 'object-budget')
@View(
    templateUrl: 'object_budget_component.html',
    directives: const [RouterLink])
class ObjectBudgetComponent
    implements OnInit, OnDestroy {
  static const String route_name = 'ObjectBudget';
  static const String route_path = 'object-budget';
  static const Route route = const Route(
      path: ObjectBudgetComponent.route_path,
      component: ObjectBudgetComponent,
      name: ObjectBudgetComponent.route_name);

  final Router _router;
  final AlertService _alertService;
  final ResourcesLoaderService _resourcesLoaderService;

  ObjectBudgetComponent(this._router, this._alertService, this._resourcesLoaderService) {}

  void breadcrumbInit(){

  }

  @override
  void ngOnInit() {
    breadcrumbInit();
  }

  @override
  void ngOnDestroy() {}
}