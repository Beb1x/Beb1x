
import win32serviceutil
import win32service
import win32event
import servicemanager
import socket
import sys
from AutoPinV2 import AutoPinConfig, AutoPin

class AutoPinService(win32serviceutil.ServiceFramework):
    _svc_name_ = 'AutoPinService'
    _svc_display_name_ = 'AutoPin Service'

    def __init__(self, args):
        win32serviceutil.ServiceFramework.__init__(self, args)
        self.hWaitStop = win32event.CreateEvent(None, 0, 0, None)
        socket.setdefaulttimeout(120)
        self.is_alive = True

    def SvcStop(self):
        self.ReportServiceStatus(win32service.SERVICE_STOP_PENDING)
        win32event.SetEvent(self.hWaitStop)
        self.is_alive = False

    def SvcDoRun(self):
        servicemanager.LogMsg(servicemanager.EVENTLOG_INFORMATION_TYPE,
                              servicemanager.PYS_SERVICE_STARTED,
                              (self._svc_name_, ''))
        self.main()

    def main(self):
        config_path = r'C:\IT\AutoStuffconfig.ini'  
        config = AutoPinConfig(config_path)
        autopin = AutoPin(config)
        autopin.main()


if __name__ == '__main__':
    if len(sys.argv) == 1:
        servicemanager.Initialize()
        servicemanager.PrepareToHostSingle(AutoPinService)
        servicemanager.StartServiceCtrlDispatcher()
    else:
        win32serviceutil.HandleCommandLine(AutoPinService)


#honestly is looking better