package net.skhu.entity;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Index;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@Entity
@AllArgsConstructor //생성자 자동 설정 / 모든 멤버 변수 값이 생성자 파라미터가 된다.
@Table(indexes = { @Index(name="IDX_STUDENTNO", columnList="studentNo", unique=true) }) //데이터베이스 인덱스 자동 생성
public class Student {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    int id;

    @Column(nullable=false, length=15)
    String studentNo;

    @Column(nullable=false, length=50)
    String name;

    @Column(nullable=false)
    LocalDate birthDate;

    @ManyToOne
    @JoinColumn(name="departmentId", nullable=false)
    Department department;
}
