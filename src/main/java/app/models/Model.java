package app.models;

import app.entities.Client;

import java.sql.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Model {

    private static Model instance = new Model();

    private List<Client> model;

    public static Model getInstance(){
        if (instance==null){
            return instance = new Model();
        }
        return instance;
    }

    private Model(){
        model = new ArrayList<>();
    }

    public void add(Client client){
        model.add(client);
    }
    public List<String> list() {
        return model.stream()
                .map(Client::getUserName)
                .collect(Collectors.toList());
    }

}
