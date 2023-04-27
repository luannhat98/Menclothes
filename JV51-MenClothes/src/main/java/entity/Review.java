package entity;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "review")
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    @JoinColumn(name = "accountId")
    private User accountId;
    @ManyToOne
    @JoinColumn(name ="productId")
    private Product productId;
    private float star;
    private String comment;
    private LocalDateTime date;


    public Review() {
    }

    public Review(int id, User accountId, Product productId, float star, String comment, LocalDateTime date) {
        this.id = id;
        this.accountId = accountId;
        this.productId = productId;
        this.star = star;
        this.comment = comment;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getAccountId() {
        return accountId;
    }

    public void setAccountId(User accountId) {
        this.accountId = accountId;
    }

    public Product getProductId() {
        return productId;
    }

    public void setProductId(Product productId) {
        this.productId = productId;
    }

    public float getStar() {
        return star;
    }

    public void setStar(float star) {
        this.star = star;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }
}
