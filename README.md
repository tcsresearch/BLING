
<h4> BLING - Bash Library Implementation - Next Gen </h4>
<hr>

> [!NOTE]
> BLING is a BASH library.  It contains a collection of functions useful for BASH scripts.
<hr>

> [!WARNING]
> This code is highly experiemental and has NOT been fully implemented or tested.
<hr>

> [!IMPORTANT]
> Code is not considered stable yet, and still lacks most features.

<hr>


  
<div id="Proposed-Features">
  <details>
    <summary>
      <b>Proposed Features</b>
    </summary>
      <ul>
        <li> :ballot_box_with_check: [PLANNED] Each function is contained within its own file. :ballot_box_with_check: </li>
        <li> :ballot_box_with_check: [PLANNED] An easy way to easily integrate the library into future scripts. :ballot_box_with_check: </li>
        <li> :ballot_box_with_check: [PLANNED] RPM/DEB packaging for various platforms (Fedora/CentOS/Debian/Ubuntu/Raspberry Pi, etc.) :ballot_box_with_check: </li>
        <li> :x: [DEPRECATED] A script that parses all functions in functions/ folder into a single library file. :x: </li> 
        <li> :x: [DEPRECATED] A utility to allow running an individual function for testing purposes. (ftest or functest) :x: </li> 
      </ul>
</details>
</div>
<hr>
<div id="TODO">
  <details>
    <summary>
    <b>TODO</b>
    </summary>
    <ul>
      <li> :heavy_check_mark: [TESTABLE] Finish implementing ColorLib a.k.a. Cecho. :heavy_check_mark: </li>
      <li> :heavy_check_mark:  [TESTABLE] Rename all functions to use .bfunc extension. :heavy_check_mark: </li>
      <li> :ballot_box_with_check:  [IN PROGRESS] Create Config Loader.  :ballot_box_with_check: </li> 
      <li> :ballot_box_with_check:  [IN PROGRESS] Create Function Loader.  :ballot_box_with_check: </li> 
      <li> :ballot_box_with_check:  [IN PROGRESS] Add a plethora of useful functions.  :ballot_box_with_check: </li> 
      <li> :ballot_box_with_check:     [IN PROGRESS] Test all functions. </li> 
      <li> :ballot_box_with_check: [PLANNED] Use -v for verbose as argument for each function; use -q for quiet. :ballot_box_with_check: </li>
      <li> :x: [DEPRECATED] Fix BuildLib.sh script: backups aren't moved to $BackupDir. :x: </li>
      <li> :x: [DEPRECATED] Test new BuildLib2.sh utility - Uses a separate functions file (BuildLib.func). :x: </li>
      <li> :x: [DEPRECATED] Ensure that move of built libraries to /lib works as expected. :x: </li>
    </ul>
  </details>
</div>

<hr>
<div id="Updates_01-2026">
  <details open>
    <summary>
      <b>Updates 01/2026</b>
    </summary>
      <ul>
        <li> Added ExportHacks.bfunc </li>
      </ul>
  </details>
</div>


<hr>
<div id="Updates_12-2025">
  <details open>
    <summary>
      <b>Updates 12/2025</b>
    </summary>
      <ul>
        <li> Updated Cecho function for easy fallback when no color is selected. </li>
        <li> Added several functions and scripts related to boot: <br>
            - chipset detection, disable secure boot, change between graphical and commandline, etc. - NOT FULLY TESTED! </li>
        <li> Added TakeOwnership.sh (UNTESTED!). </li>
        <li> Added a few BLINGDev functions to allow for easier development in the future. <br>
          - loader for config/ and functions/ folders, sanity checks, CASE statement generation, extracting functions, etc - UNTESTED! </li>
        <li> Added NewEchoBox and SimpleBanner functions. </li>
        </ul>
  </details>
</div>

<hr>
<div id="Updates_05-2025">
  <details>
    <summary>
      <b>Updates 05/2025</b>
    </summary>
      <ul>
        <li> Add SimpleBanner function (UNTESTED!). </li>
        <li> Add CenterEcho.bfunc (UNTESTED!} </li>
        <li> Add NewEchoBox.bfunc (UNTESTED!). </li>
        <li> Rename function banner to ColorBanner in ColorBanner.bfunc. </li>
        <li> Improved Dialog for Pause function. </li>
        </ul>
  </details>
</div>


<hr>
<div id="Updates_01-2025">
  <details>
    <summary>
      <b>Updates 01/2025</b>
    </summary>
      <ul>
        <li> Add CheckCommand function (UNTESTED!). </li>
        <li> Rename NewCecho.bfunc to Cecho.bfunc. </li>
      </ul>
  </details>
</div>





<hr>
<div id="Updates_12-2024">
  <details>
    <summary>
      <b>Updates 12/2024</b>
    </summary>
      <ul>
        <li> Enhance DisplayLine Function. </li>
        <li> Move a few functions into production from TESTING. </li>
        <li> Partial development and enhancement of some functions, including IfFileExists, AdvancedLoader, and SourceIfFileExists. </li>
      </ul>
  </details>
</div>

<hr>
<div id="Updates_10-2024">
  <details>
    <summary>
      <b>Updates 10/2024</b>
    </summary>
      <ul>
        <li> Add new functions: fliptool3, fliptool4, displayline, Pause, &  KTool. </li>
      </ul>
  </details>
</div>

<hr>
<div id="Updates_04-2024">
  <details>
    <summary>
      <b>Updates 04/2024</b>
    </summary>
      <ul>
        <li> Add new function duls. </li>
      </ul>
  </details>
</div>

<hr>
<div id="Updates_03-2024">
  <details>
    <summary>
      <b>Updates 03/2024</b>
    </summary>
      <ul>
        <li> Add new functions IfFileExists and IfFolderExists. </li>
      </ul>
  </details>
</div>

<hr>
<div id="Updates_01-2023">
  <details>
    <summary>
      <b>Updates 01/2023</b>
    </summary>
      <ul>
        <li> ColorEcho now resides inside its own repo. </li>
        <li> The BuildLib Tool may no longer be necessary.  We can use a for statement to parse all .func files at once. </li>
        <li> A few new functions (Cecho, FLIPTool) have been added. </li>
      </ul>
  </details>
 </div>
 
 <hr>
<div id="Updates_05-2023">
  <details>
    <summary>
      <b>Updates 05/2023</b>
    </summary>
      <ul>
        <li> Added _Plugins-Dev Folder. </li>
        <li> Migrated contents of tcs-scripts repo to _Plugins-Dev. </li>
      </ul>
 </div>
  </details>
