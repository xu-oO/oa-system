package cn.edu.njit.oa.dao;

import cn.edu.njit.oa.entity.DealRecord;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author chencp
 */
@Repository("dealRecordDao")
public interface DealRecordDao {

    /**
     * 插入
     * @param dealRecord
     */
    void insert(DealRecord dealRecord);

    /**
     * 根据 claimVoucherId 查询
     * @param claimVoucherId
     * @return
     */
    List<DealRecord> selectByClaimVoucher(int claimVoucherId);


}
