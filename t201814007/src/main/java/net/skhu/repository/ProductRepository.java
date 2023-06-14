package net.skhu.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.entity.Product;
import net.skhu.model.Pagination;

public interface ProductRepository  extends JpaRepository<Product, Integer> {

    public default List<Product> findAll(Pagination pagination) {
        Page<Product> page = this.findAll(PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           Sort.Direction.ASC, "id"));
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }
//departmentid로 조회한 다음 페이지 단위로 보여주기
    Page<Product> findByCategoryId(int categoryId, Pageable pageable);


//    public default List<Student> findByDepartmentId(Pagination pagination) {
//        if (pagination.getDi() == 0) return findAll(pagination);
//        Page<Student> page = this.findByDepartmentId(pagination.getDi(),
//                PageRequest.of(pagination.getPg() - 1, pagination.getSz(), Sort.Direction.ASC, "id"));
//        pagination.setRecordCount((int)page.getTotalElements());
//        return page.getContent();
//    }

    Page<Product> findByCategoryTitleStartsWith(String categoryTitle, Pageable pageable);

    public default List<Product> findByCategoryTitle(Pagination pagination) {
        if (pagination.getCt().length()==0) return findAll(pagination);
        Page<Product> page = this.findByCategoryTitleStartsWith(pagination.getCt(),
                PageRequest.of(pagination.getPg() - 1, pagination.getSz(), Sort.Direction.ASC, "id"));
        pagination.setRecordCount((int) page.getTotalElements());
        return page.getContent();
    }

}