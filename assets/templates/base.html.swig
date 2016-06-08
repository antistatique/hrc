<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie10 lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie10 lt-ie9"> <![endif]-->
<!--[if IE 9]>         <html class="no-js lt-ie10"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js"> <!--<![endif]-->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>
      Hôpital Riviera-Chablais (HRC) -
      {% if content.title %}
        {{content.title}}
      {% else %}
        {{title}}
      {% endif %}
    </title>

    {% set headData = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
    {% set seoTitle = headData.data.fields.seoTitle %}
    {% set seoDescription = headData.data.fields.seoDescription %}

    <meta name="description" content="{% spaceless %}
      {% if seoDescription %}
        {{seoDescription}}
      {% else %}
        L’établissement hospitalier intercantonal entre Vaud et Valais se déploie au cœur d’une région en plein essor, qui comptera 190000 habitants dans quelques années. Les sites sont : Vevey, Montreux, Mottex, Aigle et Monthey.
      {% endif %}
    {% endspaceless %}">
    <meta name="keywords" content="Hôpital, Services médicaux, Médicament, Riviera, Chablais, Mottex, Montreux, Monthey, Vevey, Aigle, Anesthésiologie, Gynécologie, Obstétrique, Orthopédie, Traumatologie, Cancerologie, Chirurgie, Imagerie médicale, Radiologie, Pédiatrie, Soins critiques, Gériatrie, Réadaptation, Médecine interne générale, Physiothérapie, Ergothérapie, Urgences, Consultations médicales, Patients, éthique">
    <meta name="viewport" content="width=device-width">
    <meta property="og:locale" content="fr_FR" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="https://images.contentful.com/fbqunpc2pjfz/1lJacxX2zqAs2GAkUYw6E8/2627d12dc35bdc522684f1be53e1de4c/hrc_coverhp.jpg" />
    <meta property="og:title" content="Hôpital Riviera-Chablais (HRC) - {% spaceless %}
      {% if seoTitle %}
        {{seoTitle}}
      {% elseif content.title %}
        {{content.title}}
      {% else %}
        {{title}}
      {% endif %}
    {% endspaceless %}" />
    <meta property="og:url" content="http://hopitalrivierachablais.ch/{{name}}" />
    <meta property="og:site_name" content="Hôpital Riviera-Chablais (HRC)" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="Hôpital Riviera-Chablais (HRC) - {% spaceless %}
      {% if seoTitle %}
        {{seoTitle}}
      {% elseif content.title %}
        {{content.title}}
      {% else %}
        {{title}}
      {% endif %}
    {% endspaceless %}" />

    <link rel="shortcut icon" href="/favicons/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" sizes="57x57" href="/favicons/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/favicons/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/favicons/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/favicons/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/favicons/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/favicons/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/favicons/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/favicons/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/favicons/apple-touch-icon-180x180.png">
    <link rel="icon" type="image/png" href="/favicons/favicon-16x16.png" sizes="16x16">
    <link rel="icon" type="image/png" href="/favicons/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="/favicons/favicon-96x96.png" sizes="96x96">
    <link rel="icon" type="image/png" href="/favicons/android-chrome-192x192.png" sizes="192x192">
    <meta name="msapplication-square70x70logo" content="/favicons/smalltile.png" />
    <meta name="msapplication-square150x150logo" content="/favicons/mediumtile.png" />
    <meta name="msapplication-wide310x150logo" content="/favicons/widetile.png" />
    <meta name="msapplication-square310x310logo" content="/favicons/largetile.png" />


    {% if styleguide %}
      <link rel="stylesheet" href="/build/css/styleguide.css">
    {% endif %}

    {# <link rel="stylesheet" href="/build/css/vendors.min.css"> #}
    <link rel="stylesheet" href="/build/css/main.css">

    {# Typekit script #}
    <script>
      (function(d) {
        var config = {
          kitId: 'bet1dao',
          scriptTimeout: 3000,
          async: true
        },
        h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+" wf-inactive";},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+=" wf-loading";tk.src='https://use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
      })(document);
    </script>

    {# Google Fonts script #}
    <script type="text/javascript">
      WebFontConfig = {
        google: { families: [ 'Lato:300,400,700,300italic,400italic,700italic:latin' ] }
      };
      (function() {
        var wf = document.createElement('script');
        wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
        wf.type = 'text/javascript';
        wf.async = 'true';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(wf, s);
      })();</script>

    <!--[if lt IE 9]>
      <script src="/build/js/polyfills.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <!-- Google Tag Manager -->
    <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-KV34KK"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-KV34KK');</script>
    <!-- End Google Tag Manager -->
    {% if styleguide %}
      {% include 'styleguide/icons.html.swig' %}
      {% include 'styleguide/menu.html.swig' %}
      <div class="styleguide-container">
        <div class="styleguide-header-container"{% if heading_color %} style="background: {{heading_color}};"{% endif %}>
          {% include 'styleguide/control.bar.html.swig' %}
          <h1>{{title}}</h1>
        </div>
    {% endif %}

    {% block content %}{% endblock %}

    {% if styleguide %}
      </div>
    {% endif %}

    <script src="/build/js/vendors.min.js"></script>
    <script src="/build/js/main.js"></script>

    {% if styleguide %}
      <script>
        (function($){
          $(document).ready(function(){
            $('.styleguide-item-code code').each(function(){
              $(this).html($(this).html().replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;'));
            });
          });
        }(jQuery));
      </script>
      <script src="/build/js/styleguide.min.js"></script>
    {% endif %}

    {% block javascripts %}{% endblock %}
  </body>
</html>
