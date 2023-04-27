package service;

import entity.Role;

public interface RoleService {
    public void addRole(Role role);
    public Role getRoleByUserName(String username);
}
