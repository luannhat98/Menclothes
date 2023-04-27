package service;

import entity.Shipment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.ShipmentRepository;

import javax.persistence.Access;

@Service
public class ShipmentServiceImp implements ShipmentService{
    @Autowired
    private ShipmentRepository shipmentRepository;

    @Override
    public void addShipment(Shipment shipment) {
        shipmentRepository.save(shipment);
    }
}
