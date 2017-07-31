package wemedia.controller;

import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import wemedia.dao.PlatformRepository;
import wemedia.domain.Platform;
import wemedia.service.PlatformService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static javafx.scene.input.KeyCode.K;
import static javafx.scene.input.KeyCode.V;

/**
 * Created by hsw11 on 2017/7/25.
 */
@Controller
public class PlatformMgntController {

    @Autowired
    private PlatformRepository platformRepository;

    @Autowired
    private PlatformService platformService;

    @RequestMapping("/platformMgnt/index")
    public String index() {
        return "/platformMgnt/index";
    }

    public String addPlatform() {
        return "";
    }

    public String deletePlatform() {
        return "";
    }

    public String updatePlatform() {
        return "";
    }

    @RequestMapping("/platformMgnt/loadPlatformConfigList")
    public ModelAndView loadPlatformConfigList() {
        Pageable limit = new PageRequest(0, 3000);
        List<Platform> platformList = platformRepository.findAllByDeleted(false);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("platformList", platformList);
        return new ModelAndView("platformMgnt/platformListContainer", model);
    }

    @RequestMapping("/platformMgnt/savePlatformConfig")
    public @ResponseBody
    String savePlatformConfig(@RequestParam("platformId") long platformId, @RequestParam
            ("platformName")
            String platformName, @RequestParam("platformDesc") String platformDesc, @RequestParam("platformDomain") String domain) {
        Map<String, Object> signatureData = new HashMap<>();
        try {
            Platform platform = null;
            if (platformId == -1) {
                platform = new Platform();
            } else {
                platform = platformRepository.findById(platformId);
            }
            platform.setPlatformName(platformName);
            platform.setPlatformDesc(platformDesc);
            platform.setDomain(domain);
            platformRepository.save(platform);
            signatureData.put("status_Code", 200);
            signatureData.put("platform", platform);
        } catch (Exception e) {
            signatureData.put("status_Code", 500);
            signatureData.put("exception", e);
        }
        return JSON.toJSONString(signatureData);

    }
}
