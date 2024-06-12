# impacket

% impacket

## install - virtualenv
```bash
git clone <repo> -b <branch>
cd impacket
virtualenv --python=python3 venv
source venv/bin/activate
pip install setuptools
Add pycryptodome and pyOpenSSL==24.0.0 to install_requires in setup.py

pip3 install .
```