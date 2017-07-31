package wemedia.domain;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * Created by hsw11 on 2017/7/24.
 */
@Entity
@Table(name = "WeMediaWorker")
public class WeMediaWorker {
    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String workerName;
    private String workerDesc;
    private boolean deleted;
}
