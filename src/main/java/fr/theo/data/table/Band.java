package fr.theo.data.table;

public class Band {

  private String name;
  private String correspondent;

  public Band(String name, String correspondant) {
    this.name = name;
    this.correspondent = correspondant;
  }

  public String getName() {return this.name;}
  public String getCorrespondent() {return this.correspondent;}
}
