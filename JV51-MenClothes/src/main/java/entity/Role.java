package entity;

import javax.persistence.*;
import java.util.List;
@Entity
@Table(name = "user_role")
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String role;
    @OneToMany(mappedBy = "roleId")
    private List<User> accountList;
    private String username;

    public Role() {
    }

    public Role(int id, String roleName, List<User> accountList, String username) {
        this.id = id;
        this.role = roleName;
        this.accountList = accountList;
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String roleName) {
        this.role = roleName;
    }

    public List<User> getAccountList() {
        return accountList;
    }

    public void setAccountList(List<User> accountList) {
        this.accountList = accountList;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
