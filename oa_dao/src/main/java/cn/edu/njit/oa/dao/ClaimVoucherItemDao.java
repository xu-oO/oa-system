package cn.edu.njit.oa.dao;

import cn.edu.njit.oa.entity.ClaimVoucherItem;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author chencp
 */
@Repository("claimVoucherItemDao")
public interface ClaimVoucherItemDao {

    /**
     * 插入
     * @param claimVoucherItem
     */
    void insert(ClaimVoucherItem claimVoucherItem);

    /**
     * 更新
     * @param claimVoucherItem
     */
    void update(ClaimVoucherItem claimVoucherItem);

    /**
     * 删除
     * @param id
     */
    void delete(int id);

    /**
     * 根据 id 获取某报销单所属的所有报销单条目
     * @param claimVoucherId
     * @return
     */
    List<ClaimVoucherItem> selectByClaimVoucher(int claimVoucherId);

}
