package wemedia.domain;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * Created by hsw11 on 2017/7/17.
 */
@Entity
@Table(name = "User")
public class User {
    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @NotNull
    private String userName;
    @NotNull
    private String userPassWord;

}
