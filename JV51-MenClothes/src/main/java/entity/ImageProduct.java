package entity;

import javax.persistence.*;

@Entity
@Table(name = "imageproduct")
public class ImageProduct {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String image;
    @ManyToOne
    @JoinColumn(name = "productId")
    private Product productId;
    private int represent;

    public ImageProduct() {
    }

    public ImageProduct(int id, String image, Product productId, int represent) {
        this.id = id;
        this.image = image;
        this.productId = productId;
        this.represent = represent;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Product getProductId() {
        return productId;
    }

    public void setProductId(Product productId) {
        this.productId = productId;
    }

    public int getRepresent() {
        return represent;
    }

    public void setRepresent(int represent) {
        this.represent = represent;
    }
}
