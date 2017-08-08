package wemedia.controller;

import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import wemedia.dao.WeMediaWorkerHomePageRepository;
import wemedia.dao.WeMediaWorkerRepository;
import wemedia.domain.WeMediaWorker;
import wemedia.domain.WeMediaWorkerHomePage;

import java.util.ArrayList;
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

    @Autowired
    private WeMediaWorkerHomePageRepository weMediaWorkerHomePageRepository;

    @RequestMapping("/weMediaHomePageMgnt/index")
    public String index() {
        return "/weMediaHomePageMgnt/index";
    }

    @RequestMapping("/weMediaHomePageMgnt/loadWorkerIdSelectOption")
    public ModelAndView loadWorkerIdSelectOption() {
        List<WeMediaWorker> weMediaWorkerList = weMediaWorkerRepository.findAllByDeleted(false);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("weMediaWorkerList", weMediaWorkerList);
        return new ModelAndView("weMediaHomePageMgnt/workIdsSelectOption", model);

    }

    @RequestMapping("/weMediaHomePageMgnt/saveWemediaWorkerHomePageConfig")
    public String saveWemediaWorkerHomePageConfig(@RequestParam("workerId") long workerId,
                                                  @RequestParam("homePageUrlList") String homePageUrlList) {
        Map<String, Object> resultData = new HashMap<>();
        try {
            WeMediaWorker weMediaWorker = weMediaWorkerRepository.findByIdAndDeleted(workerId, false);

            List<WeMediaWorkerHomePage> weMediaWorkerHomePageList = new ArrayList<>();
            String[] urlList = homePageUrlList.split("\n");
            for (String homePageUrl : urlList) {
                if (!homePageUrl.equals("")) {
                    WeMediaWorkerHomePage weMediaWorkerHomePage = weMediaWorkerHomePageRepository.findByWeMediaWorkerAndHomePage(weMediaWorker, homePageUrl);
                    if (weMediaWorkerHomePage != null) {
                        weMediaWorkerHomePage.setDeleted(false);
                    } else {
                        weMediaWorkerHomePage = new WeMediaWorkerHomePage(weMediaWorker, homePageUrl);
                    }
                    weMediaWorkerHomePageRepository.save(weMediaWorkerHomePage);
                    weMediaWorkerHomePageList.add(weMediaWorkerHomePage);
                }
            }
            weMediaWorker.setHomePages(weMediaWorkerHomePageList);
            weMediaWorker = weMediaWorkerRepository.save(weMediaWorker);
            resultData.put("status_Code", 200);
            resultData.put("weMediaWorker", weMediaWorker);
        } catch (Exception e) {
            resultData.put("status_Code", 500);
            resultData.put("exception", e);
        }
        return JSON.toJSONString(resultData);
    }

    @RequestMapping("/weMediaHomePageMgnt/loadWemediaWorkerHomePageTable")
    public ModelAndView loadWemediaWorkerHomePageTable() {
        List<WeMediaWorker> weMediaWorkerList = weMediaWorkerRepository.findAllByDeleted(false);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("weMediaWorkerList", weMediaWorkerList);
        return new ModelAndView("weMediaHomePageMgnt/wemediaWorkerHomePageListContainer", model);
    }
}
