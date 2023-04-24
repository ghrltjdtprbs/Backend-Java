package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.skhu.dto.Person;
import net.skhu.model.Pagination;

@Mapper
public interface PersonMapper {

    @Select("""
        SELECT p.*, c.title categoryTitle
        FROM person p LEFT JOIN category c ON p.categoryCode = c.code
        ORDER BY p.pid
        LIMIT #{firstRecordIndex}, #{sz} """)
    List<Person> findAll(Pagination pagination);

    @Select("SELECT COUNT(pid) FROM person")
    int getCount();

    @Select("SELECT * FROM person WHERE pid = #{pid}")
    Person findOne(int pid);

    @Insert("""
        INSERT person ( name, categoryCode, gender, phone, email, title)
        VALUES (#{name}, #{categoryCode}, #{gender}, #{phone}, #{email}, #{title}) """)
    void insert(Person person);

    @Update("""
        UPDATE person SET
          name = #{name},
          categoryCode = #{categoryCode},
          gender = #{gender},
          phone = #{phone},
          email = #{email},
          title = #{title}
        WHERE pid = #{pid} """)
    void update(Person person);

    @Delete("DELETE FROM person WHERE pid = #{pid}")
    void deleteById(int pid);
}

