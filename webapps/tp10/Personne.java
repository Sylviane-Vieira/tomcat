public class Personne implements Serializable {
  private int num;
  private String nom, prenom;
  private int tel;
  private String fonction;

  public void setNum(int num){this.num=num;}
  public void setNom(String nom){this.nom = nom;}
  public void setPrenom(String prenom){this.prenom = prenom;}
  public void setTel(int tel){this.tel = tel;}
  public void setFonction(String fonction){this.fonction = fonction;}

  public int getNum(){ return this.num;}
  public String getNom(){ return this.nom;}
  public String getPrenom(){ return this.prenom;}
  public int getTel(){ return this.tel;}
  public String getFonction(){ return this.fonction;}

  public HTML getHTML();

}
