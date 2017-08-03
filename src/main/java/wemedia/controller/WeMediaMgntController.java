package wemedia.controller;

import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import wemedia.dao.WeMediaWorkerRepository;
import wemedia.domain.WeMediaWorker;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by hsw11 on 2017/7/24.
 */
@Controller
public class WeMediaMgntController {

    @Autowired
    private WeMediaWorkerRepository weMediaWorkerRepository;

    @RequestMapping("/weMediaMgnt/index")
    public String index() {
        return "/weMediaMgnt/index";
    }

    @RequestMapping("/weMediaMgnt/saveWorkerConfig")
    public @ResponseBody
    String saveWorkerConfig(@RequestParam("workerId") long workerId, @RequestParam("workerName")
            String workerName, @RequestParam("workerDesc") String workerDesc) {
        Map<String, Object> resultData = new HashMap<>();
        try {
            WeMediaWorker weMediaWorker = null;
            if (workerId == -1) {
                weMediaWorker = new WeMediaWorker();
            } else {
                weMediaWorker = weMediaWorkerRepository.findByIdAndDeleted(workerId, false);
            }
            weMediaWorker.setWorkerName(workerName);
            weMediaWorker.setWorkerDesc(workerDesc);
            weMediaWorkerRepository.save(weMediaWorker);
            resultData.put("status_Code", 200);
            resultData.put("weMediaWorker", weMediaWorker);
        } catch (Exception e) {
            resultData.put("status_Code", 500);
            resultData.put("exception", e);
        }
        return JSON.toJSONString(resultData);
    }

    @RequestMapping("/weMediaMgnt/loadWeMediaWorkerInfo")
    public @ResponseBody String loadWeMediaWorkerInfo(@RequestParam("workerId") long workerId) {
        Map<String, Object> resultData = new HashMap<>();
        try {
            WeMediaWorker weMediaWorker = weMediaWorkerRepository.findByIdAndDeleted(workerId, false);
            resultData.put("status_Code", 200);
            resultData.put("weMediaWorker", weMediaWorker);
        } catch (Exception e) {
            resultData.put("status_Code", 500);
            resultData.put("exception", e);
        }
        return JSON.toJSONString(resultData);
    }

    @RequestMapping("/weMediaMgnt/loadWeMediaWorkerList")
    public ModelAndView loadWeMediaWorkerList() {
        Pageable limit = new PageRequest(0, 3000);
        List<WeMediaWorker> weMediaWorkerList = weMediaWorkerRepository.findAllByDeleted(false);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("weMediaWorkerList", weMediaWorkerList);
        return new ModelAndView("weMediaMgnt/weMediaWorkerListContainer", model);
    }


}
