package wemedia.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import wemedia.domain.WeMediaWorker;
import wemedia.domain.WeMediaWorkerHomePage;

import java.util.List;

/**
 * Created by hsw11 on 2017/8/7.
 */
public interface WeMediaWorkerHomePageRepository extends JpaRepository<WeMediaWorkerHomePage, Long> {

    WeMediaWorkerHomePage findByWeMediaWorkerAndHomePage(WeMediaWorker weMediaWorker, String homePageUrl);

    List<WeMediaWorkerHomePage> findAllByWeMediaWorkerAndDeleted(WeMediaWorker weMediaWorker, boolean deleted);
}
