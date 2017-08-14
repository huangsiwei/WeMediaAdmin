<div class="row">
    <form role="form">
        <div class="box-body">
            <div class="form-group">
                <label for="workerId">请选择自媒体人</label>
                <select name="workerId" id="workerId" class="form-control">
                    <option value="${weMediaWorker.id}">${weMediaWorker.workerName}</option>
                </select>
            </div>

            <div class="form-group">
                <label for="homePageUrlList">请输入主页网址</label>
                <textarea class="form-control" id="homePageUrlList" rows="7" cols="20"
                          placeholder="请输入主页网址，多个主页请用回车分隔"><#list weMediaWorker.homePages as homePage>${homePage.homePage}&#13;&#10</#list></textarea>
            </div>
        </div>
    </form>
</div>

