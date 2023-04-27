package repository;

import entity.Role;
import org.springframework.data.repository.CrudRepository;

public interface RoleRepository extends CrudRepository<Role,Integer> {
    public Role getRoleByUsername(String username);
}
