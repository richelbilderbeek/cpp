



 

 

 

 

 

([C++](Cpp.htm)) ![Wt](PicWt.png) [Global Wt deployment on a hosted server](CppWtDeployGlobalHosted.htm)
========================================================================================================

 

[Global Wt deployment on a hosted server](CppWtDeployGlobalHosted.htm)
is a type of [global Wt deployment](CppWtDeployGlobal.htm) in which an
internet host is paid to maintain a computer at a location you often
don't know, only access by an internet connection. The access rights you
have varies from FTP-only to root access.

 

If you can [deploy Wt globally](CppWtDeployGlobal.htm) depends on your
access rights:

-   ![?FAIL](PicOrange.png) Hosted server, FTP access: if all you can do
    is uploading files to your server using FTP, 'you are most likely
    not in a situation that you can run a Wt application' \[1\].
-   ![?OKAY](PicYellow.png) Hosted server, SSH access: if you have SSH
    access (next to FTP access) 'you may have sufficient rights on the
    server to host a Wt application' \[1\].
-   ![?OKAY](PicYellow.png) Others: probably succeed. See \[2\]
    for details.

 

 

 

 

 

External links
--------------

 

-   [Wt homepage](http://www.webtoolkit.eu/wt)
-   [Wt wiki's page about Wt
    deployment](http://redmine.webtoolkit.eu/projects/wt/wiki/Wt_Deployment)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Wt forum, thread 'Wt deployment on hosted
    server'](http://redmine.emweb.be/boards/2/topics/1128#message-1136)\

     

      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     Hey Richel,          Yes, I believe this is information is somewhat lacking. I have not yet encountered a shared hosting environment that is suitable for hosting of Wt applications. Wt requires either that you are allowed to install a FastCGI application or that you are allowed to run daemons to which HTTP requests are routed through a reverse proxy.          If you can login to your server using SSH, then that is a sign that you may have sufficient rights on the server to host a Wt application.          If all you can do is upload files over FTP, then you are most likely not in a situation that you can run a Wt application.          Type cheapest type of server on which you can host Wt application is usually a Virtual Private Server. A quick google reveals offerings starting at around $50 per year.          Regards,     koen     `
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    \

2.  [Wt Wiki page about Wt
    deployment](http://redmine.webtoolkit.eu/projects/wt/wiki/Wt_Deployment)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
