package cn.edu.njit.oa.dao;

import cn.edu.njit.oa.entity.ClaimVoucher;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author chencp
 */
@Repository("claimVoucherDao")
public interface ClaimVoucherDao {

    /**
     * 插入
     * @param claimVoucher
     */
    void insert(ClaimVoucher claimVoucher);

    /**
     * 更新
     * @param claimVoucher
     */
    void update(ClaimVoucher claimVoucher);

    /**
     * 根据 id 删除
     * @param id
     */
    void delete(int id);

    /**
     * 根据 id 查询
     * @param id
     * @return
     */
    ClaimVoucher select(int id);

    /**
     * 根据创建人id查看个人报销单
     * @param cid
     * @return
     */
    List<ClaimVoucher> selectByCreateId(String cid);

    /**
     * 根据待处理人id查看待处理报销单
     * @param ndid
     * @return
     */
    List<ClaimVoucher> selectByNextDealId(String ndid);
}
