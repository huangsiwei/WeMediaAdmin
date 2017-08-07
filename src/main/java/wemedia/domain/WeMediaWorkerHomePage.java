package wemedia.domain;

import com.sun.istack.internal.Nullable;

import javax.persistence.*;

/**
 * Created by hsw11 on 2017/8/7.
 */
@Entity
@Table(name = "WeMediaWorkerHomePage")
public class WeMediaWorkerHomePage {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private long id;

    @ManyToOne
    private WeMediaWorker weMediaWorker;

    private String homePage;
    @OneToOne
    @Nullable
    private Platform platform;

    public WeMediaWorkerHomePage(WeMediaWorker weMediaWorker, String homePage, Platform platform) {
        this.weMediaWorker = weMediaWorker;
        this.homePage = homePage;
        this.platform = platform;
        this.deleted = false;
    }

    public WeMediaWorkerHomePage(WeMediaWorker weMediaWorker, String homePage) {
        this.weMediaWorker = weMediaWorker;
        this.homePage = homePage;
        this.deleted = false;
    }

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

    public WeMediaWorker getWeMediaWorker() {
        return weMediaWorker;
    }

    public void setWeMediaWorker(WeMediaWorker weMediaWorker) {
        this.weMediaWorker = weMediaWorker;
    }

    public String getHomePage() {
        return homePage;
    }

    public void setHomePage(String homePage) {
        this.homePage = homePage;
    }

    public Platform getPlatform() {
        return platform;
    }

    public void setPlatform(Platform platform) {
        this.platform = platform;
    }


}
