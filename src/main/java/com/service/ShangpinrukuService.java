package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShangpinrukuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShangpinrukuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShangpinrukuView;


/**
 * 商品入库
 *
 * @author 
 * @email 
 * @date 2020-10-24 18:10:15
 */
public interface ShangpinrukuService extends IService<ShangpinrukuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangpinrukuVO> selectListVO(Wrapper<ShangpinrukuEntity> wrapper);
   	
   	ShangpinrukuVO selectVO(@Param("ew") Wrapper<ShangpinrukuEntity> wrapper);
   	
   	List<ShangpinrukuView> selectListView(Wrapper<ShangpinrukuEntity> wrapper);
   	
   	ShangpinrukuView selectView(@Param("ew") Wrapper<ShangpinrukuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangpinrukuEntity> wrapper);
   	
}

