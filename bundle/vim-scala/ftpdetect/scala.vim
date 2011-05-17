<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  
  


  

  <head>
    <title>
      /scala-tool-support/trunk/src/vim/ftdetect/scala.vim – Scala
    </title>
        <link rel="search" href="/trac/scala/search" />
        <link rel="help" href="/trac/scala/wiki/TracGuide" />
        <link rel="alternate" href="/trac/scala/export/24986/scala-tool-support/trunk/src/vim/ftdetect/scala.vim" type="text/plain" title="Original Format" />
        <link rel="up" href="/trac/scala/browser/scala-tool-support/trunk/src/vim/ftdetect" title="Parent directory" />
        <link rel="start" href="/trac/scala/wiki" />
        <link rel="stylesheet" href="/trac/scala/chrome/common/css/trac.css" type="text/css" /><link rel="stylesheet" href="/trac/scala/chrome/common/css/code.css" type="text/css" /><link rel="stylesheet" href="/trac/scala/pygments/trac.css" type="text/css" /><link rel="stylesheet" href="/trac/scala/chrome/common/css/browser.css" type="text/css" />
        <link rel="shortcut icon" href="/trac/scala/chrome/common/trac.ico" type="image/x-icon" />
        <link rel="icon" href="/trac/scala/chrome/common/trac.ico" type="image/x-icon" />
      <link type="application/opensearchdescription+xml" rel="search" href="/trac/scala/search/opensearch" title="Search Scala" />
    <script type="text/javascript" src="/trac/scala/chrome/common/js/jquery.js"></script><script type="text/javascript" src="/trac/scala/chrome/common/js/trac.js"></script><script type="text/javascript" src="/trac/scala/chrome/common/js/search.js"></script>
    <!--[if lt IE 7]>
    <script type="text/javascript" src="/trac/scala/chrome/common/js/ie_pre7_hacks.js"></script>
    <![endif]-->
    <script type="text/javascript">
      jQuery(document).ready(function($) {
        $(".trac-toggledeleted").show().click(function() {
                  $(this).siblings().find(".trac-deleted").toggle();
                  return false;
        }).click();
        $("#jumploc input").hide();
        $("#jumploc select").change(function () {
          this.parentNode.parentNode.submit();
        });
      });
    </script>
  </head>
  <body>
    <div id="banner">
      <div id="header">
        <a id="logo" href="http://scala-lang.org/"><img src="/images/Scala_Logo2008.png" alt="" /></a>
      </div>
      <form id="search" action="/trac/scala/search" method="get">
        <div>
          <label for="proj-search">Search:</label>
          <input type="text" id="proj-search" name="q" size="18" value="" />
          <input type="submit" value="Search" />
        </div>
      </form>
      <div id="metanav" class="nav">
    <ul>
      <li class="first"><a href="/trac/scala/login">Login</a></li><li><a href="/trac/scala/wiki/TracGuide">Help/Guide</a></li><li><a href="/trac/scala/register">Register</a></li><li><a href="/trac/scala/prefs">Preferences</a></li><li class="last"><a href="/trac/scala/reset_password">Forgot your password?</a></li>
    </ul>
  </div>
    </div>
    <div id="mainnav" class="nav">
    <ul>
      <li class="first"><a href="/trac/scala/wiki">Wiki</a></li><li><a href="/trac/scala/timeline">Timeline</a></li><li class="active"><a href="/trac/scala/browser">Browse Source</a></li><li><a href="/trac/scala/query">View Tickets</a></li><li class="last"><a href="/trac/scala/search">Search</a></li>
    </ul>
  </div>
    <div id="main">
      <div id="ctxtnav" class="nav">
        <h2>Context Navigation</h2>
          <ul>
              <li class="first"><a href="/trac/scala/changeset/21921/scala-tool-support/trunk/src/vim/ftdetect/scala.vim">Last Change</a></li><li><a href="/trac/scala/browser/scala-tool-support/trunk/src/vim/ftdetect/scala.vim?annotate=blame&amp;rev=21921" title="Annotate each line with the last changed revision (this can be time consuming...)">Annotate</a></li><li class="last"><a href="/trac/scala/log/scala-tool-support/trunk/src/vim/ftdetect/scala.vim">Revision Log</a></li>
          </ul>
        <hr />
      </div>
    <div id="content" class="browser">
      <h1>
    <a class="pathentry first" title="Go to root directory" href="/trac/scala/browser">root</a><span class="pathentry sep">/</span><a class="pathentry" title="View scala-tool-support" href="/trac/scala/browser/scala-tool-support">scala-tool-support</a><span class="pathentry sep">/</span><a class="pathentry" title="View trunk" href="/trac/scala/browser/scala-tool-support/trunk">trunk</a><span class="pathentry sep">/</span><a class="pathentry" title="View src" href="/trac/scala/browser/scala-tool-support/trunk/src">src</a><span class="pathentry sep">/</span><a class="pathentry" title="View vim" href="/trac/scala/browser/scala-tool-support/trunk/src/vim">vim</a><span class="pathentry sep">/</span><a class="pathentry" title="View ftdetect" href="/trac/scala/browser/scala-tool-support/trunk/src/vim/ftdetect">ftdetect</a><span class="pathentry sep">/</span><a class="pathentry" title="View scala.vim" href="/trac/scala/browser/scala-tool-support/trunk/src/vim/ftdetect/scala.vim">scala.vim</a>
    <br style="clear: both" />
  </h1>
      <div id="jumprev">
        <form action="" method="get">
          <div>
            <label for="rev">
              View revision:</label>
            <input type="text" id="rev" name="rev" size="6" />
          </div>
        </form>
      </div>
      <table id="info" summary="Revision info">
        <tr>
          <th scope="col">
            Revision <a href="/trac/scala/changeset/21921">21921</a>, <span title="50 bytes">50 bytes</span>
            (checked in by dubochet, <a class="timeline" href="/trac/scala/timeline?from=2010-05-12T17%3A38%3A51%2B0200&amp;precision=second" title="2010-05-12T17:38:51+0200 in Timeline">12 months</a> ago)
          </th>
        </tr>
        <tr>
          <td class="message searchable">
              <p>
Removed more SVN keyword substitution tags (as the tags have been removed). No review.<br />
</p>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <ul class="props">
              <li>
                  Property <strong>svn:eol-style</strong> set to
                    <em><code>LF</code></em>
              </li>
            </ul>
          </td>
        </tr>
      </table>
      <div id="preview" class="searchable">
    <table class="code"><thead><tr><th class="lineno" title="Line numbers">Line</th><th class="content"> </th></tr></thead><tbody><tr><th id="L1"><a href="#L1">1</a></th><td></td></tr><tr><th id="L2"><a href="#L2">2</a></th><td>au BufRead,BufNewFile *.scala set filetype=scala</td></tr></tbody></table>
      </div>
      <div id="help">
        <strong>Note:</strong> See <a href="/trac/scala/wiki/TracBrowser">TracBrowser</a>
        for help on using the browser.
      </div>
      <div id="anydiff">
        <form action="/trac/scala/diff" method="get">
          <div class="buttons">
            <input type="hidden" name="new_path" value="/scala-tool-support/trunk/src/vim/ftdetect/scala.vim" />
            <input type="hidden" name="old_path" value="/scala-tool-support/trunk/src/vim/ftdetect/scala.vim" />
            <input type="hidden" name="new_rev" />
            <input type="hidden" name="old_rev" />
            <input type="submit" value="View changes..." title="Select paths and revs for Diff" />
          </div>
        </form>
      </div>
    </div>
    <div id="altlinks">
      <h3>Download in other formats:</h3>
      <ul>
        <li class="last first">
          <a rel="nofollow" href="/trac/scala/export/24986/scala-tool-support/trunk/src/vim/ftdetect/scala.vim">Original Format</a>
        </li>
      </ul>
    </div>
    </div>
    <div id="footer" lang="en" xml:lang="en"><hr />
      <a id="tracpowered" href="http://trac.edgewall.org/"><img src="/trac/scala/chrome/common/trac_logo_mini.png" height="30" width="107" alt="Trac Powered" /></a>
      <p class="left">
        Powered by <a href="/trac/scala/about"><strong>Trac 0.11.6</strong></a><br />
        By <a href="http://www.edgewall.org/">Edgewall Software</a>.
      </p>
      <p class="right">Visit the Scala project at<br /><a href="http://scala-lang.org/">http://scala-lang.org/</a></p>
    </div>
  </body>
</html>