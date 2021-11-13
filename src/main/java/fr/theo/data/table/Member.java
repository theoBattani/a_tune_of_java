package fr.theo.data.table;

public class Member {

  private String name;
  private String instrument;

  public Member(String name, String instrument) {
    this.name = name;
    this.instrument = instrument;
  }

  public String getName() {return this.name;}
  public String getInstrument() {return this.instrument;}
}
