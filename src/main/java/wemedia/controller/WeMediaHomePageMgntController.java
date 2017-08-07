package wemedia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import wemedia.dao.WeMediaWorkerRepository;
import wemedia.domain.WeMediaWorker;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by hsw11 on 2017/8/3.
 */
@Controller
public class WeMediaHomePageMgntController {

    @Autowired
    private WeMediaWorkerRepository weMediaWorkerRepository;

    @RequestMapping("/weMediaHomePageMgnt/index")
    public String index() {
        return "/weMediaHomePageMgnt/index";
    }

    @RequestMapping("/weMediaHomePageMgnt/loadWorkerIdSelectOption")
    public ModelAndView loadWorkerIdSelectOption () {
        List<WeMediaWorker> weMediaWorkerList = weMediaWorkerRepository.findAllByDeleted(false);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("weMediaWorkerList", weMediaWorkerList);
        return new ModelAndView("weMediaHomePageMgnt/workIdsSelectOption", model);

    }

    @RequestMapping("/weMediaHomePageMgnt/saveWemediaWorkerHomePageConfig")
    public String saveWemediaWorkerHomePageConfig() {

        return null;
    }
}
