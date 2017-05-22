import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

@Component(
    selector: 'object-budget',
    templateUrl: 'object_budget_component.html',
    directives: const [RouterLink])
class ObjectBudgetComponent implements OnInit, OnDestroy {
  static const String route_name = 'ObjectBudget';
  static const String route_path = 'object-budget';
  static const Route route = const Route(
      path: ObjectBudgetComponent.route_path,
      component: ObjectBudgetComponent,
      name: ObjectBudgetComponent.route_name);

  ObjectBudgetComponent();

  void breadcrumbInit() {}

  @override
  void ngOnInit() {
    breadcrumbInit();
  }

  @override
  void ngOnDestroy() {}
}
