<#list weMediaWorkerList as item>
<tr role="row" class="even">
    <td>${item.workerName}</td>
    <td>${item.workerDesc}</td>
    <td>
        <button class="btn btn-primary btn-sm" onclick="showWeMediaWorkerConfigModal(${item.id?c})">
            修改
        </button>
        <button class="btn btn-danger btn-sm">
            删除
        </button>
    </td>
</tr>
</#list>