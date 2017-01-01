<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#-- @ftlvariable name="currentUser" type="eu.kielczewski.example.domain.CurrentUser" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BabyAlina</title>
    <style>
        canvas {
            display: block;
            width: 100vw;
            height: 100vh;
            cursor: pointer;
        }
    </style>
    <script type="text/javascript">
        (function(t,q){"function"===typeof define&&define.amd?define([],q):"object"===typeof module&&module.exports?module.exports=q():t.anime=q()})(this,function(){var t={duration:1E3,delay:0,loop:!1,autoplay:!0,direction:"normal",easing:"easeOutElastic",elasticity:400,round:!1,begin:void 0,update:void 0,complete:void 0},q="translateX translateY translateZ rotate rotateX rotateY rotateZ scale scaleX scaleY scaleZ skewX skewY".split(" "),x,f={arr:function(a){return Array.isArray(a)},obj:function(a){return-1<
                        Object.prototype.toString.call(a).indexOf("Object")},svg:function(a){return a instanceof SVGElement},dom:function(a){return a.nodeType||f.svg(a)},num:function(a){return!isNaN(parseInt(a))},str:function(a){return"string"===typeof a},fnc:function(a){return"function"===typeof a},und:function(a){return"undefined"===typeof a},nul:function(a){return"null"===typeof a},hex:function(a){return/(^#[0-9A-F]{6}$)|(^#[0-9A-F]{3}$)/i.test(a)},rgb:function(a){return/^rgb/.test(a)},hsl:function(a){return/^hsl/.test(a)},
                    col:function(a){return f.hex(a)||f.rgb(a)||f.hsl(a)}},C=function(){var a={},b={Sine:function(a){return 1+Math.sin(Math.PI/2*a-Math.PI/2)},Circ:function(a){return 1-Math.sqrt(1-a*a)},Elastic:function(a,b){if(0===a||1===a)return a;var c=1-Math.min(b,998)/1E3,d=a/1-1;return-(Math.pow(2,10*d)*Math.sin(2*(d-c/(2*Math.PI)*Math.asin(1))*Math.PI/c))},Back:function(a){return a*a*(3*a-2)},Bounce:function(a){for(var b,c=4;a<((b=Math.pow(2,--c))-1)/11;);return 1/Math.pow(4,3-c)-7.5625*Math.pow((3*b-2)/22-a,2)}};
                    ["Quad","Cubic","Quart","Quint","Expo"].forEach(function(a,d){b[a]=function(a){return Math.pow(a,d+2)}});Object.keys(b).forEach(function(c){var d=b[c];a["easeIn"+c]=d;a["easeOut"+c]=function(a,b){return 1-d(1-a,b)};a["easeInOut"+c]=function(a,b){return.5>a?d(2*a,b)/2:1-d(-2*a+2,b)/2};a["easeOutIn"+c]=function(a,b){return.5>a?(1-d(1-2*a,b))/2:(d(2*a-1,b)+1)/2}});a.linear=function(a){return a};return a}(),y=function(a){return f.str(a)?a:a+""},D=function(a){return a.replace(/([a-z])([A-Z])/g,"$1-$2").toLowerCase()},
                E=function(a){if(f.col(a))return!1;try{return document.querySelectorAll(a)}catch(b){return!1}},z=function(a){return a.reduce(function(a,c){return a.concat(f.arr(c)?z(c):c)},[])},r=function(a){if(f.arr(a))return a;f.str(a)&&(a=E(a)||a);return a instanceof NodeList||a instanceof HTMLCollection?[].slice.call(a):[a]},F=function(a,b){return a.some(function(a){return a===b})},Q=function(a,b){var c={};a.forEach(function(a){var d=JSON.stringify(b.map(function(b){return a[b]}));c[d]=c[d]||[];c[d].push(a)});
                    return Object.keys(c).map(function(a){return c[a]})},G=function(a){return a.filter(function(a,c,d){return d.indexOf(a)===c})},A=function(a){var b={},c;for(c in a)b[c]=a[c];return b},u=function(a,b){for(var c in b)a[c]=f.und(a[c])?b[c]:a[c];return a},R=function(a){a=a.replace(/^#?([a-f\d])([a-f\d])([a-f\d])$/i,function(a,b,c,l){return b+b+c+c+l+l});var b=/^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(a);a=parseInt(b[1],16);var c=parseInt(b[2],16),b=parseInt(b[3],16);return"rgb("+a+","+c+","+b+")"},
                S=function(a){a=/hsl\((\d+),\s*([\d.]+)%,\s*([\d.]+)%\)/g.exec(a);var b=parseInt(a[1])/360,c=parseInt(a[2])/100,d=parseInt(a[3])/100;a=function(a,b,c){0>c&&(c+=1);1<c&&--c;return c<1/6?a+6*(b-a)*c:.5>c?b:c<2/3?a+(b-a)*(2/3-c)*6:a};if(0==c)c=d=b=d;else var e=.5>d?d*(1+c):d+c-d*c,h=2*d-e,c=a(h,e,b+1/3),d=a(h,e,b),b=a(h,e,b-1/3);return"rgb("+255*c+","+255*d+","+255*b+")"},p=function(a){return/([\+\-]?[0-9|auto\.]+)(%|px|pt|em|rem|in|cm|mm|ex|pc|vw|vh|deg)?/.exec(a)[2]},H=function(a,b,c){return p(b)?
                        b:-1<a.indexOf("translate")?p(c)?b+p(c):b+"px":-1<a.indexOf("rotate")||-1<a.indexOf("skew")?b+"deg":b},v=function(a,b){if(b in a.style)return getComputedStyle(a).getPropertyValue(D(b))||"0"},T=function(a,b){var c=-1<b.indexOf("scale")?1:0,d=a.style.transform;if(!d)return c;for(var e=/(\w+)\((.+?)\)/g,h=[],l=[],f=[];h=e.exec(d);)l.push(h[1]),f.push(h[2]);d=f.filter(function(a,c){return l[c]===b});return d.length?d[0]:c},I=function(a,b){if(f.dom(a)&&F(q,b))return"transform";if(f.dom(a)&&(a.getAttribute(b)||
                        f.svg(a)&&a[b]))return"attribute";if(f.dom(a)&&"transform"!==b&&v(a,b))return"css";if(!f.nul(a[b])&&!f.und(a[b]))return"object"},J=function(a,b){switch(I(a,b)){case "transform":return T(a,b);case "css":return v(a,b);case "attribute":return a.getAttribute(b)}return a[b]||0},K=function(a,b,c){if(f.col(b))return b=f.rgb(b)?b:f.hex(b)?R(b):f.hsl(b)?S(b):void 0,b;if(p(b))return b;a=p(a.to)?p(a.to):p(a.from);!a&&c&&(a=p(c));return a?b+a:b},L=function(a){var b=/-?\d*\.?\d+/g;return{original:a,numbers:y(a).match(b)?
                        y(a).match(b).map(Number):[0],strings:y(a).split(b)}},U=function(a,b,c){return b.reduce(function(b,e,h){e=e?e:c[h-1];return b+a[h-1]+e})},V=function(a){a=a?z(f.arr(a)?a.map(r):r(a)):[];return a.map(function(a,c){return{target:a,id:c}})},M=function(a,b,c,d){"transform"===c?(c=a+"("+H(a,b.from,b.to)+")",b=a+"("+H(a,b.to)+")"):(a="css"===c?v(d,a):void 0,c=K(b,b.from,a),b=K(b,b.to,a));return{from:L(c),to:L(b)}},W=function(a,b){var c=[];a.forEach(function(d,e){var h=d.target;return b.forEach(function(b){var l=
                        I(h,b.name);if(l){var m;m=b.name;var g=b.value,g=r(f.fnc(g)?g(h,e):g);m={from:1<g.length?g[0]:J(h,m),to:1<g.length?g[1]:g[0]};g=A(b);g.animatables=d;g.type=l;g.from=M(b.name,m,g.type,h).from;g.to=M(b.name,m,g.type,h).to;g.round=f.col(m.from)||g.round?1:0;g.delay=(f.fnc(g.delay)?g.delay(h,e,a.length):g.delay)/k.speed;g.duration=(f.fnc(g.duration)?g.duration(h,e,a.length):g.duration)/k.speed;c.push(g)}})});return c},X=function(a,b){var c=W(a,b);return Q(c,["name","from","to","delay","duration"]).map(function(a){var b=
                        A(a[0]);b.animatables=a.map(function(a){return a.animatables});b.totalDuration=b.delay+b.duration;return b})},B=function(a,b){a.tweens.forEach(function(c){var d=c.from,e=a.duration-(c.delay+c.duration);c.from=c.to;c.to=d;b&&(c.delay=e)});a.reversed=a.reversed?!1:!0},Y=function(a){return Math.max.apply(Math,a.map(function(a){return a.totalDuration}))},Z=function(a){return Math.min.apply(Math,a.map(function(a){return a.delay}))},N=function(a){var b=[],c=[];a.tweens.forEach(function(a){if("css"===a.type||
                        "transform"===a.type)b.push("css"===a.type?D(a.name):"transform"),a.animatables.forEach(function(a){c.push(a.target)})});return{properties:G(b).join(", "),elements:G(c)}},aa=function(a){var b=N(a);b.elements.forEach(function(a){a.style.willChange=b.properties})},ba=function(a){N(a).elements.forEach(function(a){a.style.removeProperty("will-change")})},ca=function(a,b){var c=a.path,d=a.value*b,e=function(e){e=e||0;return c.getPointAtLength(1<b?a.value+e:d+e)},h=e(),f=e(-1),e=e(1);switch(a.name){case "translateX":return h.x;
                    case "translateY":return h.y;case "rotate":return 180*Math.atan2(e.y-f.y,e.x-f.x)/Math.PI}},da=function(a,b){var c=Math.min(Math.max(b-a.delay,0),a.duration)/a.duration,d=a.to.numbers.map(function(b,d){var e=a.from.numbers[d],f=C[a.easing](c,a.elasticity),e=a.path?ca(a,f):e+f*(b-e);return e=a.round?Math.round(e*a.round)/a.round:e});return U(d,a.to.strings,a.from.strings)},O=function(a,b){var c;a.currentTime=b;a.progress=b/a.duration*100;for(var d=0;d<a.tweens.length;d++){var e=a.tweens[d];e.currentValue=
                        da(e,b);for(var f=e.currentValue,l=0;l<e.animatables.length;l++){var k=e.animatables[l],m=k.id,k=k.target,g=e.name;switch(e.type){case "css":k.style[g]=f;break;case "attribute":k.setAttribute(g,f);break;case "object":k[g]=f;break;case "transform":c||(c={}),c[m]||(c[m]=[]),c[m].push(f)}}}if(c)for(d in x||(x=(v(document.body,"transform")?"":"-webkit-")+"transform"),c)a.animatables[d].target.style[x]=c[d].join(" ")},P=function(a){var b={};b.animatables=V(a.targets);b.settings=u(a,t);var c=b.settings,
                        d=[],e;for(e in a)if(!t.hasOwnProperty(e)&&"targets"!==e){var h=f.obj(a[e])?A(a[e]):{value:a[e]};h.name=e;d.push(u(h,c))}b.properties=d;b.tweens=X(b.animatables,b.properties);b.duration=b.tweens.length?Y(b.tweens):a.duration;b.delay=b.tweens.length?Z(b.tweens):a.delay;b.currentTime=0;b.progress=0;b.ended=!1;return b},n=[],w=0,ea=function(){var a=function(){w=requestAnimationFrame(b)},b=function(b){if(n.length){for(var c=0;c<n.length;c++)n[c].tick(b);a()}else cancelAnimationFrame(w),w=0};return a}(),
                k=function(a){var b=P(a),c={};b.tick=function(a){b.ended=!1;c.start||(c.start=a);c.current=Math.min(Math.max(c.last+a-c.start,0),b.duration);O(b,c.current);var d=b.settings;c.current>=b.delay&&(d.begin&&d.begin(b),d.begin=void 0,d.update&&d.update(b));c.current>=b.duration&&(d.loop?(c.start=a,"alternate"===d.direction&&B(b,!0),f.num(d.loop)&&d.loop--):(b.ended=!0,b.pause(),d.complete&&d.complete(b)),c.last=0)};b.seek=function(a){O(b,a/100*b.duration)};b.pause=function(){ba(b);var a=n.indexOf(b);-1<
                a&&n.splice(a,1)};b.play=function(a){b.pause();a&&(b=u(P(u(a,b.settings)),b));c.start=0;c.last=b.ended?0:b.currentTime;a=b.settings;"reverse"===a.direction&&B(b);"alternate"!==a.direction||a.loop||(a.loop=1);aa(b);n.push(b);w||ea()};b.restart=function(){b.reversed&&B(b);b.pause();b.seek(0);b.play()};b.settings.autoplay&&b.play();return b};k.version="1.1.3";k.speed=1;k.list=n;k.remove=function(a){a=z(f.arr(a)?a.map(r):r(a));for(var b=n.length-1;0<=b;b--)for(var c=n[b],d=c.tweens,e=d.length-1;0<=e;e--)for(var h=
                d[e].animatables,k=h.length-1;0<=k;k--)F(a,h[k].target)&&(h.splice(k,1),h.length||d.splice(e,1),d.length||c.pause())};k.easings=C;k.getValue=J;k.path=function(a){a=f.str(a)?E(a)[0]:a;return{path:a,value:a.getTotalLength()}};k.random=function(a,b){return Math.floor(Math.random()*(b-a+1))+a};return k});

    </script>
</head>
<body>
<nav role="navigation">
    <ul>
    <#if !currentUser??>
        <li><a href="/login">Log in</a></li>
    </#if>
    <#if currentUser??>
        <li>
            <form action="/logout" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <button type="submit">Log out</button>
            </form>
        </li>
        <li><a href="/user/${currentUser.id}">View myself</a></li>
    </#if>
    <#if currentUser?? && currentUser.role == "ADMIN">
        <li><a href="/user/create">Create a new user</a></li>
        <li><a href="/users">View all users</a></li>
    </#if>
    </ul>
</nav>

<canvas id="c"></canvas>




</body>
<script>

    /**
     * Created by philalina on 2017/1/1.
     */

    var c = document.getElementById("c");
    var ctx = c.getContext("2d");
    var cH;
    var cW;
    var bgColor = "#FF6138";
    var animations = [];
    var circles = [];

    var colorPicker = (function() {
        var colors = ["#FF6138", "#FFBE53", "#2980B9", "#282741"];
        var index = 0;
        function next() {
            index = index++ < colors.length-1 ? index : 0;
            return colors[index];
        }
        function current() {
            return colors[index]
        }
        return {
            next: next,
            current: current
        }
    })();

    function removeAnimation(animation) {
        var index = animations.indexOf(animation);
        if (index > -1) animations.splice(index, 1);
    }

    function calcPageFillRadius(x, y) {
        var l = Math.max(x - 0, cW - x);
        var h = Math.max(y - 0, cH - y);
        return Math.sqrt(Math.pow(l, 2) + Math.pow(h, 2));
    }

    function addClickListeners() {
        document.addEventListener("touchstart", handleEvent);
        document.addEventListener("mousedown", handleEvent);
    };

    function handleEvent(e) {
        if (e.touches) {
            e.preventDefault();
            e = e.touches[0];
        }
        var currentColor = colorPicker.current();
        var nextColor = colorPicker.next();
        var targetR = calcPageFillRadius(e.pageX, e.pageY);
        var rippleSize = Math.min(200, (cW * .4));
        var minCoverDuration = 750;

        var pageFill = new Circle({
            x: e.pageX,
            y: e.pageY,
            r: 0,
            fill: nextColor
        });
        var fillAnimation = anime({
            targets: pageFill,
            r: targetR,
            duration:  Math.max(targetR / 2 , minCoverDuration ),
            easing: "easeOutQuart",
            complete: function(){
                bgColor = pageFill.fill;
                removeAnimation(fillAnimation);
            }
        });

        var ripple = new Circle({
            x: e.pageX,
            y: e.pageY,
            r: 0,
            fill: currentColor,
            stroke: {
                width: 3,
                color: currentColor
            },
            opacity: 1
        });
        var rippleAnimation = anime({
            targets: ripple,
            r: rippleSize,
            opacity: 0,
            easing: "easeOutExpo",
            duration: 900,
            complete: removeAnimation
        });

        var particles = [];
        for (var i=0; i<32; i++) {
            var particle = new Circle({
                x: e.pageX,
                y: e.pageY,
                fill: currentColor,
                r: anime.random(24, 48)
            })
            particles.push(particle);
        }
        var particlesAnimation = anime({
            targets: particles,
            x: function(particle){
                return particle.x + anime.random(rippleSize, -rippleSize);
            },
            y: function(particle){
                return particle.y + anime.random(rippleSize * 1.15, -rippleSize * 1.15);
            },
            r: 0,
            easing: "easeOutExpo",
            duration: anime.random(1000,1300),
            complete: removeAnimation
        });
        animations.push(fillAnimation, rippleAnimation, particlesAnimation);
    }

    function extend(a, b){
        for(var key in b) {
            if(b.hasOwnProperty(key)) {
                a[key] = b[key];
            }
        }
        return a;
    }

    var Circle = function(opts) {
        extend(this, opts);
    }

    Circle.prototype.draw = function() {
        ctx.globalAlpha = this.opacity || 1;
        ctx.beginPath();
        ctx.arc(this.x, this.y, this.r, 0, 2 * Math.PI, false);
        if (this.stroke) {
            ctx.strokeStyle = this.stroke.color;
            ctx.lineWidth = this.stroke.width;
            ctx.stroke();
        }
        if (this.fill) {
            ctx.fillStyle = this.fill;
            ctx.fill();
        }
        ctx.closePath();
        ctx.globalAlpha = 1;
    }

    var animate = anime({
        duration: Infinity,
        update: function() {
            ctx.fillStyle = bgColor;
            ctx.fillRect(0, 0, cW, cH);
            animations.forEach(function(anim) {
                anim.animatables.forEach(function(animatable) {
                    animatable.target.draw();
                });
            });
        }
    });

    var resizeCanvas = function() {
        cW = window.innerWidth;
        cH = window.innerHeight;
        c.width = cW * devicePixelRatio;
        c.height = cH * devicePixelRatio;
        ctx.scale(devicePixelRatio, devicePixelRatio);
    };

    (function init() {
        resizeCanvas();
        if (window.CP) {
            // CodePen's loop detection was causin' problems
            // and I have no idea why, so...
            window.CP.PenTimer.MAX_TIME_IN_LOOP_WO_EXIT = 6000;
        }
        window.addEventListener("resize", resizeCanvas);
        addClickListeners();
        if (!!window.location.pathname.match(/fullcpgrid/)) {
            startFauxClicking();
        }
        handleInactiveUser();
    })();

    function handleInactiveUser() {
        var inactive = setTimeout(function(){
            fauxClick(cW/2, cH/2);
        }, 2000);

        function clearInactiveTimeout() {
            clearTimeout(inactive);
            document.removeEventListener("mousedown", clearInactiveTimeout);
            document.removeEventListener("touchstart", clearInactiveTimeout);
        }

        document.addEventListener("mousedown", clearInactiveTimeout);
        document.addEventListener("touchstart", clearInactiveTimeout);
    }

    function startFauxClicking() {
        setTimeout(function(){
            fauxClick(anime.random( cW * .2, cW * .8), anime.random(cH * .2, cH * .8));
            startFauxClicking();
        }, anime.random(200, 900));
    }

    function fauxClick(x, y) {
        var fauxClick = new Event("mousedown");
        fauxClick.pageX = x;
        fauxClick.pageY = y;
        document.dispatchEvent(fauxClick);
    }
</script>
</html>