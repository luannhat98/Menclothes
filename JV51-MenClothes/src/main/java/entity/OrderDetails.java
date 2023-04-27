package entity;

import javax.persistence.*;

@Entity
@Table(name = "orderdetails")
public class OrderDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @OneToOne
    @JoinColumn(name = "productId",referencedColumnName = "id")
    private Product productId;
    @ManyToOne
    @JoinColumn(name = "orderId")
    private Orderr order;
    private float amount;
    private int quantity;

    public OrderDetails() {
    }

    public OrderDetails(int id, Product productId, Orderr order, float amount, int quantity) {
        this.id = id;
        this.productId = productId;
        this.order = order;
        this.amount = amount;
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

    public Orderr getOrder() {
        return order;
    }

    public void setOrder(Orderr order) {
        this.order = order;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
