package wemedia.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import wemedia.domain.Platform;

import java.util.List;

/**
 * Created by hsw11 on 2017/7/26.
 */
public interface PlatformRepository extends JpaRepository<Platform, Long> {

    Platform findById(long platformId);

    Platform findByIdAndDeleted(long platformId, boolean deleted);

    List<Platform> findAllByDeleted(boolean deleted);

    List<Platform> findAllByPlatformNameIgnoreCaseContaining(String keyWords);

}
