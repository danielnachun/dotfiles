c = get_config()  #noqa
c.ServerApp.iopub_msg_rate_limit = 5000
c.ServerApp.allow_root = True
c.ServerApp.ip = '0.0.0.0'
c.ServerApp.jpserver_extensions = {"ipyparallel": True}
