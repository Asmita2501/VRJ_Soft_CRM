package model;

public class Customer {
    private int id;
    private String firstName;
    private String lastName;

    public Customer(int id, String firstName, String lastName) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public int getId() { 
        return id; 
    }
    public String getFirstName() { 
        return firstName; 
    }
    public String getLastName() { 
        return lastName; 
    }

    public void setId(int id) { 
        this.id = id; 
    }
    public void setFirstName(String firstName) { 
        this.firstName = firstName; 
    }
    public void setLastName(String lastName) { 
        this.lastName = lastName; 
    }
}
