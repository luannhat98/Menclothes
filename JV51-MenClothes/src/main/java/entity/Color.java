package entity;

import javax.persistence.*;
import java.util.List;
@Entity
@Table(name = "color")
public class Color {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    @OneToMany(mappedBy = "colorId")
    private List<ProductSizeColor> listProductColor;

    public Color() {
    }

    public Color(int id, String name, List<ProductSizeColor> listProductColor) {
        this.id = id;
        this.name = name;
        this.listProductColor = listProductColor;
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

    public List<ProductSizeColor> getListProductColor() {
        return listProductColor;
    }

    public void setListProductColor(List<ProductSizeColor> listProductColor) {
        this.listProductColor = listProductColor;
    }
}
