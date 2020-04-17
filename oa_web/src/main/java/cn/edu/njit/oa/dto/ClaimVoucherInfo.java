package cn.edu.njit.oa.dto;

import cn.edu.njit.oa.entity.ClaimVoucher;
import cn.edu.njit.oa.entity.ClaimVoucherItem;

import java.util.List;

/**
 * @author chencp
 */
public class ClaimVoucherInfo {
    private ClaimVoucher claimVoucher;
    private List<ClaimVoucherItem> items;

    public ClaimVoucher getClaimVoucher() {
        return claimVoucher;
    }

    public void setClaimVoucher(ClaimVoucher claimVoucher) {
        this.claimVoucher = claimVoucher;
    }

    public List<ClaimVoucherItem> getItems() {
        return items;
    }

    public void setItems(List<ClaimVoucherItem> items) {
        this.items = items;
    }
}
