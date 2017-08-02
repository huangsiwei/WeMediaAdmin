package wemedia.domain;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * Created by hsw11 on 2017/7/24.
 */
@Entity
@Table(name = "Platform")
public class Platform {
    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.TABLE)
    private long id;
    private String platformName;
    private String platformDesc;
    private String domain;

    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }

    private boolean deleted;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPlatformName() {
        return platformName;
    }

    public void setPlatformName(String platformName) {
        this.platformName = platformName;
    }

    public String getPlatformDesc() {
        return platformDesc;
    }

    public void setPlatformDesc(String platformDesc) {
        this.platformDesc = platformDesc;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }


}
