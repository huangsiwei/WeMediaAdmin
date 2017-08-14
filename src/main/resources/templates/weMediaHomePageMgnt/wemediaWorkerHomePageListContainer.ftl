<#list weMediaWorkerList as item>
<tr>
    <td>${item.workerName}</td>
    <td>
    <#list item.homePages as homePage>
        ${homePage.homePage}<br>
    </#list>
    </td>
    <td>
        <button class="btn btn-primary btn-sm" onclick="showEditConfigModal(${item.id})">
            修改
        </button>
        <button class="btn btn-danger btn-sm">
            删除
        </button>
    </td>
</tr>
</#list>