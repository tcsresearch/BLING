BLING - Bash Library Implementation - Next Gen
<hr>
BLING is a collection of BASH libraries. It is a collection of functions useful for BASH scripts.
<p>
<div id="Proposed-Features">
  <b>Proposed Features</b>
    <li> Each function is contained within its own file </li>
    <li> [DEPRECATED] A script that parses all functions in functions/ folder into a single library file. </li> 
    <li> [DEPRECATED] A utility to allow running an individual function for testing purposes. (ftest or functest) </li> 
    <li> An easy way to easily integrate the library into future scripts, incl. 3rd party scripts. </li>
    <li> RPM/DEB packaging for various platforms (Fedora/CentOS/Debian/Ubuntu/Raspberry Pi, etc.) </li>
</div>
<hr>
<div id="TODO">
  <b>TODO</b>
    <li> Use -v for verbose as argument for each function; use -q for quiet. </li>
    <li> $\textcolor{red}{[DEPRECATED]\ Fix\ BuildLib.sh\ script:\ backups\ arent\ moved\ to\ $BackupDir.}$ </li>
    <li> [TESTABLE] Finish implementing ColorLib a.k.a. Cecho. </li>
    <li> Add a plethora of useful functions. </li>
    <li> [DEPRECATED] Test new BuildLib2.sh utility - Uses a separate functions file (BuildLib.func). </li>
    <li> [DEPRECATED] Ensure that move of built libraries to /lib works as expected. </li>
</div>
<hr>
<div id="Updates_01-2023">
  <b>Updates 01/2023</b>
    <li> ColorEcho now resides inside its own repo. </li>
    <li> The BuildLib Tool may no longer be necessary.  We can use a for statement to parse all .func files at once. </li>
    <li> A few new functions (Cecho, FLIPTool) have been added. </li>
 </div>
 <hr>
<div id="Updates_05-2023">
  <b>Updates 05/2023</b>
    <li> Added _Plugins-Dev Folder. </li>
    <li> Migrated contents of tcs-scripts repo to _Plugins-Dev. </li>
 </div>
