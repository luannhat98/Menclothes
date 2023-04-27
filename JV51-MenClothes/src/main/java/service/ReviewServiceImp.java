package service;

import entity.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.ReviewRepository;

import java.util.List;

@Service
public class ReviewServiceImp implements ReviewService{
    @Autowired
    private ReviewRepository reviewRepository;

    @Override
    public void addReview(Review review) {
        reviewRepository.save(review);
    }

    @Override
    public List<Review> getReviewByIdProduct(int id) {
        return reviewRepository.getReviewByIdProduct(id);
    }

    @Override
    public Integer getCountByProductIdAndAccountId(int accountId, int productId) {
        return reviewRepository.getCountByProductIdAndAccountId(accountId,productId);
    }

    @Override
    public float getTotalStarByIdProduct(int id) {
        return reviewRepository.getTotalStarByIdProduct(id);
    }

    @Override
    public float getTimeOfReviewByIdProduct(int id) {
        return reviewRepository.getTimeOfReviewByIdProduct(id);
    }
}
