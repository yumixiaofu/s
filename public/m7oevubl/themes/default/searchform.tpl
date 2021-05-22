<form id="searchForm" action="" method="GET">
    {if $_GET['uid']}<input name="uid" id="uid" value="{$_GET['uid']}" hidden>{/if}
    <div class="more-search">
        <div class="search-row">
            {foreach name="seachList" item="sl"}
                {if $sl.type == 'checkLabel'}
                    <div class="form-group row">
                        <label class="{if $sl.required}require{/if}">{$sl.label}</label>
                        <div class="col-sm-4">
                            {foreach name="sl.list" item="ll"}
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1"
                                           value="{$ll.value}"
                                           name="{$sl.name}">
                                    <label class="form-check-label" for="inlineCheckbox1">{$ll.label}</label>
                                </div>
                            {/foreach}
                        </div>{$sl.tip}
                    </div>
                {elseif $sl.type == 'radio'}
                    <div class="form-group row">
                        <label class="{if $sl.required}require{/if}">{$sl.label}</label>
                        <div class="col-sm-4">
                            {foreach name="sl.list" item="ll"}
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="inlineCheckbox1"
                                           value="{$ll.value}" name="{$sl.name}">
                                    <label class="form-check-label" for="inlineCheckbox1">{$ll.label}</label>
                                </div>
                            {/foreach}
                        </div>{$sl.tip}
                    </div>
                {elseif $sl.type == 'date'}
                    <div class="search-item">
                        <label class="label">{$sl.label}</label>
                        <div class="input-container">
                            <input type="text" name="{$sl.name}" class="form-control datetime"
                                   value="{$_GET[$sl.name]}">
                        </div>
                    </div>
                {elseif $sl.type == 'towDate'}
                    <div class="search-item">
                        <label class="{if $sl.required}require{/if} label">{$sl.label}</label>
                        <div class="input-container">
                            <input type="text" name="{$sl.name}" class="form-control daterange"
                                   value="{$_GET[$sl.name]}">
                        </div>{$sl.tip}
                    </div>
                {elseif $sl.type == 'select'}
                    <div class="search-item">
                        <label class="label">{$sl.label}</label>
                        <div class="input-container">
                            <select class="form-control" name="{$sl.name}">
                                {foreach name="sl.list" item="list"}
                                    <option value="{$list.value}"
                                            {if $list.value==$_GET[$sl.name]}selected="selected"{/if}>{$list.label}</option>
                                {/foreach}
                            </select>
                        </div>
                    </div>
                {else}
                    <div class="search-item">
                        <label class="label">{$sl.label}</label>
                        <div class="input-container">
                            <input type="text" name="{$sl.name}" class="form-control"
                                   value="{$_GET[$sl.name]}">
                        </div>
                    </div>
                {/if}
            {/foreach}
            <input name="page" value="{$page}" hidden="hidden"/>
            <input id="typeValue" name="type" hidden="hidden" value="{$type}"/>
            <div class="search-item">
                <label class="label"></label>
                <div class="input-container">
                    <button class="btn btn-primary" type="submit"><i class="fas fa-search"></i>
                        搜索
                    </button>
                    <button class="btn btn-outline-secondary" type="reset" id="reset">重置</button>
                </div>
            </div>
        </div>
    </div>
</form>