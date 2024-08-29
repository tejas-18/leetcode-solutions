class  BestTimetoBuyandSellStock {
    public int maxProfit(int[] prices) {

        //idea is to remember minOnLeft
        //remember -> here you have to think in terms of DP

        int minPrice = Integer.MAX_VALUE;
        int maxProfit = 0;

        for (int price : prices) {
            minPrice = Math.min(minPrice, price);
            maxProfit = Math.max(maxProfit, price - minPrice);
        }

        return maxProfit;
    }
}