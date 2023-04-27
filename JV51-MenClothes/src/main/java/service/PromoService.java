package service;

import entity.Promo;

import java.util.List;

public interface PromoService {
    public Promo getPromoByCode(String code);
    public List<Promo> getAllPromo();
}
