package entity;

import javax.persistence.*;

@Entity
@Table(name = "MatchList")
public class Match {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private int player1;
    private int player2;
    private int status;

    //contructeur
//    public Match(int i, int i1, int i2) {
//       this.id = i;
//       this.player1 = i1;
//       this.player2 = i2;
//    }

    //Getter Setter
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPlayer1() {
        return player1;
    }

    public void setPlayer1(int player1) {
        this.player1 = player1;
    }

    public int getPlayer2() {
        return player2;
    }

    public void setPlayer2(int player2) {
        this.player2 = player2;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }




//=========================================================================

}