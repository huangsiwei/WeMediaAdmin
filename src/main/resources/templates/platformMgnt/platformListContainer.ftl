<#list platformList as item>
    <tr role="row" class="even">
        <td>${item.platformName}</td>
        <td>${item.platformDesc}</td>
        <td>${item.domain}</td>
        <td>
            <button class="btn btn-primary btn-sm" onclick="showPlatformConfigModal(${item.id})">
                修改
            </button>
            <button class="btn btn-danger btn-sm">
                删除
            </button>
        </td>
    </tr>
</#list>