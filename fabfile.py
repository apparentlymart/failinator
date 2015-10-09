
from fabric.api import env
from fabric.operations import sudo, run
from fabric.contrib.project import rsync_project


env.hosts = ['ubuntu@ec2-54-183-68-122.us-west-1.compute.amazonaws.com']
env.key_filename = 'provisioning_private_key'


def deploy():
    # make sure the directory is there!
    sudo('mkdir -p /opt/failinator')

    # upload files in the current dir to the remote dir
    rsync_project(remote_dir='/opt/failinator', local_dir='./')

    run('cd /opt/failinator/server; SERVER_PORT=3000 npm start')
