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

    {% set data = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
    {% set seoTitle = data.data.fields.seoTitle %}
    {% set seoDescription = data.data.fields.seoDescription %}

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
