package com.ykmimi.newindex.mapper;


import com.ykmimi.newindex.bean.Member;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;


public interface MemberMapper {
    //根据会员id删除会员
    int deleteByPrimaryKey(Long memberId);
    //插入会员
    int insert(Member member);
    //动态插入
    int insertSelective(Member member);
    //根据id返回会员信息
    Member selectByPrimaryKey(Long memberId);
    //动态查询会员实例
    List<Member> selectMemberSelective(Member member);
    //根据动态字段升级会员信息
    int updateByPrimaryKeySelective(Member member);
    //升级会员信息(一般不用)
    int updateByPrimaryKey(Member member);
}