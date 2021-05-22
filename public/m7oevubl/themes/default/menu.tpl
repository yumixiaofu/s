<div class="vertical-menu">
  <div data-simplebar="init" class="h-100">
    <div class="simplebar-wrapper" style="margin: 0px;">
      <div class="simplebar-height-auto-observer-wrapper">
        <div class="simplebar-height-auto-observer"></div>
      </div>
      <div class="simplebar-mask">
        <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
          <div class="simplebar-content-wrapper mm-active" style="height: 100%; overflow: hidden;">
            <div class="simplebar-content mm-show" style="padding: 0px;">
              <!--- Sidemenu -->
              <div id="sidebar-menu">
                <!-- Left Menu Start -->
                <ul class="metismenu list-unstyled mm-show" id="side-menu">


                  <li class="menu active">
                    <a href="javascript: ;" aria-expanded="true">
                      <span>插件中心</span> <i class="bi-chevron-down"></i>
                    </a>
                    <ul class="sub-menu mm-collapse mm-show" aria-expanded="false">
                      {foreach $PluginsMenu as $v}
                        <li class="link {if $v.name == $Addons}mm-active{/if}"><a href="{$v.menu}">{$v.title}</a></li>
                      {/foreach}

                    </ul>
                  </li>


                    </ul>
                  </li>

                </ul>
              </div>
              <!-- Sidebar -->
            </div>
          </div>
        </div>
      </div>
      <div class="simplebar-placeholder" style="width: auto;"></div>
    </div>
    <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;">
      <div class="simplebar-scrollbar" style="transform: translate3d(0px, 0px, 0px); display: none;"></div>
    </div>
    <div class="simplebar-track simplebar-vertical" style="visibility: hidden;">
      <div class="simplebar-scrollbar" style="height: 613px; transform: translate3d(0px, 0px, 0px); display: none;">
      </div>
    </div>
  </div>
</div>