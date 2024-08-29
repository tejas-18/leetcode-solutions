class RemoveDuplicatesfromSortedArray {
    public int removeDuplicates(int[] nums) {

        if (nums.length == 0) {
            return 0;
        }

        int i = 0; // Pointer for the position of unique elements

        for (int j = 1; j < nums.length; j++) {
            if (nums[j] != nums[i]) {
                i++;
                nums[i] = nums[j];
            }
        }

        return i + 1; // New length of the array with unique elements
    }
}
