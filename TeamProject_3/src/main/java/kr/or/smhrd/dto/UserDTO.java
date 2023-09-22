package kr.or.smhrd.dto;
import java.sql.Blob;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {
    private String uId; // u_id
    private String uPw; // u_pw
    private String uName; // u_name
    private String uEmail; // u_email
    private String uPhone; // u_phone
    private Date uBirthdate; // u_birthdate
    private String uGender; // u_gender
    private Blob uPhoto; // u_photo (BLOB)
    private Date uJoinDate; // u_joindate
    private String uType; // u_type
}
