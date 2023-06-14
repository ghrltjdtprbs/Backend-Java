package net.skhu.model;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import lombok.Data;

@Data
public class Pagination {
    int pg = 1;        // 현재 페이지
    int sz = 10;       // 페이지 당 레코드 수
    int ci = 0;        // departmentId
   String ct = "";		//departmentName
    int recordCount;   // 전체 레코드 수

    //조회조건이 String이면 String 인코딩해서 넣어줘야함
//    public String getQueryString() {
//        return String.format("pg=%d&sz=%d&di=%d", pg, sz, di);
//    }

    public String getQueryString() {
    	String ect = "";
    	try {
    		ect = URLEncoder.encode(ct, "UTF-8");
    	} catch (UnsupportedEncodingException e) {
    		e.printStackTrace();
    	}
    	return String.format("pg=%d&sz=%d&ct=%s", pg, sz, ect);
    }



}