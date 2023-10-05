package kr.or.smhrd.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SubscriptionDTO {
    private String n_no; 
    private String u_id;
    private String n_title; 
    private String n_reporter; 
    private Date n_writedate; 
    private String n_content; 
    private String n_hit;
    private String n_source; 
 }

