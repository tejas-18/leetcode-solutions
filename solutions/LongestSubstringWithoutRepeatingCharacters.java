class Solution {
    public int lengthOfLongestSubstring(String s) {

        int n = s.length();
        int maxLen = 0;
        int left = 0;

        HashSet<Character> set = new HashSet<>();

        for (int right = 0; right < n; right++) {
            // If character already exists, remove characters from the left
            while (set.contains(s.charAt(right))) {
                set.remove(s.charAt(left));
                left++;
            }
            // Add the current character
            set.add(s.charAt(right));
            maxLen = Math.max(maxLen, right - left + 1);
        }

        return maxLen;


    }
}