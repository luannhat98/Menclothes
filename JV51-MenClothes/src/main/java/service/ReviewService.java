package service;

import entity.Review;

import java.util.List;

public interface ReviewService {
    public void addReview(Review review);
    public List<Review> getReviewByIdProduct(int id);
    public Integer getCountByProductIdAndAccountId(int accountId, int productId);
    public float getTotalStarByIdProduct(int id);
    public float getTimeOfReviewByIdProduct(int id);
}
