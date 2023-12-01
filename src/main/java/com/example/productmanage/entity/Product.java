package com.example.productmanage.entity;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "tblProduct")
//@NamedQueries({
//        @NamedQuery(name = "product.findAll", query = "from Product")
//})
public class Product {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long productId;

    @Column(length = 40, unique = true, nullable = false)
    private String productName;

    @Column(length = 40, unique = true, nullable = false)
    private String description;


    @ManyToOne
    @JoinColumn(name="manId")
    private Manufacturer manuf;

	public Product() {
		
	}
	
	public Product(String productName, String description, Manufacturer manuf) {
		super();
		this.productName = productName;
		this.description = description;
		this.manuf = manuf;
	}

	public Long getProductId() {
		return productId;
	}


	public void setProductId(Long productId) {
		this.productId = productId;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public Manufacturer getManuf() {
		return manuf;
	}


	public void setManuf(Manufacturer manuf) {
		this.manuf = manuf;
	}


	@Override
	public int hashCode() {
		return Objects.hash(productId);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return Objects.equals(productId, other.productId);
	}


	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", description=" + description
				+ ", manuf=" + manuf + "]";
	}
}
