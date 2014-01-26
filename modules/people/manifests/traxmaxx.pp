class people::traxmaxx {

  notify { 'class people::traxmaxx declared': }

  include people::traxmaxx::os
  include people::traxmaxx::shell
  include people::traxmaxx::applications

  include android::sdk
  include android::tools
  include android::platform_tools
}