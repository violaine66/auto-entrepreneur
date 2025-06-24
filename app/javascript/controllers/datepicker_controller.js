import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
     const FRENCH_LOCALE = {
      weekdays: {
        shorthand: ['Dim', 'Lun', 'Mar', 'Mer', 'Jeu', 'Ven', 'Sam'],
        longhand: ['Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi'],
      },
      months: {
        shorthand: ['Jan', 'Fév', 'Mar', 'Avr', 'Mai', 'Jui', 'Juil', 'Aoû', 'Sep', 'Oct', 'Nov', 'Déc'],
        longhand: ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'],
      }
     }
     flatpickr(this.element, {
      locale: FRENCH_LOCALE, dateFormat: "d/m/Y"
     })
  }
}
