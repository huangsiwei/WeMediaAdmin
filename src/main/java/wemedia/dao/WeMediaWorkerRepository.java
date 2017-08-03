package wemedia.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import wemedia.domain.WeMediaWorker;

import java.util.List;

/**
 * Created by hsw11 on 2017/8/2.
 */
public interface WeMediaWorkerRepository extends JpaRepository<WeMediaWorker, Long> {

    WeMediaWorker findByIdAndDeleted(long weworkerId,boolean deleted);

    List<WeMediaWorker> findAllByDeleted(boolean deleted);

}
