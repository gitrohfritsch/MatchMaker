package model;

import entity.Match;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.Objects;


public class MatchDao {

    //private List<Match> matchs = new ArrayList<>();
    private EntityManager entityManager;
    public MatchDao(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    //==================================================================================
//CRUD : READ/SELECT/GET

    public Match getMatch(int id) {
        TypedQuery<Match> query = entityManager.createQuery(
            "select match FROM Match match WHERE match.id = :id", Match.class)
            .setParameter("id", id);
        return query.getSingleResult();
    }
//CRUD : CREATE/INSERT/POST

    public void save(Match match) {
        //matchs.add(match);
    }

    //CRUD : UPDATE

    public void update(Match match, int[]params) {
        match.setId(Objects.requireNonNull(
                params[0], "Id cannot be null"));
        match.setPlayer1(Objects.requireNonNull(
                params[1], "Nickname1 cannot be null"));
        match.setPlayer2(Objects.requireNonNull(
                params[2], "Nickname2 cannot be null"));

        //matchs.add(match);
    }
//CRUD : DELETE/REMOVE

    public void delete(Match match) {
        //matchs.remove(match);
    }
    //==================================================================================






}
