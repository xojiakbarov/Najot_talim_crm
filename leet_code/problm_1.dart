/// 1. Two Sum
/// Companies
/// Given an array of integers nums and an integer target,
/// return indices of the two numbers such that they add up to target.

/// You may assume that each input would have exactly one solution,
///  and you may not use the same element twice.

/// You can return the answer in any order.
void main(List<String> args) {
  var nums = [2, 7, 11, 15];
  int target = 9;
  final map = <int, int>{};

  for (int i = 0; i <= nums.length; i++) {
    int cur = target - nums[i];
    if (map.containsKey(cur)) {
      print([i, map[cur]]);
    }
    map[nums[i]] = i;
  }
}