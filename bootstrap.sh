#!/usr/bin/env bash

set -euo pipefail


# Helper func
function _logger_info(){
  echo -e "\n[$(date '+%d/%b/%Y %T')]: $*...\n"
}


function prepare_tmp_dir(){
    _logger_info "Preparing tmp dir"
    export TMP_DIR=$(mktemp -d)
    pushd "$TMP_DIR"
}

function clean_tmp_dir(){
    _logger_info "Cleaning tmp dir"
    popd
    # rm -rf "$TMP_DIR"
}

function install_req(){
  _logger_info "Installing Homebrew"
  export PATH="/opt/homebrew/bin/:$PATH"
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  _logger_info "Installing oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  _logger_info "Installing ansible"
  python3 -m venv .venv
  source .venv/bin/activate
  pip install ansible
}

function install_conf(){
  _logger_info "Cloning .files repo"
  git clone --branch main https://github.com/UnderGrounder96/.files.git ~/.files

  _logger_info "Executing ansible role"
  cd ~/.files/ansible/
  ansible-playbook playbook.yml
}

function main(){
  prepare_tmp_dir

  install_req
  install_conf

  clean_tmp_dir
  exit 0
}


main 2>&1 | tee /tmp/bootstrap-$(date '+%F_%T').log
