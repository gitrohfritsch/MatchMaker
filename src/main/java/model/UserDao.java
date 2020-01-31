package model;

import entity.User;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class UserDao {

    private EntityManager entityManager;
    public UserDao (EntityManager entityManager){
        this.entityManager = entityManager;
    }



    public List<User> getAll (){
        TypedQuery<User> query = entityManager.createQuery(
                "select user FROM User user", User.class);
        return query.getResultList();

    }

    public List<User> getAllBy(int linePerPage, int numPage){

        TypedQuery<User> query = entityManager.createQuery(
                "select user FROM User user", User.class)
                .setFirstResult((numPage - 1)*linePerPage)
                .setMaxResults(linePerPage);
        return query.getResultList();
    }

    public void create(User user){
        entityManager.getTransaction().begin();
        entityManager.persist(user);
        entityManager.getTransaction().commit();

    }
    public void update(User user){
        entityManager.getTransaction().begin();
        entityManager.merge(user);
        entityManager.getTransaction().commit();

    }
    public void delete(User user){
        entityManager.getTransaction().begin();
        entityManager.remove(user);
        entityManager.getTransaction().commit();

    }
 }
