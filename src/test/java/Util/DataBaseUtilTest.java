package Util;

import Base.Entity.testEntity;
import Domain.Customer;
import Domain.Ticket;
import Repositories.Impls.ModeratorRepository;
import Services.Impls.ModeratorService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.function.Executable;

import javax.persistence.Query;

import java.util.Arrays;
import java.util.List;

import static Util.DataBaseUtil.*;
import static Util.FakerUtil.*;
import static org.junit.jupiter.api.Assertions.*;

class DataBaseUtilTest {

    @Test
    void canPersistData() {
        testEntity testEntity = new testEntity();
        entityManager.getTransaction().begin();
        entityManager.persist(testEntity);
        entityManager.getTransaction().commit();
        Long id = testEntity.getId();
        assertNotNull(id);
        testEntity testEntityQ = entityManager.find(testEntity.class, id);
        assertNotNull(testEntityQ);
        entityManager.remove(testEntityQ);
        testEntityQ = entityManager.find(testEntity.class, id);
        assertNull(testEntityQ);
    }

    @Test
    void shouldSimplySave() throws Exception {
        testEntity testEntity = new testEntity();
        System.out.println("========================"+testEntity.getId());
        simpleSave(testEntity);
        Long id = testEntity.getId();
        System.out.println("========================"+id);
        assertNotNull(id);
        testEntity testEntityQ = entityManager.find(
                testEntity.class,
                id);
        assertNotNull(testEntityQ);
        assertEquals(testEntityQ,testEntity);
        //
        // remove
        //
        //
        entityManager.remove(testEntityQ);
        testEntityQ = entityManager.find(
                testEntity.class,
                id);
        assertNull(testEntityQ);
    }

    @Test
    void find() {
        Customer customer = fakeCustomer();
        simpleSave(customer);
        Customer customerDetached = new Customer();
        customerDetached.setFirstName(customer.getFirstName());
        Executable executable = () -> entityManager.find(Customer.class, customerDetached);
        assertThrows(Exception.class, executable);

    }

    @Test
    void groupBy() {
        ModeratorService moderatorService = new ModeratorService(new ModeratorRepository());
        String home = "teharan";
        String destination = "mahsad";
        List<Ticket> tickets = Arrays.asList(
                fakeTicket(),
                fakeTicket(),
                fakeTicket(),
                fakeTicket()
        );
        tickets.forEach(
                ticket -> {
                    ticket.setDestination(destination);
                    ticket.setHome(home);
                    moderatorService.createATripWithTickets(ticket,5);
                    System.out.println(ticket);
                }
        );

        Query query = entityManager.createQuery(
                "select t.id from " + Ticket.class.getSimpleName() + " t   "
                        + " where t.home = '" + home.toString() + "' "
                        + " and t.destination = '" + destination.toString() + "'" +
                        " group by t.home "

        );

        List resultList = query.getResultList();
        query.getResultList().forEach(System.out::println);
    }
}