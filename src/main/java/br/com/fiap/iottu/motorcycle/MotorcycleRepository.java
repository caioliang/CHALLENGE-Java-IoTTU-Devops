package br.com.fiap.iottu.motorcycle;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MotorcycleRepository extends JpaRepository<Motorcycle, Integer> {

    List<Motorcycle> findByYardId(Integer yardId);

    boolean existsByLicensePlate(String licensePlate);
    boolean existsByChassi(String chassi);
    boolean existsByEngineNumber(String engineNumber);

    boolean existsByLicensePlateAndIdNot(String licensePlate, Integer id);
    boolean existsByChassiAndIdNot(String chassi, Integer id);
    boolean existsByEngineNumberAndIdNot(String engineNumber, Integer id);

}
