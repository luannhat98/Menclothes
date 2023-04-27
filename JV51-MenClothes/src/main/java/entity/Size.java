package entity;

import javax.persistence.*;
import java.util.List;
@Entity
@Table(name = "size")
public class Size {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    @OneToMany(mappedBy = "sizeId")
    private List<ProductSizeColor> listProductSize;

    public Size() {
    }

    public Size(int id, String name, List<ProductSizeColor> listProductSize) {
        this.id = id;
        this.name = name;
        this.listProductSize = listProductSize;
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

    public List<ProductSizeColor> getListProductSize() {
        return listProductSize;
    }

    public void setListProductSize(List<ProductSizeColor> listProductSize) {
        this.listProductSize = listProductSize;
    }
}
