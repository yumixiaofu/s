<!-- 添加弹窗 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog " role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">{$modalTitle}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="modalForm" class="form" method="get">
                    {foreach name="modalList" item="ml"}
                        {if $ml.type == 'select'}
                            <div class="form-group row">
                                <label class="{if $ml.required}require{/if}">{$ml.label}
                                    <i class="far fa-question-circle" style="color: blue;" aria-hidden="true"
                                       data-toggle="tooltip"
                                       data-placement="top" title="Tooltip on top"></i>
                                </label>
                                <div class="col-sm-9">
                                    <select class="form-control" name="{$ml.name}">
                                        {foreach name="ml.list" item="ll"}
                                            <option value="{$ll.value}"
                                                    {if $ll.value==$ml.content}selected="selected" {/if}>{$ll.label}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                        {elseif $ml.type == 'checkbox'}
                            <div class="form-group row invalid">
                                <label class="{if $ml.required}require{/if}">{$ml.label}</label>
                                <div class="col-sm-9">
                                    <div class="custom-control custom-switch" dir="ltr">
                                        <input type="checkbox" class="custom-control-input" id="customSwitchsizemd"
                                               name="{$ml.name}">
                                        <label class="custom-control-label" for="customSwitchsizemd"></label>
                                    </div>
                                </div>
                            </div>
                        {elseif $ml.type == 'checkLabel'}
                            <div class="form-group row">
                                <label class="{if $ml.required}require{/if}">{$ml.label}</label>
                                <div class="col-sm-9">
                                    {foreach name="ml.list" item="ll"}
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="checkbox" id="inlineCheckbox1"
                                                   value="{$ll.value}"
                                                   name="{$ml.name}">
                                            <label class="form-check-label" for="inlineCheckbox1">{$ll.label}</label>
                                        </div>
                                    {/foreach}
                                </div>
                            </div>
                        {elseif $ml.type == 'radio'}
                            <div class="form-group row">
                                <label class="{if $ml.required}require{/if}">{$ml.label}</label>
                                <div class="col-sm-9">
                                    {foreach name="ml.list" item="ll"}
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" id="inlineCheckbox1"
                                                   value="{$ll.value}" name="{$ml.name}">
                                            <label class="form-check-label" for="inlineCheckbox1">{$ll.label}</label>
                                        </div>
                                    {/foreach}
                                </div>
                            </div>
                        {elseif $ml.type == 'date'}
                            <div class="form-group row">
                                <label class="{if $ml.required}require{/if}">{$ml.label}</label>
                                <div class="col-sm-9">
                                    <input type="text" name="{$ml.name}" class="form-control datetime">
                                </div>
                            </div>
                        {elseif $ml.type == 'towDate'}
                            <div class="form-group row">
                                <label class="{if $ml.required}require{/if}">{$ml.label}</label>
                                <div class="col-sm-9">
                                    <input type="text" name="{$ml.name}" class="form-control daterange"
                                           value="{$ml.content}">
                                </div>
                            </div>
                        {elseif $ml.type == 'textarea'}
                            <div class="form-group row">
                                <label class="{if $ml.required}require{/if}">{$ml.label}</label>
                                <div class="col-sm-9">
                                    <textarea rows="5" class="form-control" name="{$ml.name}"
                                              value="{$ml.content}"></textarea>
                                </div>
                            </div>
                        {else}
                            <div class="form-group row">
                                <label class="{if $ml.required}require{/if}">{$ml.label}</label>
                                <div class="col-sm-9">
                                    <input type="text" name="{$ml.name}" class="form-control" name="title"
                                           value="{$ml.content}">
                                </div>
                            </div>
                        {/if}
                    {/foreach}
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">关闭</button>
                        {if $submit && $submit.method == 'post'}
                            <input value="{$submit.url}" id="subUrl" hidden/>
                            <button type="button" class="btn btn-primary" onclick="modalFormSubmit()">保存</button>
                        {else}
                            <button type="submit" class="btn btn-primary">保存</button>
                        {/if}

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var isSubmit = false;
    function modalFormSubmit() {
        var flag = $('#modalForm').bootstrapValidator('validate').data('bootstrapValidator').isValid();
        if (!flag) {
            return;
        }
        if (isSubmit) {
            return;
        }
        isSubmit = true;
        var modalForm = $("#modalForm").serialize();
        var url = $("#subUrl").val();
        $.post(url, modalForm, function(res){
            alert(res.msg);
            setTimeout(function () {
                location.reload();
            }, 1000);
        });
    }
</script>