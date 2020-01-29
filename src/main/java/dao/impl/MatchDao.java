package dao.impl;

import com.sun.javafx.beans.IDProperty;
import jdk.nashorn.internal.ir.annotations.Immutable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "id")
public class MatchDao {

    @Id
    private Integer id;

    @Column(name = "player1")
    private String player1;

    @Column(name = "player2")
    private String player2;

    public Integer getId(){
        return id;
    }

    public String getPlayer2() {
        return player2;
    }

    public void setPlayer2(String player2) {
        this.player2 = player2;
    }

    public String getPlayer1() {
        return player1;
    }

    public void setPlayer1(String player1) {
        this.player1 = player1;
    }
}
