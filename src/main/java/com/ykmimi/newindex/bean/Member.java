package com.ykmimi.newindex.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
    private Long memberId;

    private String memberName;

    private Long memberPhone;

    private Integer memberSexual;

    private String memberAddr;

    private Long memberIdentity;

    private String memberCarnumber;

    private String memberLoginname;

    private String memberPassword;

    private Integer memberType;

    private String memberCardid;

    private String memberNickname;

    private Long memberPoints;

    private Integer receiveAddrid;

    private String memberPic;

    private Date regDate;

    private Date updateDate;

    private Date lastLogindate;

    private Date lastOutdate;

    private Boolean expand01;

    private Boolean expand02;

    private Boolean expand03;

    private Boolean expand04;

}