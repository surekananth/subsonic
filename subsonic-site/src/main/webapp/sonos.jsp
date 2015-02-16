<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="iso-8859-1" %>

<!DOCTYPE HTML>
<html>
<%@ include file="head.jsp" %>

<body>

<c:import url="header.jsp"/>

<section id="main" class="container">
    <header>
        <h2>Sonos</h2>

        <p>Own a Sonos? Subsonic is for you.</p>
    </header>

    <section class="box">
        <span class="image featured"><img src="inc/img/sonos/sonos-header.png" alt="" /></span>
        <p>
            Subsonic comes with built-in support for your Sonos players. Access your personal music library
            the same way as other Sonos music services like Spotify or Google Play.
        </p>

        <p>
            <em>Currently available in <a href="download.jsp">Subsonic 5.2.beta1</a></em>
        </p>

        <h3>Features</h3>
        <div class="row">
            <div class="6u 12u(3)">
                <ul>
                    <li>Works with giant music libraries. Not limited to 65,000 songs like the native Sonos controller.</li>
                    <li>Doesn't require installation of the Sonos controller.</li>
                    <li>Access your personal Subsonic playlists (as well as Sonos playlists).</li>
                    <li>Star your favorites.</li>
                    <li>Audioscrobbling and play statistics.</li>
                    <li>Powerful search feature.</li>
                </ul>
            </div>

            <div class="6u 12u(3)">
                <ul>
                    <li>The Subsonic web app shows who is playing what on Sonos.</li>
                    <li>Artist radio for playing similar songs.</li>
                    <li>Shuffle play whole library or by artist.</li>
                    <li>Album lists: Random, Recently added, Starred, Top rated, Most Played, Recently played, By decade, By genre.</li>
                    <li>Same folder structure / album art / media meta data as in the Subsonic web app</li>
                </ul>
            </div>
        </div>

        <h3>Setting it up</h3>
        <p>
            Connecting Sonos to your Subsonic server is super easy:
        </p>
        <ol>
            <li>In the Subsonic web page, enable the Sonos music service in <b>Settings &gt; Sonos</b>.</li>
            <li>In the Sonos controller, click <b>Add Music Services</b> and select Subsonic.</li>
            <li>Select <b>I already have an account</b>, then enter your Subsonic username and password.</li>
            <li>You're done. The list of music sources now includes the Subsonic music service.</li>
        </ol>

        <%--<span class="image left"><img src="inc/img/sonos/sonos-1.png" alt=""/></span>--%>
        <%--<span class="image left"><img src="inc/img/sonos/sonos-2.png" alt=""/></span>--%>
        <%--<span class="image left"><img src="inc/img/sonos/sonos-3.png" alt=""/></span>--%>
        <%--<span class="image left"><img src="inc/img/sonos/sonos-4.png" alt=""/></span>--%>

        <iframe width="800" height="531" src="https://www.youtube.com/embed/gQPSA4vMj24?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>

        <h3>Advanced settings</h3>

        <h4>Lossless audio</h4>
        <p>
            For maximum compatibility, Subsonic is by default transcoding non-mp3 music files to mp3 when streaming to Sonos.
            However, Sonos natively supports several other <a href="https://sonos.custhelp.com/app/answers/detail/a_id/80/~/supported-audio-formats">audio formats</a>,
            such as FLAC and OGG.  To disable the transcoding in Subsonic, select <b>Settings &gt; Players</b>, select the
            Sonos player, and then disable the "mp3 audio" transcoding.
        </p>

        <h4>Multiple Subsonic servers</h4>
        <p>
            Sonos music services are uniquely identified by a "SID" (a number between 240 and 253). By default, Subsonic uses
            SID 242. If you want to make multiple Subsonic servers on your local network available to Sonos, you have to
            assign a unique SID to each server. This setting is not available through the web interface, but you can add this
            line to the subsonic.properties file (located in /var/subsonic, c:/subsonic or /Library/Application Support/Subsonic)
            to change it.
        </p>
        <p>
            <code>
                SonosServiceId=243
            </code>
        </p>
        <p>
            Remember to restart Subsonic to make it take effect.
        </p>

    </section>


</section>


<%@ include file="footer.jsp" %>

</body>
</html>