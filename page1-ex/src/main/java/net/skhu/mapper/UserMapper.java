package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.skhu.dto.User;
import net.skhu.model.Pagination;

@Mapper
public interface UserMapper {

    @Select("""
        SELECT u.*, d.name departmentName
        FROM user u LEFT JOIN department d ON u.departmentId = d.id
        ORDER BY u.id
        LIMIT #{firstRecordIndex}, #{sz} """)
    List<User> findAll(Pagination pagination);

    @Select("SELECT COUNT(id) FROM user")
    int getCount();

    @Select("SELECT * FROM user WHERE id = #{id}")
    User findOne(int id);

    @Insert("""
        INSERT user (studentNo, name, departmentId, sex, phone, email)
        VALUES (#{password},#{userType}, #{name}, #{departmentId}, #{loginName}, #{enabled}, #{email}) """)
    void insert(User user);

    @Update("""
        UPDATE user SET
          password = #{password},
          name = #{name},
          departmentId = #{departmentId},
          userType = #{userType},
          loginName = #{loginName},
          email = #{email}
          enabled = #{enabled}
        WHERE id = #{id} """)
    void update(User user);

    @Delete("DELETE FROM user WHERE id = #{id}")
    void deleteById(int id);
}

