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
    @GeneratedValue(strategy = GenerationType.TABLE)
    private long id;
    private String workerName;
    private String workerDesc;
    private boolean deleted;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getWorkerName() {
        return workerName;
    }

    public void setWorkerName(String workerName) {
        this.workerName = workerName;
    }

    public String getWorkerDesc() {
        return workerDesc;
    }

    public void setWorkerDesc(String workerDesc) {
        this.workerDesc = workerDesc;
    }

    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }

}
