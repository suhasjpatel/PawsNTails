package pawsntails.models;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Java Entity to map to the Account table in the derby database.
 */
@Entity
public class Account {

    @Id
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private String address;
    private String address2;
    private String city;
    private String state;
    private String zip;

    public Account() {
    }

    public Account(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public Account(String email, String password, String firstName, String lastName, String address, String address2,
                   String city, String state, String zip) {
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.address2 = address2;
        this.city = city;
        this.state = state;
        this.zip = zip;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getAddress() {
        return address;
    }

    public String getAddress2() {
        return address2;
    }

    public String getCity() {
        return city;
    }

    public String getState() {
        return state;
    }

    public String getZip() {
        return zip;
    }
}
