package entity;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
@Entity
@Table(name = "orderr")
public class Orderr {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    @JoinColumn(name = "accountId")
    private User accountId;
    private LocalDate orderDate;
    private float amount;
    @OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "shipmentId", referencedColumnName = "id")
    private Shipment shipmentId;
    @ManyToOne
    @JoinColumn(name = "statusId")
    private Status statusId;
    @OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "promoId", referencedColumnName = "id")
    private Promo promoId;
    @ManyToOne
    @JoinColumn(name = "paymentId")
    private PaymentMethods paymentId;
    @OneToMany(mappedBy = "order")
    private List<OrderDetails> orderDetailsList;

    public Orderr() {
    }

    public Orderr(int id, User accountId, LocalDate orderDate, float amount, Shipment shipmentId, Status statusId, Promo promoId, PaymentMethods paymentId, List<OrderDetails> orderDetailsList) {
        this.id = id;
        this.accountId = accountId;
        this.orderDate = orderDate;
        this.amount = amount;
        this.shipmentId = shipmentId;
        this.statusId = statusId;
        this.promoId = promoId;
        this.paymentId = paymentId;
        this.orderDetailsList = orderDetailsList;
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

    public LocalDate getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDate orderDate) {
        this.orderDate = orderDate;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public Shipment getShipmentId() {
        return shipmentId;
    }

    public void setShipmentId(Shipment shipmentId) {
        this.shipmentId = shipmentId;
    }

    public Status getStatusId() {
        return statusId;
    }

    public void setStatusId(Status statusId) {
        this.statusId = statusId;
    }

    public Promo getPromoId() {
        return promoId;
    }

    public void setPromoId(Promo promoId) {
        this.promoId = promoId;
    }

    public PaymentMethods getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(PaymentMethods paymentId) {
        this.paymentId = paymentId;
    }

    public List<OrderDetails> getOrderDetailsList() {
        return orderDetailsList;
    }

    public void setOrderDetailsList(List<OrderDetails> orderDetailsList) {
        this.orderDetailsList = orderDetailsList;
    }


    //  get String Amount
    public String getSubtotal() {
        return String.format("%.2f", amount);
    }

    // get String tax
    public String getTax() {
        return String.format("%.2f", amount*5/100);
    }

    // get String total
    public String getTotal() {
        return String.format("%.2f", amount + amount*5/100);
    }

}
