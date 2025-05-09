public class BinarySearchExample {
    
    public static Integer binarySearch(List<Integer> sortedList, Integer target) {
        Integer left = 0;
        Integer right = sortedList.size() - 1;

        while (left <= right) {
            Integer mid = left + (right - left) / 2;
            Integer midValue = sortedList[mid];

            if (midValue == target) {
                return mid; // Target found at index mid
            } else if (midValue < target) {
                left = mid + 1; // Search right half
            } else {
                right = mid - 1; // Search left half
            }
        }
        return -1; // Target not found
    }

    public static void testBinarySearch() {
        List<Integer> myList = new List<Integer>{2, 4, 7, 10, 15, 20, 25};
        Integer target = 15;

        Integer result = binarySearch(myList, target);

        if (result != -1) {
            System.debug('Target found at index: ' + result);
        } else {
            System.debug('Target not found');
        }
    }
}
