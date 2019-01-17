package org.shop.service.impl;

import java.util.List;

import org.shop.dao.HwDao;
import org.shop.pojo.Hw;
import org.shop.service.HwService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HwServiceImpl implements HwService{
	
	@Autowired
	private HwDao hd;

	@Override
	public List<Hw> sp(Hw hw) {
		return hd.sp(hw);
	}

	@Override
	public int spxj(Hw hw) {
		return hd.spxj(hw);
	}

	@Override
	public int xjrk(Hw hw) {
		return hd.xjrk(hw);
	}

	public Hw dy(int id) {
		return hd.dy(id);
	}

	@Override
	public int ckkk(Hw hw) {
		return hd.ckkk(hw);
	}

	@Override
	public Hw dys(String name) {
		return hd.dys(name);
	}

	@Override
	public int jj(int id) {
		return hd.jj(id);
	}

	@Override
	public int updateHw(Hw hw) {
		return hd.updateHw(hw);
	}

	@Override
	public List<Hw> queryGoods() {
		return hd.queryGoods();
	}

	@Override
	public List<Hw> queryGoodByRepertoeyIdAndLocation(int repertoryId, String repertoryLocation) {
		return hd.queryGoodByRepertoeyIdAndLocation(repertoryId, repertoryLocation);
	}

	@Override
	public Hw queryGoodsById(int id) {
		return hd.queryGoodsById(id);
	}

	@Override
	public void modifyRepertory(int id, int repertoryId, String repertoryLocation) {
		hd.modifyRepertory(id, repertoryId, repertoryLocation);
		
	}

	
	
}
