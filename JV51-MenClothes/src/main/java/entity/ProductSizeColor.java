package entity;

import javax.persistence.*;

@Entity
@Table(name = "productsizecolor")
public class ProductSizeColor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    @JoinColumn(name = "productId")
    private Product productId;
    @ManyToOne
    @JoinColumn(name = "sizeId")
    private Size sizeId;
    @ManyToOne
    @JoinColumn(name = "colorId")
    private Color colorId;
    private int quantity;

    public ProductSizeColor() {
    }

    public ProductSizeColor(int id, Product productId, Size sizeId, Color colorId, int quantity) {
        this.id = id;
        this.productId = productId;
        this.sizeId = sizeId;
        this.colorId = colorId;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Product getProductId() {
        return productId;
    }

    public void setProductId(Product productId) {
        this.productId = productId;
    }

    public Size getSizeId() {
        return sizeId;
    }

    public void setSizeId(Size sizeId) {
        this.sizeId = sizeId;
    }

    public Color getColorId() {
        return colorId;
    }

    public void setColorId(Color colorId) {
        this.colorId = colorId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
