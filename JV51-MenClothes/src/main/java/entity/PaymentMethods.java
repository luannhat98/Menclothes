package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "paymentmethods")
public class PaymentMethods {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    @OneToMany(mappedBy = "paymentId")
    private List<Orderr> orderListPayment;

    public PaymentMethods() {
    }

    public PaymentMethods(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
