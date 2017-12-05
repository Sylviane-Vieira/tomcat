public abstract class DAOPersonne <Personne>{
  protected Connection con = null;

  public DAOPersonne(Connection con){this.con = null;}
  public abstract boolean create (Personne p);
  public abstract boolean insert (Personne p);
  public abstract boolean delete (Personne p);
  public abstract boolean update (Personne p);
  public abstract Personne find (int num);
  public abstract ArrayList<Personne> findAll;
}
