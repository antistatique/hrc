---
title: Fournisseurs
name: fournisseurs
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: hospital
  id: 5ZKEZv4AZqUKCSA0EoIgmo
---
{% set hospitals = contentful.contentTypes[contentful.content_type] %}

{% include '../molecules/cover.html.swig' %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' %}

<div class="row theme-primary">
  <div class="col-sm-6 col-sm-offset-3">
    <h1 class="text-primary">Fournisseurs</h1>

    <div class="spacer spacer-sm"></div>

    <p>
      Le service des achats et approvisionnements de l’Hôpital Riviera-Chablais a pour objectif l’acquisition du matériel et mobilier médical, des équipements techniques, des articles d’hôtellerie, du mobilier et matériel administratif, des prestations.
    </p>
    <p>
      Il est organisé par domaine d’achats :
    </p>
    <ul>
      <li><strong>Matériel médical et mobilier médical</strong> : Sylvain Bertschy, Responsable des achats du matériel médical, 079/194 29 23, <a href="mailto:Sylvain.Bertschy@hopitalrivierachablais.ch">Sylvain.Bertschy@hopitalrivierachablais.ch</a></li>
      <li><strong>Matériel de bloc opératoire et anesthésie</strong> : Anne-Florence Cruz, Acheteuse-experte en matériel de bloc opératoire et anesthésie, 079/197 17 61, <a href="mailto:Anne-Florence.Cruz@hopitalrivierachablais.ch">Anne-Florence.Cruz@hopitalrivierachablais.ch</a></li>
      <li><strong>Harmonisation du matériel médical</strong> : Javier Marti, Chargé d’harmonisation, 079/859 41 82, <a href="mailto:Javier.Marti@hopitalrivierachablais.ch">Javier.Marti@hopitalrivierachablais.ch</a></li>
      <li><strong>Achats généraux (administratif, technique, logistique, hôtellerie)</strong> : Joffrey Jupille, Acheteur achats généraux, 079/408 59 14, <a href="mailto:Joffrey.Jupille@hopitalrivierachablais.ch ">Joffrey.Jupille@hopitalrivierachablais.ch</a></li>
      <li><strong>Prestations (hors médical et soins)</strong> : Claire Thai, Cheffe de service achats et approvisionnements, 079/619 71 54, <a href="mailto:Claire.thai@hopitalrivierachablais.ch ">Claire.thai@hopitalrivierachablais.ch</a></li>
    </ul>

    <p>
      Vous pouvez trouver nos conditions générales d’achat : <a href="#">ici</a>.
    </p>

    <div class="spacer spacer-sm"></div>
  </div>
</div>
