FROM python:2
RUN /bin/bash -c "echo 'jenkins:x:112:116:Jenkins,,,:/var/lib/jenkins:/bin/bash' >> /etc/passwd"
USER jenkins
ADD test_cases  /
ADD test.py /
RUN pip install pystrich
RUN pip install xmlrunner
RUN pip install pylint
RUN pip install pep8
RUN pip install pycodestyle
RUN pip install ansible
CMD [ "python", "./randomgen.py" ]
CMD [ "python", "./test.py" ]

