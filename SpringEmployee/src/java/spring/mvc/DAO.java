/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package spring.mvc;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author User
 */
public class DAO {
    public void insert(Employee emp) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(emp);
        s.getTransaction().commit();
        s.close();
    }
    public void update(Employee emp) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(emp);
        s.getTransaction().commit();
        s.close();
    }

    public void delete(Employee emp) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(emp);
        s.getTransaction().commit();
        s.close();
    }
    public List<Employee> show() {
        List<Employee> list;
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Employee");
        list = q.list();
        return list;
    }
    
}
