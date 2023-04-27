package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String username;
    private String password;
    private int enabled;
    @ManyToOne
    @JoinColumn(name = "roleId")
    private Role roleId;
    @OneToOne(mappedBy = "account")
    private Customer customer;
    @OneToMany(mappedBy = "accountId")
    private List<Orderr> listOrderFromUser;
    @OneToMany(mappedBy = "accountId")
    private List<Review> reviewList;

    public User() {
    }

    public User(int id, String username, String password, int enabled, Role roleId, Customer customer, List<Orderr> listOrderFromUser, List<Review> reviewList) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.enabled = enabled;
        this.roleId = roleId;
        this.customer = customer;
        this.listOrderFromUser = listOrderFromUser;
        this.reviewList = reviewList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getEnabled() {
        return enabled;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }

    public Role getRoleId() {
        return roleId;
    }

    public void setRoleId(Role roleId) {
        this.roleId = roleId;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public List<Orderr> getListOrderFromUser() {
        return listOrderFromUser;
    }

    public void setListOrderFromUser(List<Orderr> listOrderFromUser) {
        this.listOrderFromUser = listOrderFromUser;
    }

    public List<Review> getReviewList() {
        return reviewList;
    }

    public void setReviewList(List<Review> reviewList) {
        this.reviewList = reviewList;
    }
}
