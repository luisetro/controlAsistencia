<!-- Main Header -->
<header class="main-header">

    <!-- Logo -->
    <a href="{{url(config('crudbooster.ADMIN_PATH'))}}" title='{{Session::get('appname')}}' class="logo">{{CRUDBooster::getSetting('appname')}}</a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
        {{--
        |
        |-----------------------------------
        |   Botones de menu horizontal
        |-----------------------------------
        | 
        --}}
        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
          <ul class="nav navbar-nav">
          <?php $dashboard = CRUDBooster::sidebarDashboard();?>
          @if($dashboard)
                    <li data-id='{{$dashboard->id}}' class="{{ (Request::is(config('crudbooster.ADMIN_PATH'))) ? 'active' : '' }}"><a href='{{CRUDBooster::adminPath()}}' class='{{($dashboard->color)?"text-".$dashboard->color:""}}' ><i class='fa fa-dashboard'></i> <span>{{trans("crudbooster.text_dashboard")}}</span> </a></li>
                @endif

            @foreach(CRUDBooster::sidebarMenu() as $menu)
                    <li data-id='{{$menu->id}}' class='{{(count($menu->children))?"treeview":"dropdown"}} {{(CRUDBooster::getCurrentMenuId()==$menu->id && CRUDBooster::getCurrentDashboardId()!=$menu->id )?"active":""}}'>
                      <a href='{{ ($menu->is_broken)?"javascript:alert('".trans('crudbooster.controller_route_404')."')":$menu->url."?m=".$menu->id }}' class='{{($menu->color)?"text-".$menu->color:""}} {{(count($menu->children))?"dropdown-toggle":""}}' data-toggle='{{(count($menu->children))?"dropdown":"" }}'>
                          <i class='{{$menu->icon}} {{($menu->color)?"text-".$menu->color:""}}'></i> 
                          <span>{{$menu->name}}</span>
                          @if(count($menu->children)) <span class="caret"></span> @endif
                            {{--@if(count($menu->children))<i class="fa fa-angle-{{ trans("crudbooster.right") }} pull-{{ trans("crudbooster.right") }}"></i>@endif--}}
                      </a>
                        @if(count($menu->children))
                            <ul class="dropdown-menu">
                                @foreach($menu->children as $child)
                                    <li data-id='{{$child->id}}' class='{{(CRUDBooster::getCurrentMenuId()==$child->id && CRUDBooster::getCurrentDashboardId()!=$child->id)?"active":""}}'><a href='{{ ($child->is_broken)?"javascript:alert('".trans('crudbooster.controller_route_404')."')":$child->url."?m=".$child->id }}'><i class='{{$child->icon}}'></i> <span>{{$child->name}}</span></a></li>
                                @endforeach
                            </ul>
                        @endif
                    </li>
                @endforeach
    </ul>
</div>
<!-- Navbar Right Menu -->
<div class="navbar-custom-menu">
    <ul class="nav navbar-nav">      


      <li class="dropdown notifications-menu">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title='Notifications' aria-expanded="false">
          <i id='icon_notification' class="fa fa-bell-o"></i>
          <span id='notification_count' class="label label-danger" style="display:none">0</span>
      </a>
      <ul id='list_notifications' class="dropdown-menu">
          <li class="header">{{trans("crudbooster.text_no_notification")}}</li>
          <li>
            <!-- inner menu: contains the actual data -->
            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;">
                <ul class="menu" style="overflow: hidden; width: 100%; height: 200px;">
                  <li>
                    <a href="#">
                      <em>{{trans("crudbooster.text_no_notification")}}</em>
                  </a>
              </li>

          </ul>
          <div class="slimScrollBar" style="width: 3px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 195.122px; background: rgb(0, 0, 0);"></div><div class="slimScrollRail" style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div></div>
      </li>
      <li class="footer"><a href="{{route('NotificationsControllerGetIndex')}}?m=0">{{trans("crudbooster.text_view_all_notification")}}</a></li>
  </ul>
</li>

<!-- User Account Menu -->
<li class="dropdown user user-menu">
    <!-- Menu Toggle Button -->
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <!-- The user image in the navbar-->
        <img src="{{ CRUDBooster::myPhoto() }}" class="user-image" alt="User Image"/>
        <!-- hidden-xs hides the username on small devices so only the image appears. -->
        <span class="hidden-xs">{{ CRUDBooster::myName() }}</span>
    </a>
    <ul class="dropdown-menu">
        <!-- The user image in the menu -->
        <li class="user-header">
            <img src="{{ CRUDBooster::myPhoto() }}" class="img-circle" alt="User Image" />
            <p>
                {{ CRUDBooster::myName() }}
                <small>{{ CRUDBooster::myPrivilegeName() }}</small>
                <small><em><?php echo date('d F Y')?></em> </small>                                
            </p>
        </li>

        <!-- Menu Footer-->
        <li class="user-footer">
            <div class="pull-{{ trans('crudbooster.left') }}">
                <a href="{{ route('AdminCmsUsersControllerGetProfile') }}?m=0" class="btn btn-default btn-flat"><i class='fa fa-user'></i> {{trans("crudbooster.label_button_profile")}}</a>
            </div>
            <div class="pull-{{ trans('crudbooster.right') }}">
                <a title='Lock Screen' href="{{ route('getLockScreen') }}" class='btn btn-default btn-flat'><i class='fa fa-key'></i></a> 
                <a href="javascript:void(0)" onclick="swal({   
                    title: '{{trans('crudbooster.alert_want_to_logout')}}',                                       
                    type:'info',   
                    showCancelButton:true, 
                    allowOutsideClick:true,  
                    confirmButtonColor: '#DD6B55',   
                    confirmButtonText: '{{trans('crudbooster.button_logout')}}',   
                    cancelButtonText: '{{trans('crudbooster.button_cancel')}}',
                    closeOnConfirm: false 
                }, function(){                                                                                 
                    location.href = '{{ route("getLogout") }}';

                });" title="{{trans('crudbooster.button_logout')}}" class="btn btn-danger btn-flat"><i class='fa fa-power-off'></i></a>
            </div>
        </li>
    </ul>
</li>
</ul>
</div>
</nav>
</header>
