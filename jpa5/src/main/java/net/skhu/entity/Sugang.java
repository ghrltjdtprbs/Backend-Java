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
public class Sugang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    boolean repeated;
    boolean cancel;
    String grade;

    @ManyToOne
    @JoinColumn(name = "studentId")
    Student student;

    @ManyToOne
    @JoinColumn(name = "lectureId")
    Lecture lecture;
}

