package wemedia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import wemedia.dao.PlatformRepository;
import wemedia.dao.WeMediaWorkerRepository;
import wemedia.domain.Platform;
import wemedia.domain.WeMediaWorker;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by hsw11 on 2017/8/9.
 */
@Controller
public class WeMediaWorkerDetailController {

    @Autowired
    private PlatformRepository platformRepository;

    @Autowired
    private WeMediaWorkerRepository weMediaWorkerRepository;

    @RequestMapping("/weMediaWorkerDetail/index")
    public ModelAndView index() {
        List<Platform> platformList = platformRepository.findAllByDeleted(false);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("platformList", platformList);
        return new ModelAndView("/weMediaWorkerDetail/index",model) ;
    }

    @RequestMapping("/weMediaWorkerDetail/loadWeMedieWorkerTable")
    public ModelAndView loadWeMedieWorkerTable() {
        List<WeMediaWorker> weMediaWorkerList = weMediaWorkerRepository.findAllByDeleted(false);

        return null;
    }

}
