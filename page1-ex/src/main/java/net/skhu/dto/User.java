package net.skhu.dto;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import lombok.Data;
@Data
public class User {
	int id;

    @NotEmpty
    @NotBlank
    String password;

    @NotEmpty
    @NotBlank
    String name;

    int departmentId;
    String loginName;
    String userType;

    @Email
    String email;

    int enabled;



}
