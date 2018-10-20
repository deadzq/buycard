package com.ykmimi.newindex.controller;

import com.ykmimi.newindex.bean.MemberCard;
import com.ykmimi.newindex.mapper.MemberCardMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class MemberCardController {

    @Resource
    private MemberCardMapper memberCardMapper;

    //查询membercard表中MCARD_TYPEID字段为cardType的会员卡List集合
    @RequestMapping("cardList")
    public List<MemberCard> showCardList(int cardType){
        //select * from membercard where MCARD_TYPEID = #{cardType}
        System.out.println("get parameter from showCards0.jsp : "+cardType);
        return memberCardMapper.showCardList(cardType);
    }

    //动态获取会员卡数据
    @RequestMapping("selectMemberCardSelective")
    public List<MemberCard> selectMemberCardSelective(MemberCard memberCard){
        return memberCardMapper.selectMemberCardSelective(memberCard);
    }

    //动态插入会员卡数据 会员卡号,会员卡类别,会员卡状态 必填
    @RequestMapping("insertSelective")
    public Integer insertSelective(MemberCard memberCard){
        return memberCardMapper.insertSelective(memberCard);

    }

    //动态更新会员卡信息
    @RequestMapping("updateSelective")
    public Integer updateByPrimaryKeySelective(MemberCard memberCard){
        return memberCardMapper.updateByPrimaryKeySelective(memberCard);
    }
}
