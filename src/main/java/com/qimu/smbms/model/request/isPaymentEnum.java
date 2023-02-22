package com.qimu.smbms.model.request;

/**
 * @author: QiMu
 * @Date: 2023年02月21日 10:55
 * @Version:1.0
 * @Description:
 */
public enum isPaymentEnum {
    /**
     * 已支付
     */
    PAY_SUCCESS(2, "已支付"),
    PAY_ERROR(1, "未支付");
    private final int isPayment;
    private final String PayStatus;

    isPaymentEnum(int isPayment, String payStatus) {
        this.isPayment = isPayment;
        this.PayStatus = payStatus;
    }

    public int getIsPayment() {
        return isPayment;
    }

    public String getPayStatus() {
        return this.PayStatus;
    }
}
