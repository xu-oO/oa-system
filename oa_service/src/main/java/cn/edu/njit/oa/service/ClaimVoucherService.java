package cn.edu.njit.oa.service;

import cn.edu.njit.oa.entity.DealRecord;
import cn.edu.njit.oa.entity.ClaimVoucher;
import cn.edu.njit.oa.entity.ClaimVoucherItem;

import java.util.List;

/**
 * @author chencp
 */
public interface ClaimVoucherService {

    /**
     * 保存报销单
     * @param claimVoucher
     * @param items
     */
    void save(ClaimVoucher claimVoucher, List<ClaimVoucherItem> items);

    /**
     * 获取报销单
     * @param id
     * @return
     */
    ClaimVoucher get(int id);

    /**
     * 获取报销单条目
     * @param claimVoucherId
     * @return
     */
    List<ClaimVoucherItem> getItems(int claimVoucherId);

    /**
     * 获取处理记录
     * @param claimVoucherId
     * @return
     */
    List<DealRecord> getRecords(int claimVoucherId);

    /**
     * 获取个人报销单
     * @param id
     * @return
     */
    List<ClaimVoucher> getForSelf(String id);

    /**
     * 获取待处理报销单
     * @param id
     * @return
     */
    List<ClaimVoucher> getForDeal(String id);

    /**
     * 修改报销单
     * @param claimVoucher
     * @param items
     */
    void update(ClaimVoucher claimVoucher, List<ClaimVoucherItem> items);

    /**
     * 提交表单
     * @param id
     */
    void submit(int id);

    /**
     * 报销单审核与打款
     * @param dealRecord
     */
    void deal(DealRecord dealRecord);
}
