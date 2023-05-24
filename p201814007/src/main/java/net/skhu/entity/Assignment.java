package net.skhu.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Data
@Entity
public class Assignment {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    int engineerId;


    @ManyToOne
    @JoinColumn(name = "projectId")
    Project project;
}