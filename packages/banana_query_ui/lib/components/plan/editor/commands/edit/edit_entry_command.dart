
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/plan/day/plan_entry.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:banana_query_core/portions/food_portion.dart';
import 'package:colonel/command_base.dart';

class EditEntryCommand extends CommandBase {
  EditEntryCommand(
      {required this.plan, required this.entry,
        required this.food,
        required this.portion,
        required this.portionQuantity,
      })
      : oldFood = PortionedFood(
            item: plan.foodItems[entry.foodUid]!,
            quantity: entry.quantity,
            portion: entry.portion);

  final MealPlan plan;
  final PlanEntry entry;

  /// We create this object to store the value that was present before we modified
  /// the entry. This object does not represent the actual entry in the food plan
  /// but represents a food item associated with a portion and quantity.
  final PortionedFood oldFood;

  /// This is what comes back from the edit food item modal. We use the information
  /// from this object to create the new PlanEntry object that will replace the
  /// field we are editing.
  final PortionedFood food;
  final double portionQuantity;
  final FoodPortion portion;

  @override
  Future<bool> execute() {
    /// We are safe to always replace the food item regardless if it was modified or not
    /// this is because if the item was not changed then this will have no effect on the plan information
    /// and if the item was changed then this replacement is desired.
    plan.foodItems[food.item.id] = food.item;

    // note: the food uid in the entry doesn't change we editing
    entry.portion = food.portion;
    entry.quantity = food.quantity;
    executionState = ExecutionState.executed;
    return Future.value(true);
  }

  @override
  Map<String, dynamic> toJson() => {
        "plan": plan.toJson(),
        "entry": entry.toJson(),
        "food": food.toJson(),
        "oldFood": oldFood.toJson(),
      };

  @override
  String get type => "EditEntryCommand";

  @override
  Future<bool> undo() {
    assertCanUndo();
    plan.foodItems[food.item.id] = oldFood.item;
    entry.portion = oldFood.portion;
    entry.quantity = oldFood.quantity;
    executionState = ExecutionState.undone;
    return Future.value(true);
  }

  @override
  bool get isUndoable => true;

  @override
  Future<bool> redo() {
    assertCanRedo();
    return execute().then((value) {
      executionState = ExecutionState.redone;
      return value;
    });
  }
}
