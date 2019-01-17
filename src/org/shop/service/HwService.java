package org.shop.service;

import java.util.List;

import org.shop.pojo.Hw;

public interface HwService {
	List<Hw> queryGoods();
	Hw queryGoodsById(int id);
	List<Hw> queryGoodByRepertoeyIdAndLocation(int repertoryId, String repertoryLocation);
	int jj(int id);
	List<Hw>  sp(Hw hw);
	int   spxj(Hw hw);
	int  xjrk(Hw hw);
	Hw  dy(int id);
	int ckkk(Hw hw);
	Hw dys(String name);
	int updateHw(Hw hw);
	public void modifyRepertory(int id,	int repertoryId,String repertoryLocation);
}
