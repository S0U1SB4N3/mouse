#! /bin/bash

# 
#            --------------------------------------------------
#                           Mouse Payload Loader                
#            --------------------------------------------------
#          Copyright (C) <2015>  <Entynetproject (Ivan Nikolsky)>
#
#        This program is free software: you can redistribute it and/or modify
#        it under the terms of the GNU General Public License as published by
#        the Free Software Foundation, either version 3 of the License, or
#        any later version.
#
#        This program is distributed in the hope that it will be useful,
#        but WITHOUT ANY WARRANTY; without even the implied warranty of
#        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#        GNU General Public License for more details.
#
#        You should have received a copy of the GNU General Public License
#        along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
#    About Author :   
#    Founder   : Entynetproject (Ivan Nikolsky)
#    Site      : http://entynetproject.simplesite.com/
#    Instagram : @entynetproject 
#    Twitter   : @entynetproject
#    Email     : entynetproject@gmail.com
#

RSA="\033[31m"
YSA="\033[1;93m"
CEA="\033[0m"
WHS="\033[0;97m"

WHO="$( whoami )"

if [[ "$WHO" != "root" ]]
then
    echo -e ""$RSA"[-]"$WHS" [Errno 1] Can't get privilegies"$CEA""
    exit
exit
fi

if [[ -d ~/mouse ]]
then
cd  ~/mouse
{
cp bin/mouse /usr/local/bin
chmod +x /usr/local/bin/mouse
cp bin/mouse /bin
chmod +x /bin/mouse
make
} &> /dev/null
else
cd ~
{
git clone https://github.com/entynetproject/mouse.git
cd  ~/mouse
cp bin/mouse /usr/local/bin
chmod +x /usr/local/bin/mouse
cp bin/mouse /bin
chmod +x /bin/mouse
} &> /dev/null
fi
