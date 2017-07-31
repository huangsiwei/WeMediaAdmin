package wemedia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wemedia.dao.PlatformRepository;
import wemedia.domain.Platform;

/**
 * Created by hsw11 on 2017/7/30.
 */
@Service
public class PlatformService {

    @Autowired
    private PlatformRepository platformRepository;

    public Platform savePlatform(Platform platform) {
        return platformRepository.save(platform);
    }

}
