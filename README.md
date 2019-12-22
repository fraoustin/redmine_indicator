# Redmine Indicator

## Summary

Add block with main indicator on my page and project page

![custom-field](screenshots/1.png "My page")

## Usage

On your page, can you add

- my issues by priority

![custom-field](screenshots/2.png "My page")

- my issues by status

![custom-field](screenshots/3.png "My page")

- my issues by tracker

![custom-field](screenshots/4.png "My page")

- my issues due

![custom-field](screenshots/5.png "My page")

- my issues next

![custom-field](screenshots/6.png "My page")

- my issues today

![custom-field](screenshots/7.png "My page")

- my issues opened closed today

![custom-field](screenshots/8.png "My page")

- my issues opened closed on 10 days

![custom-field](screenshots/10.png "My page")

- - my issues opened closed on 10 weeks

- my issues summary

![custom-field](screenshots/9.png "My page")


- my spent time on 10 days

![custom-field](screenshots/11.png "My page")

- my spent_time on 10 weeks

![custom-field](screenshots/12.png "My page")


You can add same block in project's page "overview" with change value of custom field of projet:

- indicator_left_top
- indicator_left_bottom
- indicator_right

![custom-field](screenshots/13.png "Project")

![custom-field](screenshots/14.png "Project")



## Installation

```
$ cd redmine/plugins
$ git clone https://github.com/fraoustin/redmine_indicator.git
$ rake redmine:plugins:migrate NAME=redmine_indicator
```

restart Redmine

for uninstall, you can use

```
$ cd redmine/plugins
$ rake redmine:plugins:migrate NAME=redmine_indicator VERSION=0
```

