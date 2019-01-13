<h1>HTML Template project skeleton using Shell Script</h1>
<P>Now by one click you can get your html project skeleton. You just need to run the shell script in your operating system</p>
<p>Follow the instructions. It's quite easy!</p>
<div>
<ul>
<li>Unzip the file after downloding from git. You will get a script which called setProject.sh . You have to run this file.</li>
  <li>Open your linux command prompt by using <b>Ctrl+Alt+t</b></li>
<li>At first you have to provide proper permission for the shell script. Type <b>chmod 700 ./setProject.sh</b> . By this command the file will get only user permission to read, write and execute.</li>
<li>To run the script type in your command prompt <b>./setProject.sh projectFolderName</b>.</li>
<li>Here projectFolderName means the directory name which need to select by you.</li>
<li>If you run the above command you will get a html template skeleton which will contain index.html file and some neccessary
directories as like css, scripts, images, lib. In css directory you will get a style.css file to write css code for the template.In scripts directory you will get script.js file to write JavaScript code for your template.</li>
<li>If you want to get bootstrap template then you need to run <b>./setProject.sh projectFolderName bootstrap</b> instead of above command. Here you just need to change projectFolderName. </li>
<li>Suppose you want to get a directory which is called demoProject. Then you need to type <b>./setProject.sh demoProject bootstrap</b> (to get skeleton with bootstrap)
or <b>./setProject.sh demoProject</b> (to get skeleton without bootstrap)</li>
</ul>
</div>
