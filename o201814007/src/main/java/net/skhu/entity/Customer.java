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
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;


    String name;
    String email;
    String sex;
    String phone;

    @ManyToOne
    @JoinColumn(name = "salesmanId")
    Salesman salesman;


}

