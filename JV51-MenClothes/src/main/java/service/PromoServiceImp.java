package service;

import entity.Promo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.PromoRepository;

import java.util.List;

@Service
public class PromoServiceImp implements PromoService{
    @Autowired
    private PromoRepository promoRepository;

    @Override
    public Promo getPromoByCode(String code) {
        return (Promo) promoRepository.getPromoByCode(code);
    }

    @Override
    public List<Promo> getAllPromo() {
        return (List<Promo>) promoRepository.findAll();
    }
}
