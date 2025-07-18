package service;

import model.Customer;
import java.util.*;

public class CustomerService {
    private List<Customer> customerList;

    public CustomerService() {
        customerList = new ArrayList<>();
        customerList.add(new Customer(101, "Asmita", "Khatavkar"));
        customerList.add(new Customer(102, "Pavan", "Panchal"));
        customerList.add(new Customer(103, "Neha", "Patil"));
    }

    public Customer searchById(int id) {
        customerList.sort(Comparator.comparingInt(Customer::getId));
        int low = 0, high = customerList.size() - 1;
        while (low <= high) {
            int mid = (low + high) / 2;
            Customer c = customerList.get(mid);
            if (c.getId() == id) return c;
            else if (c.getId() < id) low = mid + 1;
            else high = mid - 1;
        }
        return null;
    }

    public Customer searchByFirstName(String name) {
        customerList.sort(Comparator.comparing(Customer::getFirstName));
        int low = 0, high = customerList.size() - 1;
        while (low <= high) {
            int mid = (low + high) / 2;
            Customer c = customerList.get(mid);
            int cmp = c.getFirstName().compareToIgnoreCase(name);
            if (cmp == 0) return c;
            else if (cmp < 0) low = mid + 1;
            else high = mid - 1;
        }
        return null;
    }

    public Customer searchByLastName(String name) {
        customerList.sort(Comparator.comparing(Customer::getLastName));
        int low = 0, high = customerList.size() - 1;
        while (low <= high) {
            int mid = (low + high) / 2;
            Customer c = customerList.get(mid);
            int cmp = c.getLastName().compareToIgnoreCase(name);
            if (cmp == 0) return c;
            else if (cmp < 0) low = mid + 1;
            else high = mid - 1;
        }
        return null;
    }
}
