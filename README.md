<h3> BLING - Bash Library Implementation - Next Gen </h3>
<hr>
BLING is a collection of BASH libraries. It is a collection of functions useful for BASH scripts.
<hr>
<h3> :warning: This code is highly experiemental and has NOT been fully implemented or tested yet. :warning: </h3>
<hr>
<p>
<div id="Proposed-Features">
  <b>Proposed Features</b>
    <li> :ballot_box_with_check: [PLANNED] Each function is contained within its own file. :ballot_box_with_check: </li>
    <li> :ballot_box_with_check: [PLANNED] An easy way to easily integrate the library into future scripts. :ballot_box_with_check: </li>
    <li> :ballot_box_with_check: [PLANNED] RPM/DEB packaging for various platforms (Fedora/CentOS/Debian/Ubuntu/Raspberry Pi, etc.) :ballot_box_with_check: </li>
    <li> :x: [DEPRECATED] A script that parses all functions in functions/ folder into a single library file. :x: </li> 
    <li> :x: [DEPRECATED] A utility to allow running an individual function for testing purposes. (ftest or functest) :x: </li> 
</div>
<hr>
<div id="TODO">
  <b>TODO</b>
    <li> :heavy_check_mark: [TESTABLE] Finish implementing ColorLib a.k.a. Cecho. :heavy_check_mark: </li>
    <li> :ballot_box_with_check: ✅ [IN PROGRESS] Add a plethora of useful functions. ✅ :ballot_box_with_check: </li> 
    <li> :ballot_box_with_check: [PLANNED] Use -v for verbose as argument for each function; use -q for quiet. :ballot_box_with_check: </li>
    <li> :x: [DEPRECATED] Fix BuildLib.sh script: backups aren't moved to $BackupDir. :x: </li>
    <li> :x: [DEPRECATED] Test new BuildLib2.sh utility - Uses a separate functions file (BuildLib.func). :x: </li>
    <li> :x: [DEPRECATED] Ensure that move of built libraries to /lib works as expected. :x: </li>
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
