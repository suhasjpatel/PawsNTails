package pawsntails.dao;

import pawsntails.models.Account;
import pawsntails.shared.Strings;

import javax.persistence.*;

/**
 * Data access object to access in-memory Derby DB.
 */
public class PawsNTailsDAO {
    private EntityManager em;

    public PawsNTailsDAO() {
        EntityManagerFactory factory =
                Persistence.createEntityManagerFactory(Strings.PERSISTENCE_UNIT_NAME);
        em = factory.createEntityManager();
    }

    public void update(Account account) {
        em.getTransaction().begin();
        em.merge(account);
        em.getTransaction().commit();
        em.close();
    }

    public Account findUser(Account account) {
        try {
            return (Account) em.createQuery("SELECT a from Account a WHERE a.email=:email and a.password=:password")
                    .setParameter(Strings.EMAIL, account.getEmail())
                    .setParameter(Strings.PASSWORD, account.getPassword())
                    .getSingleResult();
        } catch (NonUniqueResultException e) {
            System.err.println("Someone goofed up");
            e.printStackTrace();
            return null;
        } catch (NoResultException e) {
            return null;
        }
    }

}
