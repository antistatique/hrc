<!-- fabricator menu -->
<div class="styleguide-menu">

  {% include 'controls.html.swig' %}

  <ul>

    <li>
      <a href="/hrc/styleguide/" class="styleguide-menu-heading">Styleguide</a>
    </li>

    <li>
      <span class="styleguide-menu-heading">Documentation</span>
      <ul>
        {% for doc in collections.docs %}
          <li>
            <a href="/hrc/styleguide/{{doc.title|lower}}">{{doc.title}}</a>
          </li>
        {% endfor %}
      </ul>
    </li>

    <li>
      <a href="/hrc/styleguide/atoms/" class="styleguide-menu-heading">Atoms</a>
      <ul>
        {% for atom in collections.atoms %}
          <li>
            <a href="/hrc/styleguide/atoms/#atom{{loop.index}}">{{atom.title}}</a>
          </li>
        {% endfor %}
      </ul>
    </li>

    <li>
      <a href="/hrc/styleguide/molecules/" class="styleguide-menu-heading">Molecules</a>
      <ul>
        {% for molecule in collections.molecules %}
          <li>
            <a href="/hrc/styleguide/molecules/#molecule{{loop.index}}">{{molecule.title}}</a>
          </li>
        {% endfor %}
      </ul>
    </li>

    <li>
      <a href="/hrc/styleguide/organisms/" class="styleguide-menu-heading">Organisms</a>
      <ul>
        {% for organism in collections.organisms %}
          <li>
            <a href="/hrc/styleguide/organisms/#organism{{loop.index}}">{{organism.title}}</a>
          </li>
        {% endfor %}
      </ul>
    </li>

    <li>
      <span class="styleguide-menu-heading">Pages</span>
      <ul>
        <li>
          <a target="_blank" href="/hrc/">Page d'accueil</a>
        </li>
        {% for page in collections.pages %}
          <li>
            <a target="_blank" href="/hrc/{{page.name}}">{{page.title}}</a>
          </li>
        {% endfor %}
      </ul>
    </li>

  </ul>


</div>
<!-- /fabricator menu -->
