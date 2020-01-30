package model;

import com.sun.javafx.beans.IDProperty;
import jdk.nashorn.internal.ir.annotations.Immutable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

public class UserDao {
    private int id;
    private String nickname;
    private int level;
}
