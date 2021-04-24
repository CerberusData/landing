const NAVBAR_DATA = [
  { id: 1, url: "#about", label: "nosotros" },
  { id: 2, url: "#solutions", label: "soluciones" },
  { id: 3, url: "#contact", label: "contáctenos" }
];

const BANNER_DATA = {
  DESCRIPTION:
    "Alcanza la máxima eficiencia de facturación en el sector médico",
  BUTTON_TEXT: "DEMO >",
  BUTTON_URL:
    "https://cerberus-dashboard-demo.web.app/#/"
};

const SOLUTIONS_DATA = {
  HEADING: "Soluciones",
  LABEL_ONE: "MANEJO DE DATOS",
  DESCRIPTION_ONE: 'Ofrecemos una solución modular creada a partir de una arquitectura de microservicios que permite al hospital explotar el valor de sus datos al nivel máximo',
  IMAGE_ONE: 'images/solutions-1.png',
  LABEL_TWO: "INTERFAZ DE USUARIO",
  DESCRIPTION_TWO: 'Aumentamos la capacidad del equipo auxiliar de facturación mediante la generación de interfaces amigables para la planificación, revisión y monitoreo por parte de control interno de contable',
  IMAGE_TWO: 'images/solutions-2.png',
  LABEL_THREE: "FACTURACIÓN",
  DESCRIPTION_THREE: 'Emitimos documentos electrónicos automáticamente, sin requerir procesos adicionales. Implementamos la Facturación Electrónica y mejoramos los procesos internos en tu organización.',
  IMAGE_THREE: 'images/solutions-3.png',
  LABEL_FOUR: "RENDIMIENTO",
  DESCRIPTION_FOUR: 'Es una solución flexible, se ajusta a los formatos de los servicios medicos personalizados. Genera ahorros en costos en inversiones técnicas: migraciones de datos, interfaces con otras plataformas, adquisición de módulos o soluciones de terceros.',
  IMAGE_FOUR: 'images/solutions-4.png',
};

const EVOLUTION_DATA = {
  HEADING: "¡La facturación a evolucionado!",
  DESCRIPTION: "Ahorra maximizando el valor de tu datos. Nuestra misión es potenciar tú CAPACIDAD en procesos internos y EFICIENCIA en facturación",
  QUESTION: "¿Eres un hospital?",
  BUTTON_TEXT: "DEMO >",
  BUTTON_URL: "https://cerberus-dashboard-demo.web.app/#/",
  IMAGE_URL: "images/evolution.png"
};
const ABOUT_DATA = {
  HEADING: "Nosotros",
  ITEMS: [
    {
      IMAGE_URL: 'images/about-1.png',
      LABEL: '5',
      DESCRIPTION: 'microservicios'
    },
    {
      IMAGE_URL: 'images/about-2.png',
      LABEL: '10',
      DESCRIPTION: 'hospitales'
    },
    {
      IMAGE_URL: 'images/about-3.png',
      LABEL: '+1MM COP',
      DESCRIPTION: 'ahorrados por errores de facturación'
    }
  ]
};

const USECASE_DATA = {
  HEADING: "Casos de Uso",
  CARDS: [
    {
      SAVE: '70M',
      DESCRIPTION: 'Se presentaban Inconsistencias entre pacientes ingresados y servicios facturados. Cerberus implemento del módulo de gestión de pacientes en urgencias y consulta externa. Adicional este módulo se conectó con el módulo de facturación para la gestión de cobro de las cuentas por paciente. Generando una disminución en el número de quejas y reclamos en un 30%  por inconsistencia de servicios y medicamentos facturados y salvando 70M aproximadamente',
      IMAGE_URL: 'images/usecase-1.png',
      IMAGE_LABEL: 'ESE Santiago de Tunja'
    },
    {
      SAVE: '50M',
      DESCRIPTION: `Los balances en inventario y horas trabajadas no eran acordes
      a los servicios facturados causando una insolvencia por cuentas por
      cobrar acumuladas. Con los microservicios de registro de pacientes,
      registro de servicios y el modelamiento de datos se generaron las bases
      de datos específicas para el control y seguimiento de pacientes.
      Reduciendo el 50% entre la diferencia de los servicios registrados y
      servicios facturados y salvando 50M comparado al anterior mes`,
      IMAGE_URL: 'images/usecase-2.png',
      IMAGE_LABEL: 'Assalud IPS Tunja'
    },
    {
      SAVE: '20%',
      DESCRIPTION: `No teníamos implementado el módulo de facturación
      electrónica reglamentaria en Colombia. Cerberus
      trabajo en la implementación de este modulo desarrollando
      con una arquitectura de micro servicios. Esto evitó la
      cobranza de una multa de 30M por no cumplir con
      reglamentación de facturación y reducción del 20% en
      a inconsistencia de conciliación contable`,
      IMAGE_URL: 'images/usecase-3.png',
      IMAGE_LABEL: 'Hospital regional Sogamoso'
    }
  ]
};

const FOOTER_DATA = {
  DESCRIPTION:
    "We are typically focused on result-based maketing in the digital world. Also, we evaluate your brand’s needs and develop a powerful strategy that maximizes profits.",
  CONTACT_DETAILS: {
    HEADING: "Contact us",
    ADDRESS: "La trobe street docklands, Melbourne",
    MOBILE: "+1 61234567890",
    EMAIL: "nixalar@gmail.com"
  },
  SUBSCRIBE_NEWSLETTER: "Subscribe newsletter",
  SUBSCRIBE: "Subscribe"
};

const DATA = {
  NAVBAR_DATA,
  BANNER_DATA,
  SOLUTIONS_DATA,
  EVOLUTION_DATA,
  ABOUT_DATA,
  USECASE_DATA,
  FOOTER_DATA
};
export default DATA;
