package entity;

import com.paypal.api.payments.*;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;
import entity.Orderr;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


public class PaymentServices {
    private static final String CLIENT_ID = "AVMIFHSt3BJsdMCHTci7On4wnBEKCdCJNEM4irnRxCF0X9auVLbTte9eYbe61UnajyQxypqcZdLCrMMK";
    private static final String CLIENT_SECRET = "EM8-DtHMRKyPfUFcByiRIWvYm3-SAEHQSAeqI1cId3BkgROjKvOIRvs0uNhliagMenEoL2IcXzapGFtX";
    private static final String MODE = "sandbox";

    public String authorizePayment(Orderr orderr) throws PayPalRESTException {
        Payer payer = getPayerInformation();
        RedirectUrls redirectUrls = getRedirectUrls();
        List<Transaction> listTransaction = getTransactionInfomation(orderr);

        Payment requestPayment = new Payment();
        requestPayment.setTransactions(listTransaction)
                      .setRedirectUrls(redirectUrls)
                      .setPayer(payer)
                      .setIntent("authorize");
        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
        Payment approvedPayment = requestPayment.create(apiContext);

        System.out.println(approvedPayment);

        return getApprovalLink(approvedPayment);
    }

    private String getApprovalLink(Payment approvedPayment) {
        List<Links> links = approvedPayment.getLinks();
        String approvalLink = null;

        for (Links link : links) {
            if (link.getRel().equalsIgnoreCase("approval_url")) {
                approvalLink = link.getHref();
                break;
            }
        }

        return approvalLink;
    }

    private RedirectUrls getRedirectUrls() {
        RedirectUrls redirectUrls = new RedirectUrls();
        redirectUrls.setCancelUrl("http://localhost:8080/JV51_MenClothes_war_exploded/userLetCheckOut");
        redirectUrls.setReturnUrl("http://localhost:8080/JV51_MenClothes_war_exploded/executePayment");
        return redirectUrls;
    }

    public Payment executePayment(String paymentId, String payerId)
            throws PayPalRESTException {
        PaymentExecution paymentExecution = new PaymentExecution();
        paymentExecution.setPayerId(payerId);

        Payment payment = new Payment().setId(paymentId);

        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);

        return payment.execute(apiContext, paymentExecution);
    }

    private List<Transaction> getTransactionInfomation(Orderr orderr){
        Details details = new Details();
        details.setShipping("0");
        details.setSubtotal(orderr.getSubtotal());
        details.setTax(orderr.getTax());

        Amount amount = new Amount();
        amount.setCurrency("USD");
        amount.setTotal(orderr.getTotal());
        amount.setDetails(details);

        Transaction transaction = new Transaction();
        transaction.setAmount(amount);
        transaction.setDescription(String.format(String.valueOf(LocalDate.now())));


        ItemList itemList = new ItemList();
        List<Item> items = new ArrayList<>();

        for (OrderDetails orderDetails : orderr.getOrderDetailsList()){
            Item item = new Item();
            item.setCurrency("USD");
            item.setName(orderDetails.getProductId().getName());
            item.setPrice(String.format("%.2f", orderDetails.getProductId().getPrice()));
            item.setTax("0");
            item.setQuantity(String.format(String.valueOf(orderDetails.getQuantity())));
            items.add(item);
        }


        itemList.setItems(items);
        transaction.setItemList(itemList);

        List<Transaction> listTransaction = new ArrayList<>();
        listTransaction.add(transaction);

        return listTransaction;
    }

    private Payer getPayerInformation() {
        Payer payer = new Payer();
        payer.setPaymentMethod("paypal");

        PayerInfo payerInfo = new PayerInfo();
        payerInfo.setFirstName("Luan")
                 .setLastName("Nhat")
                 .setEmail("Luanlee1010@gmail.com");
        payer.setPayerInfo(payerInfo);
        return payer;
    }
}
