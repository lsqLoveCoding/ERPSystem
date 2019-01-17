package org.shop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.shop.pojo.Hw;

public interface HwDao {
	List<Hw> queryGoods();
	Hw queryGoodsById(@Param(value = "id")int id);
	List<Hw> queryGoodByRepertoeyIdAndLocation(@Param(value = "repertoryId") int repertoryId,
			@Param(value = "repertoryLocation") String repertoryLocation);
	List<Hw>  sp(Hw hw);
	int   spxj(Hw hw);
	int  xjrk(Hw hw);
	int jj(int id);
	Hw  dy(int id);
	int ckkk(Hw hw);
	Hw dys(String name);
	int updateHw(Hw hw);
	public void modifyRepertory(@Param(value = "id")int id,
			@Param(value = "repertoryId")int repertoryId,@Param(value = "repertoryLocation")String repertoryLocation);
}
