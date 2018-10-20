package com.ykmimi.newindex.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ykmimi.newindex.bean.Member;
import com.ykmimi.newindex.mapper.MemberMapper;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class MemberController {

    @Resource
    private MemberMapper memberMapper;

    //动态插入会员数据
    @RequestMapping("insertOne")
    public Map<String,Object> insertMemberSelective(Member member){
        Map<String,Object> map = new HashMap<String,Object>();
        int insertCode =  memberMapper.insertSelective(member);
        map.put("code",insertCode);
        if(insertCode>0){
            map.put("message","OK");
        }else{
            map.put("message","X");
        }
        return map;
    }


//    public List<Member> selectMemberSelective(Member member){
//        return memberMapper.selectMemberSelective(member);
//    }

    //动态获取会员数据
    @RequestMapping("selectMemberSelective")
    public Map selectMemberSelective(Member member,Integer page,Integer rows){
        System.out.println("page:"+page);
        Map<String,Object> map = new HashMap<String,Object>();
        PageHelper.startPage(page,rows);
        List list = memberMapper.selectMemberSelective(member);
        PageInfo<Member> pageInfo = new PageInfo<Member>(list);

        map.put("rows",pageInfo.getList());
        map.put("total",pageInfo.getTotal());

        return map;
    }

    //根据会员ID删除会员信息
    @RequestMapping("deleteByPrimaryKey")
    public Integer deleteByPrimaryKey(Long memberId){
        return memberMapper.deleteByPrimaryKey(memberId);
    }

}
