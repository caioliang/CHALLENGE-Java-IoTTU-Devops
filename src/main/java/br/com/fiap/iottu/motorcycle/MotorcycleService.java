package br.com.fiap.iottu.motorcycle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MotorcycleService {

    @Autowired
    private MotorcycleRepository repository;

    public List<Motorcycle> findAll() {
        return repository.findAll();
    }

    public Optional<Motorcycle> findById(Integer id) {
        return repository.findById(id);
    }

    public List<Motorcycle> findByYardId(Integer yardId) {
        return repository.findByYardId(yardId);
    }

    public void save(Motorcycle motorcycle) {
        repository.save(motorcycle);
    }

    public void deleteById(Integer id) {
        repository.deleteById(id);
    }

    public boolean existsByLicensePlate(String licensePlate) {
        return repository.existsByLicensePlate(licensePlate);
    }

    public boolean existsByChassi(String chassi) {
        return repository.existsByChassi(chassi);
    }

    public boolean existsByEngineNumber(String engineNumber) {
        return repository.existsByEngineNumber(engineNumber);
    }

    public boolean existsByLicensePlateAndIdNot(String licensePlate, Integer id) {
        return repository.existsByLicensePlateAndIdNot(licensePlate, id);
    }

    public boolean existsByChassiAndIdNot(String chassi, Integer id) {
        return repository.existsByChassiAndIdNot(chassi, id);
    }

    public boolean existsByEngineNumberAndIdNot(String engineNumber, Integer id) {
        return repository.existsByEngineNumberAndIdNot(engineNumber, id);
    }

}
