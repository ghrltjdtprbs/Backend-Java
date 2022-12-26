package net.skhu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class Jumoon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    int quantity;


    @ManyToOne
    @JoinColumn(name = "customerId")
    Customer customer;

}

