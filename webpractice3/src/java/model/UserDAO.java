/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import javax.persistence.EntityManager;
import utils.JPAUtils;

/**
 *
 * @author caonh
 */
public class UserDAO {
    public UserDTO searchById(String username){
        EntityManager em= JPAUtils.getEntityManager();
        try {
            return em.find(UserDTO.class, username);
        } finally {
            em.close();
        }
    }
    public UserDTO login(String username, String password){
        UserDTO u= searchById(username);
        if(u!=null && u.getPassword().equals(password)){
            return u;
        }
        return null;
    }
}
