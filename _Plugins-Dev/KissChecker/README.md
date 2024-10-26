<h3> Kernel Indepth Static Sanity (KISS) Checker Tool  </h3>
<hr>
KISSChecker will run various static analyser checks on the Linux kernel, as per the Makefile.
<hr>
<h3> :warning: This code is highly experiemental and has NOT been fully implemented or tested yet. :warning: </h3>
<hr>
<p>
<div id="Proposed-Features">
  <details>
    <summary>
      <b>Proposed Features</b>
    </summary>
      <ul>
        <li> Will provide details soon. </li> 
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
      <li> Stop Program if not in built Kernel directory (SanityCheck_KBuildDir) </li>
      <li> Needs to run with Kernel Makefile and copy of compiled vmlinux. </li>
      <li> *		Should we include a Kernel Makefile? </li>
      <li> *		Specify vmlinux via option/cmdline?  Running copy and/or rpmbuild based? </li>

  <li>	[IN PROGRESS] Split into functions/vars/configs etc. </li>

<li> Add Log By Date Capability (via $Today in BLING) </li>

<li> Add -a option to tee command as command line option? </li>

<li>	Include cecho as library for fancy output. </li>
<li> *  	Use colorized output from cecho. </li>

<li> 	[PENDING] Configure where log files will be stored. </li>

<li>	Should we grep for certain major flaws that could be exposed by the logfiles? </li>
<li> *		e.g. instead of scanning for x, tool can do it for us.	</li>
    </ul>
  </details>
</div>

