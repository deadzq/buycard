package com.ykmimi.newindex.mapper;

import com.ykmimi.newindex.bean.MemberCard;

import java.util.List;

public interface MemberCardMapper {

    //根据给定卡种ID返回该卡种的List集合
    List<MemberCard> showCardList(int cardType);

    //动态获取会员卡数据
    List<MemberCard> selectMemberCardSelective(MemberCard memberCard);

    //动态插入会员卡数据
    Integer insertSelective(MemberCard membercard);

    //动态升级会员卡数据
    Integer updateByPrimaryKeySelective(MemberCard memberCard);
}
