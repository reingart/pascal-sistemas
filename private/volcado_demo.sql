--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alumnos; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE alumnos (
    alumnoid integer NOT NULL,
    alumno character varying(200),
    codigo character varying(50),
    dni integer,
    sexo character varying(1),
    fechanacimiento date,
    lugarnacimiento character varying(250),
    estadocivil character varying(50),
    nacionalidad character varying(50),
    direccion character varying(200),
    localidad character varying(50),
    cp character varying(7),
    telefonos character varying(250),
    email1 character varying(100),
    email2 character varying(100),
    ingreso date,
    egreso date,
    motivo character varying(1),
    destino character varying(50),
    padre character varying(250),
    madre character varying(250),
    emergencias character varying(200),
    nivelestudio character varying(1),
    estudioscompletos boolean DEFAULT false NOT NULL,
    estudioscursadosen character varying(50),
    titulo character varying(200),
    faltasolicitudinscripcion boolean DEFAULT false NOT NULL,
    faltareglamentoreservavacante boolean DEFAULT false NOT NULL,
    faltafotos boolean DEFAULT false NOT NULL,
    faltaaptofisico boolean DEFAULT false NOT NULL,
    faltavencimientoapto boolean DEFAULT false NOT NULL,
    faltadni boolean DEFAULT false NOT NULL,
    faltapartidanacimiento boolean DEFAULT false NOT NULL,
    faltatitulosecundariolegalizado boolean DEFAULT false NOT NULL,
    faltaanaliticopase boolean DEFAULT false NOT NULL,
    faltaconstaciatitulotramite boolean DEFAULT false NOT NULL,
    faltavencimientoconstanciatitulotramite boolean DEFAULT false NOT NULL,
    faltaconstaciapasetramite boolean DEFAULT false NOT NULL,
    faltavencimientoconstanciapasetramite boolean DEFAULT false NOT NULL,
    faltaconstaciamateriasaprobadas boolean DEFAULT false NOT NULL,
    faltavencimientoconstanciamateriasaprobadas boolean DEFAULT false NOT NULL,
    faltaautorizacionretiroalumno boolean DEFAULT false NOT NULL,
    faltafichamedica boolean DEFAULT false NOT NULL,
    faltasolicitudsocio boolean DEFAULT false NOT NULL,
    faltavacunas boolean DEFAULT false NOT NULL,
    faltacertificadobucodental boolean DEFAULT false NOT NULL,
    faltainformenivelinicial boolean DEFAULT false NOT NULL,
    faltacertificadoseptimogrado boolean DEFAULT false NOT NULL,
    faltacertificadoaprobacionseptimogrado boolean DEFAULT false NOT NULL,
    faltaboletin boolean DEFAULT false NOT NULL,
    s character varying(50),
    t character varying(50),
    a character varying(50),
    r character varying(50),
    folmat character varying(50),
    lm integer DEFAULT 0,
    fm integer DEFAULT 0,
    baja date,
    planestudioid integer
);


ALTER TABLE public.alumnos OWNER TO reingart;

--
-- Name: alumnos_alumnoid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE alumnos_alumnoid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.alumnos_alumnoid_seq OWNER TO reingart;

--
-- Name: alumnos_alumnoid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE alumnos_alumnoid_seq OWNED BY alumnos.alumnoid;


--
-- Name: alumnos_alumnoid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('alumnos_alumnoid_seq', 503, false);


--
-- Name: asignaturas; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE asignaturas (
    asignaturaid integer NOT NULL,
    asignatura character varying(200),
    materiaid integer DEFAULT 0,
    cursoid integer DEFAULT 0,
    carreraid integer DEFAULT 0,
    planestudioid integer DEFAULT 0,
    orden integer DEFAULT 0,
    horas integer,
    teorica boolean DEFAULT false NOT NULL,
    "práctica" boolean DEFAULT false NOT NULL,
    sexo character varying(1),
    optativa boolean DEFAULT false NOT NULL,
    safs integer DEFAULT 0,
    faltas1r integer DEFAULT 0,
    faltaslibre integer DEFAULT 0,
    faltasrecursa integer DEFAULT 0,
    cicloid integer
);


ALTER TABLE public.asignaturas OWNER TO reingart;

--
-- Name: asignaturas_asignaturaid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE asignaturas_asignaturaid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.asignaturas_asignaturaid_seq OWNER TO reingart;

--
-- Name: asignaturas_asignaturaid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE asignaturas_asignaturaid_seq OWNED BY asignaturas.asignaturaid;


--
-- Name: asignaturas_asignaturaid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('asignaturas_asignaturaid_seq', 70, false);


--
-- Name: calendario; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE calendario (
    id integer NOT NULL,
    fecha date,
    feriado boolean DEFAULT false NOT NULL,
    mensaje character varying(50)
);


ALTER TABLE public.calendario OWNER TO reingart;

--
-- Name: calendario_id_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE calendario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.calendario_id_seq OWNER TO reingart;

--
-- Name: calendario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE calendario_id_seq OWNED BY calendario.id;


--
-- Name: calendario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('calendario_id_seq', 13, false);


--
-- Name: calificaciones; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE calificaciones (
    calificacionid smallint DEFAULT 0 NOT NULL,
    calificacion character varying(50),
    codigo character varying(1),
    id character varying(1),
    condicion character varying(50),
    ayuda text,
    equivalencia boolean DEFAULT false NOT NULL,
    previa boolean DEFAULT false NOT NULL
);


ALTER TABLE public.calificaciones OWNER TO reingart;

--
-- Name: cargos; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE cargos (
    cargoid integer NOT NULL,
    cargo character varying(50)
);


ALTER TABLE public.cargos OWNER TO reingart;

--
-- Name: cargos_cargoid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE cargos_cargoid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cargos_cargoid_seq OWNER TO reingart;

--
-- Name: cargos_cargoid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE cargos_cargoid_seq OWNED BY cargos.cargoid;


--
-- Name: cargos_cargoid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('cargos_cargoid_seq', 9, false);


--
-- Name: carreras; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE carreras (
    carreraid integer DEFAULT 0 NOT NULL,
    carrera character varying(250)
);


ALTER TABLE public.carreras OWNER TO reingart;

--
-- Name: catedras; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE catedras (
    catedraid integer NOT NULL,
    catedra character varying(150),
    informe character varying(50),
    boletin character varying(50),
    "analítico" character varying(50),
    espacio character varying(1),
    abr character varying(50),
    calificacion character varying(50),
    horas integer DEFAULT 0,
    minutos integer DEFAULT 0,
    nivelid integer DEFAULT 0,
    codigo character varying(5)
);


ALTER TABLE public.catedras OWNER TO reingart;

--
-- Name: catedras_catedraid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE catedras_catedraid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.catedras_catedraid_seq OWNER TO reingart;

--
-- Name: catedras_catedraid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE catedras_catedraid_seq OWNED BY catedras.catedraid;


--
-- Name: catedras_catedraid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('catedras_catedraid_seq', 1, false);


--
-- Name: ciclos; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE ciclos (
    cicloid integer NOT NULL,
    ciclo character varying(50),
    "año" integer DEFAULT 0,
    detalle character varying(100),
    desde date,
    hasta date
);


ALTER TABLE public.ciclos OWNER TO reingart;

--
-- Name: ciclos_cicloid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE ciclos_cicloid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.ciclos_cicloid_seq OWNER TO reingart;

--
-- Name: ciclos_cicloid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE ciclos_cicloid_seq OWNED BY ciclos.cicloid;


--
-- Name: ciclos_cicloid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('ciclos_cicloid_seq', 11, false);


--
-- Name: comisiones; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE comisiones (
    comisionid integer NOT NULL,
    comision character varying(200),
    divisionid integer,
    periodoid integer,
    materiaid integer,
    personalid integer,
    sexo character varying(1),
    safs real,
    faltas1r real,
    faltas2r real,
    faltaslibre real,
    faltasrecursa real,
    id integer DEFAULT 0
);


ALTER TABLE public.comisiones OWNER TO reingart;

--
-- Name: comisiones_comisionid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE comisiones_comisionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.comisiones_comisionid_seq OWNER TO reingart;

--
-- Name: comisiones_comisionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE comisiones_comisionid_seq OWNED BY comisiones.comisionid;


--
-- Name: comisiones_comisionid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('comisiones_comisionid_seq', 387, false);


--
-- Name: correlativas; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE correlativas (
    correlativaid integer NOT NULL,
    materiaid1 integer,
    materiaid2 integer,
    planestudioid integer
);


ALTER TABLE public.correlativas OWNER TO reingart;

--
-- Name: correlativas_correlativaid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE correlativas_correlativaid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.correlativas_correlativaid_seq OWNER TO reingart;

--
-- Name: correlativas_correlativaid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE correlativas_correlativaid_seq OWNED BY correlativas.correlativaid;


--
-- Name: correlativas_correlativaid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('correlativas_correlativaid_seq', 18, false);


--
-- Name: cursos; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE cursos (
    cursoid integer NOT NULL,
    curso character varying(50),
    codigo character varying(3),
    nivel integer DEFAULT 0,
    "año" character varying(50),
    seccion character varying(2),
    division character varying(3),
    nivelid integer DEFAULT 0,
    personalid integer DEFAULT 0,
    ttp boolean DEFAULT false NOT NULL,
    subvencion character varying(50),
    arancelbase character varying(50),
    siguientegrupoid integer,
    orden integer DEFAULT 0
);


ALTER TABLE public.cursos OWNER TO reingart;

--
-- Name: cursos_cursoid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE cursos_cursoid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cursos_cursoid_seq OWNER TO reingart;

--
-- Name: cursos_cursoid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE cursos_cursoid_seq OWNED BY cursos.cursoid;


--
-- Name: cursos_cursoid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('cursos_cursoid_seq', 4, false);


--
-- Name: divisiones; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE divisiones (
    divisionid integer DEFAULT 0 NOT NULL,
    division character varying(50),
    codigo character varying(5),
    cursoid integer,
    cicloid integer,
    numero character varying(1),
    letra character varying(1),
    turno character varying(1),
    "año" integer,
    sexo character varying(1),
    id integer,
    boletinformularioid integer
);


ALTER TABLE public.divisiones OWNER TO reingart;

--
-- Name: examenes; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE examenes (
    examenid integer NOT NULL,
    materiaid integer,
    periodoid integer,
    llamado character varying(1),
    turno character varying(1),
    fecha date,
    hora date,
    personalid1 integer,
    personalid2 integer,
    personalid3 integer DEFAULT 0,
    personalid4 integer
);


ALTER TABLE public.examenes OWNER TO reingart;

--
-- Name: examenes_examenid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE examenes_examenid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.examenes_examenid_seq OWNER TO reingart;

--
-- Name: examenes_examenid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE examenes_examenid_seq OWNED BY examenes.examenid;


--
-- Name: examenes_examenid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('examenes_examenid_seq', 4, false);


--
-- Name: faltas; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE faltas (
    faltaid integer NOT NULL,
    alumnoid integer DEFAULT 0,
    comisionid integer,
    inasistenciaid integer DEFAULT 0,
    fecha date,
    cantidad real DEFAULT 0,
    justificado boolean DEFAULT false NOT NULL,
    detalle character varying(50),
    id integer DEFAULT 0,
    __xmin integer DEFAULT 0,
    web boolean DEFAULT false NOT NULL
);


ALTER TABLE public.faltas OWNER TO reingart;

--
-- Name: faltas_faltaid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE faltas_faltaid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.faltas_faltaid_seq OWNER TO reingart;

--
-- Name: faltas_faltaid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE faltas_faltaid_seq OWNED BY faltas.faltaid;


--
-- Name: faltas_faltaid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('faltas_faltaid_seq', 1, false);


--
-- Name: horarios; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE horarios (
    horarioid integer NOT NULL,
    horaid integer,
    dia character(1),
    materiaid integer,
    detalle character varying(25)
);


ALTER TABLE public.horarios OWNER TO reingart;

--
-- Name: horarios_horarioid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE horarios_horarioid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.horarios_horarioid_seq OWNER TO reingart;

--
-- Name: horarios_horarioid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE horarios_horarioid_seq OWNED BY horarios.horarioid;


--
-- Name: horarios_horarioid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('horarios_horarioid_seq', 1, false);


--
-- Name: horas; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE horas (
    horaid integer,
    hora character varying(25),
    desde date,
    hasta date,
    nivelid integer
);


ALTER TABLE public.horas OWNER TO reingart;

--
-- Name: inasistencias; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE inasistencias (
    inasistenciaid integer NOT NULL,
    inasistencia character varying(50),
    saf boolean DEFAULT false NOT NULL,
    tarde boolean DEFAULT false NOT NULL
);


ALTER TABLE public.inasistencias OWNER TO reingart;

--
-- Name: inasistencias_inasistenciaid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE inasistencias_inasistenciaid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.inasistencias_inasistenciaid_seq OWNER TO reingart;

--
-- Name: inasistencias_inasistenciaid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE inasistencias_inasistenciaid_seq OWNED BY inasistencias.inasistenciaid;


--
-- Name: inasistencias_inasistenciaid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('inasistencias_inasistenciaid_seq', 7, false);


--
-- Name: inscripcionescomision; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE inscripcionescomision (
    inscripcionid integer NOT NULL,
    alumnoid integer,
    comisionid integer,
    alta date DEFAULT ('now'::text)::date,
    baja date,
    condicion character varying(1)
);


ALTER TABLE public.inscripcionescomision OWNER TO reingart;

--
-- Name: inscripcionescomision_inscripcionid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE inscripcionescomision_inscripcionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.inscripcionescomision_inscripcionid_seq OWNER TO reingart;

--
-- Name: inscripcionescomision_inscripcionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE inscripcionescomision_inscripcionid_seq OWNED BY inscripcionescomision.inscripcionid;


--
-- Name: inscripcionescomision_inscripcionid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('inscripcionescomision_inscripcionid_seq', 4, false);


--
-- Name: inscripcionesdivision; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE inscripcionesdivision (
    inscripcionid integer NOT NULL,
    alumnoid integer,
    divisionid integer,
    alta date DEFAULT ('now'::text)::date,
    baja date,
    condicion character varying(1)
);


ALTER TABLE public.inscripcionesdivision OWNER TO reingart;

--
-- Name: inscripcionesdivision_inscripcionid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE inscripcionesdivision_inscripcionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.inscripcionesdivision_inscripcionid_seq OWNER TO reingart;

--
-- Name: inscripcionesdivision_inscripcionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE inscripcionesdivision_inscripcionid_seq OWNED BY inscripcionesdivision.inscripcionid;


--
-- Name: inscripcionesdivision_inscripcionid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('inscripcionesdivision_inscripcionid_seq', 264, false);


--
-- Name: inscripcionesexamen; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE inscripcionesexamen (
    inscripcionid integer NOT NULL,
    alumnoid integer,
    examenid integer,
    condicion character varying(1),
    alta date,
    baja date,
    confirmar boolean DEFAULT false NOT NULL,
    valido boolean DEFAULT false NOT NULL
);


ALTER TABLE public.inscripcionesexamen OWNER TO reingart;

--
-- Name: inscripcionesexamen_inscripcionid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE inscripcionesexamen_inscripcionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.inscripcionesexamen_inscripcionid_seq OWNER TO reingart;

--
-- Name: inscripcionesexamen_inscripcionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE inscripcionesexamen_inscripcionid_seq OWNED BY inscripcionesexamen.inscripcionid;


--
-- Name: inscripcionesexamen_inscripcionid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('inscripcionesexamen_inscripcionid_seq', 5, false);


--
-- Name: materias; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE materias (
    materiaid integer NOT NULL,
    materia character varying(100),
    resumen character varying(50),
    cursoid integer DEFAULT 0,
    catedraid integer DEFAULT 0,
    codigo character varying(5),
    orden integer DEFAULT 0,
    optativa boolean DEFAULT false NOT NULL,
    sexo character varying(1),
    analitico character varying(250),
    requerida boolean DEFAULT false NOT NULL
);


ALTER TABLE public.materias OWNER TO reingart;

--
-- Name: materias_materiaid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE materias_materiaid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.materias_materiaid_seq OWNER TO reingart;

--
-- Name: materias_materiaid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE materias_materiaid_seq OWNED BY materias.materiaid;


--
-- Name: materias_materiaid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('materias_materiaid_seq', 46, false);


--
-- Name: niveles; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE niveles (
    nivelid integer NOT NULL,
    nivel character varying(50),
    ciclo integer DEFAULT 0,
    tipo integer DEFAULT 0,
    personalid integer DEFAULT 0
);


ALTER TABLE public.niveles OWNER TO reingart;

--
-- Name: niveles_nivelid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE niveles_nivelid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.niveles_nivelid_seq OWNER TO reingart;

--
-- Name: niveles_nivelid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE niveles_nivelid_seq OWNED BY niveles.nivelid;


--
-- Name: niveles_nivelid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('niveles_nivelid_seq', 2, false);


--
-- Name: notas; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE notas (
    notaid integer NOT NULL,
    alumnoid integer DEFAULT 0,
    materiaid integer DEFAULT 0,
    periodoid integer DEFAULT 0,
    calificacionid smallint DEFAULT 0,
    nota real DEFAULT 0,
    descripcion character varying(50),
    establecimiento character varying(50),
    observaciones text,
    fecha date DEFAULT ('now'::text)::date,
    libro character varying(5),
    folio integer,
    alta date DEFAULT now(),
    id integer DEFAULT 0,
    __xmin integer DEFAULT 0,
    web boolean DEFAULT false NOT NULL,
    turno character varying(1)
);


ALTER TABLE public.notas OWNER TO reingart;

--
-- Name: notas_notaid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE notas_notaid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.notas_notaid_seq OWNER TO reingart;

--
-- Name: notas_notaid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE notas_notaid_seq OWNED BY notas.notaid;


--
-- Name: notas_notaid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('notas_notaid_seq', 56545, false);


--
-- Name: periodos; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE periodos (
    periodoid integer NOT NULL,
    periodo character varying(50),
    nivelid integer DEFAULT 0,
    cicloid integer,
    mes integer DEFAULT 0,
    anio integer DEFAULT 0,
    trimestre integer DEFAULT 0,
    condicion character varying(50),
    cuatrimestre integer DEFAULT 0,
    semestre integer DEFAULT 0,
    orden integer DEFAULT 0,
    codigo character varying(1),
    inicio date,
    cierre date,
    tipo integer DEFAULT 0,
    dias integer DEFAULT 0,
    id integer DEFAULT 0,
    secuencia integer,
    notaminima real
);


ALTER TABLE public.periodos OWNER TO reingart;

--
-- Name: periodos_periodoid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE periodos_periodoid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.periodos_periodoid_seq OWNER TO reingart;

--
-- Name: periodos_periodoid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE periodos_periodoid_seq OWNED BY periodos.periodoid;


--
-- Name: periodos_periodoid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('periodos_periodoid_seq', 31, false);


--
-- Name: personal; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE personal (
    personalid integer DEFAULT 0 NOT NULL,
    nombre character varying(50),
    nro character varying(50),
    tipodoc character varying(50),
    nrodoc integer DEFAULT 0,
    pin integer DEFAULT 0,
    nacimiento date,
    domicilio character varying(50),
    localidad character varying(50),
    cp character varying(50),
    provincia character varying(50),
    telefono character varying(50),
    titulos character varying(255),
    otorgadospor character varying(255),
    fechaotorgamiento character varying(50),
    apto character varying(50),
    nombramiento date,
    cuil character varying(50),
    cargoid integer DEFAULT 0,
    seccionid integer DEFAULT 0
);


ALTER TABLE public.personal OWNER TO reingart;

--
-- Name: planesestudio; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE planesestudio (
    planestudioid integer DEFAULT 0 NOT NULL,
    planestudio character varying(50),
    aprobadopor character varying(250),
    carreraid integer DEFAULT 0,
    desde date,
    hasta date
);


ALTER TABLE public.planesestudio OWNER TO reingart;

--
-- Name: profesores; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE profesores (
    profesorid integer NOT NULL,
    personalid integer,
    comisionid integer DEFAULT 0,
    cargoid integer DEFAULT 2,
    revistaid integer,
    licencia boolean DEFAULT false NOT NULL,
    detalle character varying(50),
    ref character varying(1),
    id integer,
    __xmin integer
);


ALTER TABLE public.profesores OWNER TO reingart;

--
-- Name: profesores_profesorid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE profesores_profesorid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.profesores_profesorid_seq OWNER TO reingart;

--
-- Name: profesores_profesorid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE profesores_profesorid_seq OWNED BY profesores.profesorid;


--
-- Name: profesores_profesorid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('profesores_profesorid_seq', 1, false);


--
-- Name: revistas; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE revistas (
    revistaid integer NOT NULL,
    revista character varying(50)
);


ALTER TABLE public.revistas OWNER TO reingart;

--
-- Name: revistas_revistaid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE revistas_revistaid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.revistas_revistaid_seq OWNER TO reingart;

--
-- Name: revistas_revistaid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE revistas_revistaid_seq OWNED BY revistas.revistaid;


--
-- Name: revistas_revistaid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('revistas_revistaid_seq', 3, false);


--
-- Name: sanciones; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE sanciones (
    sancionid integer NOT NULL,
    alumnoid integer DEFAULT 0,
    fecha date,
    cantidad real DEFAULT 0,
    tipo character varying(1),
    detalle text,
    parte integer DEFAULT 0
);


ALTER TABLE public.sanciones OWNER TO reingart;

--
-- Name: sanciones_sancionid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE sanciones_sancionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.sanciones_sancionid_seq OWNER TO reingart;

--
-- Name: sanciones_sancionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE sanciones_sancionid_seq OWNED BY sanciones.sancionid;


--
-- Name: sanciones_sancionid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('sanciones_sancionid_seq', 1, false);


--
-- Name: secciones; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE secciones (
    seccionid integer NOT NULL,
    seccion character varying(50)
);


ALTER TABLE public.secciones OWNER TO reingart;

--
-- Name: secciones_seccionid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE secciones_seccionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.secciones_seccionid_seq OWNER TO reingart;

--
-- Name: secciones_seccionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE secciones_seccionid_seq OWNED BY secciones.seccionid;


--
-- Name: secciones_seccionid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('secciones_seccionid_seq', 5, false);


--
-- Name: situaciones; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE situaciones (
    situacionid smallint NOT NULL,
    situacion character varying(30)
);


ALTER TABLE public.situaciones OWNER TO reingart;

--
-- Name: titulos; Type: TABLE; Schema: public; Owner: reingart; Tablespace: 
--

CREATE TABLE titulos (
    tituloid integer NOT NULL,
    titulo character varying(250),
    planestudioid integer,
    carreraid integer,
    cursoid integer
);


ALTER TABLE public.titulos OWNER TO reingart;

--
-- Name: titulos_tituloid_seq; Type: SEQUENCE; Schema: public; Owner: reingart
--

CREATE SEQUENCE titulos_tituloid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.titulos_tituloid_seq OWNER TO reingart;

--
-- Name: titulos_tituloid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reingart
--

ALTER SEQUENCE titulos_tituloid_seq OWNED BY titulos.tituloid;


--
-- Name: titulos_tituloid_seq; Type: SEQUENCE SET; Schema: public; Owner: reingart
--

SELECT pg_catalog.setval('titulos_tituloid_seq', 2, false);


--
-- Name: alumnoid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY alumnos ALTER COLUMN alumnoid SET DEFAULT nextval('alumnos_alumnoid_seq'::regclass);


--
-- Name: asignaturaid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY asignaturas ALTER COLUMN asignaturaid SET DEFAULT nextval('asignaturas_asignaturaid_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY calendario ALTER COLUMN id SET DEFAULT nextval('calendario_id_seq'::regclass);


--
-- Name: cargoid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY cargos ALTER COLUMN cargoid SET DEFAULT nextval('cargos_cargoid_seq'::regclass);


--
-- Name: catedraid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY catedras ALTER COLUMN catedraid SET DEFAULT nextval('catedras_catedraid_seq'::regclass);


--
-- Name: cicloid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY ciclos ALTER COLUMN cicloid SET DEFAULT nextval('ciclos_cicloid_seq'::regclass);


--
-- Name: comisionid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY comisiones ALTER COLUMN comisionid SET DEFAULT nextval('comisiones_comisionid_seq'::regclass);


--
-- Name: correlativaid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY correlativas ALTER COLUMN correlativaid SET DEFAULT nextval('correlativas_correlativaid_seq'::regclass);


--
-- Name: cursoid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY cursos ALTER COLUMN cursoid SET DEFAULT nextval('cursos_cursoid_seq'::regclass);


--
-- Name: examenid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY examenes ALTER COLUMN examenid SET DEFAULT nextval('examenes_examenid_seq'::regclass);


--
-- Name: faltaid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY faltas ALTER COLUMN faltaid SET DEFAULT nextval('faltas_faltaid_seq'::regclass);


--
-- Name: horarioid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY horarios ALTER COLUMN horarioid SET DEFAULT nextval('horarios_horarioid_seq'::regclass);


--
-- Name: inasistenciaid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY inasistencias ALTER COLUMN inasistenciaid SET DEFAULT nextval('inasistencias_inasistenciaid_seq'::regclass);


--
-- Name: inscripcionid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY inscripcionescomision ALTER COLUMN inscripcionid SET DEFAULT nextval('inscripcionescomision_inscripcionid_seq'::regclass);


--
-- Name: inscripcionid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY inscripcionesdivision ALTER COLUMN inscripcionid SET DEFAULT nextval('inscripcionesdivision_inscripcionid_seq'::regclass);


--
-- Name: inscripcionid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY inscripcionesexamen ALTER COLUMN inscripcionid SET DEFAULT nextval('inscripcionesexamen_inscripcionid_seq'::regclass);


--
-- Name: materiaid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY materias ALTER COLUMN materiaid SET DEFAULT nextval('materias_materiaid_seq'::regclass);


--
-- Name: nivelid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY niveles ALTER COLUMN nivelid SET DEFAULT nextval('niveles_nivelid_seq'::regclass);


--
-- Name: notaid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY notas ALTER COLUMN notaid SET DEFAULT nextval('notas_notaid_seq'::regclass);


--
-- Name: periodoid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY periodos ALTER COLUMN periodoid SET DEFAULT nextval('periodos_periodoid_seq'::regclass);


--
-- Name: profesorid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY profesores ALTER COLUMN profesorid SET DEFAULT nextval('profesores_profesorid_seq'::regclass);


--
-- Name: revistaid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY revistas ALTER COLUMN revistaid SET DEFAULT nextval('revistas_revistaid_seq'::regclass);


--
-- Name: sancionid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY sanciones ALTER COLUMN sancionid SET DEFAULT nextval('sanciones_sancionid_seq'::regclass);


--
-- Name: seccionid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY secciones ALTER COLUMN seccionid SET DEFAULT nextval('secciones_seccionid_seq'::regclass);


--
-- Name: tituloid; Type: DEFAULT; Schema: public; Owner: reingart
--

ALTER TABLE ONLY titulos ALTER COLUMN tituloid SET DEFAULT nextval('titulos_tituloid_seq'::regclass);


--
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY alumnos (alumnoid, alumno, codigo, dni, sexo, fechanacimiento, lugarnacimiento, estadocivil, nacionalidad, direccion, localidad, cp, telefonos, email1, email2, ingreso, egreso, motivo, destino, padre, madre, emergencias, nivelestudio, estudioscompletos, estudioscursadosen, titulo, faltasolicitudinscripcion, faltareglamentoreservavacante, faltafotos, faltaaptofisico, faltavencimientoapto, faltadni, faltapartidanacimiento, faltatitulosecundariolegalizado, faltaanaliticopase, faltaconstaciatitulotramite, faltavencimientoconstanciatitulotramite, faltaconstaciapasetramite, faltavencimientoconstanciapasetramite, faltaconstaciamateriasaprobadas, faltavencimientoconstanciamateriasaprobadas, faltaautorizacionretiroalumno, faltafichamedica, faltasolicitudsocio, faltavacunas, faltacertificadobucodental, faltainformenivelinicial, faltacertificadoseptimogrado, faltacertificadoaprobacionseptimogrado, faltaboletin, s, t, a, r, folmat, lm, fm, baja, planestudioid) FROM stdin;
2	Alumno 2	\N	2	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	85	\N	1
3	Alumno 3	\N	3	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	86	\N	1
4	Alumno 4	\N	4	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	87	\N	1
5	Alumno 5	\N	5	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	88	\N	1
6	Alumno 6	\N	6	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
7	Alumno 7	\N	7	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
8	Alumno 8	\N	8	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
9	Alumno 9	\N	9	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	89	\N	1
10	Alumno 10	\N	10	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	90	\N	1
11	Alumno 11	\N	11	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	91	\N	1
12	Alumno 12	\N	12	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	92	\N	1
13	Alumno 13	\N	13	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	93	\N	1
14	Alumno 14	\N	14	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	95	\N	1
15	Alumno 15	\N	15	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	96	\N	1
16	Alumno 16	\N	16	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
17	Alumno 17	\N	17	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	97	\N	1
18	Alumno 18	\N	18	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	98	\N	1
19	Alumno 19	\N	19	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	103	\N	1
20	Alumno 20	\N	20	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	104	\N	1
21	Alumno 21	\N	21	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	105	\N	1
22	Alumno 22	\N	22	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	106	\N	1
23	Alumno 23	\N	23	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	107	\N	1
24	Alumno 24	\N	24	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	108	\N	1
25	Alumno 25	\N	25	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	102	\N	1
26	Alumno 26	\N	26	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
27	Alumno 27	\N	27	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
28	Alumno 28	\N	28	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	101	\N	1
29	Alumno 29	\N	29	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
30	Alumno 30	\N	30	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	100	\N	1
31	Alumno 31	\N	31	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
32	Alumno 32	\N	32	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	99	\N	1
33	Alumno 33	\N	33	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	\N	\N	\N	1
34	Alumno 34	\N	34	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	118	\N	1
35	Alumno 35	\N	35	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	119	\N	1
36	Alumno 36	\N	36	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	\N	\N	\N	1
37	Alumno 37	\N	37	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	121	\N	1
38	Alumno 38	\N	38	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	\N	\N	\N	1
39	Alumno 39	\N	39	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	\N	\N	\N	1
40	Alumno 40	\N	40	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
41	Alumno 41	\N	41	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	125	\N	1
42	Alumno 42	\N	42	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	\N	\N	\N	1
43	Alumno 43	\N	43	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	\N	\N	\N	1
44	Alumno 44	\N	44	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	128	\N	1
45	Alumno 45	\N	45	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	129	\N	1
46	Alumno 46	\N	46	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	130	\N	1
47	Alumno 47	\N	47	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	131	\N	1
48	Alumno 48	\N	48	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	132	\N	1
49	Alumno 49	\N	49	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
50	Alumno 50	\N	50	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
51	Alumno 51	\N	51	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	135	\N	1
52	Alumno 52	\N	52	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	136	\N	1
53	Alumno 53	\N	53	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	137	\N	1
54	Alumno 54	\N	54	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
55	Alumno 55	\N	55	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	134	\N	1
56	Alumno 56	\N	56	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	133	\N	1
57	Alumno 57	\N	57	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
58	Alumno 58	\N	58	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
59	Alumno 59	\N	59	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	124	\N	1
60	Alumno 60	\N	60	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	116	\N	1
61	Alumno 61	\N	61	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	115	\N	1
62	Alumno 62	\N	62	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	114	\N	1
63	Alumno 63	\N	63	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	113	\N	1
64	Alumno 64	\N	64	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
65	Alumno 65	\N	65	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	111	\N	1
66	Alumno 66	\N	66	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
67	Alumno 67	\N	67	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	110	\N	1
68	Alumno 68	\N	68	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
69	Alumno 69	\N	69	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	109	\N	1
70	Alumno 70	\N	70	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
71	Alumno 71	\N	71	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	80	\N	1
72	Alumno 72	\N	72	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
73	Alumno 73	\N	73	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	\N	\N	\N	1
74	Alumno 74	\N	74	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	138	\N	1
75	Alumno 75	\N	75	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	139	\N	1
76	Alumno 76	\N	76	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	140	\N	1
77	Alumno 77	\N	77	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	141	\N	1
78	Alumno 78	\N	78	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	142	\N	1
79	Alumno 79	\N	79	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	143	\N	1
80	Alumno 80	\N	80	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	144	\N	1
81	Alumno 81	\N	81	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	145	\N	1
82	Alumno 82	\N	82	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	146	\N	1
83	Alumno 83	\N	83	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	147	\N	1
84	Alumno 84	\N	84	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	148	\N	1
85	Alumno 85	\N	85	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	149	\N	1
86	Alumno 86	\N	86	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	150	\N	1
87	Alumno 87	\N	87	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	151	\N	1
88	Alumno 88	\N	88	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	152	\N	1
89	Alumno 89	\N	89	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	153	\N	1
90	Alumno 90	\N	90	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	154	\N	1
91	Alumno 91	\N	91	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	155	\N	1
92	Alumno 92	\N	92	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	156	\N	1
93	Alumno 93	\N	93	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
94	Alumno 94	\N	94	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	157	\N	1
95	Alumno 95	\N	95	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
96	Alumno 96	\N	96	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
97	Alumno 97	\N	97	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	158	\N	1
98	Alumno 98	\N	98	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	159	\N	1
99	Alumno 99	\N	99	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
100	Alumno 100	\N	100	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
101	Alumno 101	\N	101	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	160	\N	1
102	Alumno 102	\N	102	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	161	\N	1
103	Alumno 103	\N	103	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	162	\N	1
104	Alumno 104	\N	104	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	163	\N	1
105	Alumno 105	\N	105	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	164	\N	1
106	Alumno 106	\N	106	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	165	\N	1
107	Alumno 107	\N	107	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
108	Alumno 108	\N	108	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	1
109	Alumno 109	\N	109	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	166	\N	1
110	Alumno 110	\N	110	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	167	\N	1
111	Alumno 111	\N	111	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	168	\N	1
112	Alumno 112	\N	112	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	169	\N	1
113	Alumno 113	\N	113	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	8	108	\N	1
114	Alumno 114	\N	114	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	9	79	\N	1
115	Alumno 115	\N	115	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2024	9	24	\N	1
116	Alumno 116	\N	116	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2025	9	25	\N	1
117	Alumno 117	\N	117	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2026	9	26	\N	1
118	Alumno 118	\N	118	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-188	8	188	\N	1
119	Alumno 119	\N	119	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/2023	8	23	\N	1
120	Alumno 120	\N	120	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-189	8	189	\N	1
121	Alumno 121	\N	121	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2027	9	27	\N	1
122	Alumno 122	\N	122	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-190	8	190	\N	1
123	Alumno 123	\N	123	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2029	9	29	\N	1
124	Alumno 124	\N	124	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-191	8	191	\N	1
125	Alumno 125	\N	125	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1930	9	30	\N	1
126	Alumno 126	\N	126	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-193	8	193	\N	1
127	Alumno 127	\N	127	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1979	0	0	\N	1
128	Alumno 128	\N	128	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1932	9	32	\N	1
129	Alumno 129	\N	129	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1933	9	33	\N	1
130	Alumno 130	\N	130	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1934	9	34	\N	1
131	Alumno 131	\N	131	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1936	9	36	\N	1
132	Alumno 132	\N	132	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1938	9	38	\N	1
133	Alumno 133	\N	133	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1939	9	39	\N	1
134	Alumno 134	\N	134	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1940	9	40	\N	1
135	Alumno 135	\N	135	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-194	8	194	\N	1
136	Alumno 136	\N	136	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-195	8	195	\N	1
137	Alumno 137	\N	137	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-196	8	196	\N	1
138	Alumno 138	\N	138	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1942	9	42	\N	1
139	Alumno 139	\N	139	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1943	9	43	\N	1
140	Alumno 140	\N	140	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1944	9	44	\N	1
141	Alumno 141	\N	141	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1979	0	0	\N	1
142	Alumno 142	\N	142	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-197	8	197	\N	1
143	Alumno 143	\N	143	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-198	8	198	\N	1
144	Alumno 144	\N	144	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1945	9	45	\N	1
145	Alumno 145	\N	145	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1946	9	46	\N	1
146	Alumno 146	\N	146	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-141	0	0	\N	1
147	Alumno 147	\N	147	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-199	8	199	\N	1
148	Alumno 148	\N	148	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-200	8	200	\N	1
149	Alumno 149	\N	149	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	09/02/2007	9	2	\N	1
150	Alumno 150	\N	150	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	09/05/2007	9	5	\N	1
151	Alumno 151	\N	151	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1951	9	51	\N	1
152	Alumno 152	\N	152	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1952	9	52	\N	1
153	Alumno 153	\N	153	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1953	9	53	\N	1
154	Alumno 154	\N	154	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1954	9	54	\N	1
155	Alumno 155	\N	155	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1955	9	55	\N	1
156	Alumno 156	\N	156	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1957	9	57	\N	1
157	Alumno 157	\N	157	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1958	9	58	\N	1
158	Alumno 158	\N	158	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1959	9	59	\N	1
159	Alumno 159	\N	159	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1960	9	60	\N	1
160	Alumno 160	\N	160	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1961	9	61	\N	1
161	Alumno 161	\N	161	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	09/10/2007	9	10	\N	1
162	Alumno 162	\N	162	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1962	9	62	\N	1
163	Alumno 163	\N	163	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1963	9	63	\N	1
164	Alumno 164	\N	164	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	09/11/2007	9	11	\N	1
165	Alumno 165	\N	165	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1964	9	64	\N	1
166	Alumno 166	\N	166	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1965	9	65	\N	1
167	Alumno 167	\N	167	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	09/12/2007	9	12	\N	1
168	Alumno 168	\N	168	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1966	9	66	\N	1
169	Alumno 169	\N	169	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1967	9	67	\N	1
170	Alumno 170	\N	170	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1984	8	84	\N	1
171	Alumno 171	\N	171	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1968	9	68	\N	1
172	Alumno 172	\N	172	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2013	9	13	\N	1
173	Alumno 173	\N	173	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1969	9	69	\N	1
174	Alumno 174	\N	174	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2014	0	0	\N	1
175	Alumno 175	\N	175	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2015	9	15	\N	1
176	Alumno 176	\N	176	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1970	9	70	\N	1
177	Alumno 177	\N	177	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2016	9	16	\N	1
178	Alumno 178	\N	178	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2017	9	17	\N	1
179	Alumno 179	\N	179	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1971	9	71	\N	1
180	Alumno 180	\N	180	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1972	9	72	\N	1
181	Alumno 181	\N	181	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2018	9	18	\N	1
182	Alumno 182	\N	182	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1973	9	63	\N	1
183	Alumno 183	\N	183	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2021	9	21	\N	1
184	Alumno 184	\N	184	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1974	9	74	\N	1
185	Alumno 185	\N	185	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1975	9	75	\N	1
186	Alumno 186	\N	186	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1976	9	76	\N	1
187	Alumno 187	\N	187	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/2022	9	22	\N	1
188	Alumno 188	\N	188	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1977	9	77	\N	1
189	Alumno 189	\N	189	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/09/1978	9	78	\N	1
190	Alumno 190	\N	190	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-132	8	132	\N	1
191	Alumno 191	\N	191	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-114	8	114	\N	1
192	Alumno 192	\N	192	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-115	8	115	\N	1
193	Alumno 193	\N	193	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-134	8	134	\N	1
194	Alumno 194	\N	194	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/2026	8	26	\N	1
195	Alumno 195	\N	195	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	7-134	7	134	\N	1
196	Alumno 196	\N	196	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-135	8	135	\N	1
197	Alumno 197	\N	197	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-119	8	119	\N	1
198	Alumno 198	\N	198	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-136	8	136	\N	1
199	Alumno 199	\N	199	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-120	8	120	\N	1
201	Alumno 201	\N	201	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-137	8	137	\N	1
202	Alumno 202	\N	202	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-138	8	138	\N	1
203	Alumno 203	\N	203	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-122	8	122	\N	1
204	Alumno 204	\N	204	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-139	8	139	\N	1
205	Alumno 205	\N	205	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	7-144	0	0	\N	1
206	Alumno 206	\N	206	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1989	0	0	\N	1
208	Alumno 208	\N	208	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-123	8	123	\N	1
209	Alumno 209	\N	209	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-140	8	140	\N	1
210	Alumno 210	\N	210	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-124	0	0	\N	1
211	Alumno 211	\N	211	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1937	0	0	\N	1
212	Alumno 212	\N	212	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	7-160	0	0	\N	1
213	Alumno 213	\N	213	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-125	8	125	\N	1
214	Alumno 214	\N	214	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-126	8	126	\N	1
215	Alumno 215	\N	215	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-142	8	142	\N	1
216	Alumno 216	\N	216	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-102	0	0	\N	1
217	Alumno 217	\N	217	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-127	8	127	\N	1
218	Alumno 218	\N	218	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-128	8	128	\N	1
219	Alumno 219	\N	219	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-144	8	144	\N	1
220	Alumno 220	\N	220	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-145	8	145	\N	1
221	Alumno 221	\N	221	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-130	8	130	\N	1
222	Alumno 222	\N	222	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1944	8	44	\N	1
223	Alumno 223	\N	223	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1946	8	46	\N	1
224	Alumno 224	\N	224	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-161	8	8	\N	1
225	Alumno 225	\N	225	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-162	8	162	\N	1
226	Alumno 226	\N	226	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-163	8	163	\N	1
227	Alumno 227	\N	227	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-148	8	148	\N	1
228	Alumno 228	\N	228	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-164	8	164	\N	1
229	Alumno 229	\N	229	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-166	8	166	\N	1
230	Alumno 230	\N	230	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	7-114	8	114	\N	1
231	Alumno 231	\N	231	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-168	8	168	\N	1
232	Alumno 232	\N	232	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-170	8	170	\N	1
233	Alumno 233	\N	233	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-172	0	0	\N	1
234	Alumno 234	\N	234	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	11/01/1902	0	0	\N	1
235	Alumno 235	\N	235	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	7-174	8	174	\N	1
236	Alumno 236	\N	236	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-173	8	173	\N	1
237	Alumno 237	\N	237	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-175	8	175	\N	1
238	Alumno 238	\N	238	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/07/2025	7	25	\N	1
239	Alumno 239	\N	239	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-154	8	154	\N	1
240	Alumno 240	\N	240	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1961	8	61	\N	1
241	Alumno 241	\N	241	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-177	8	177	\N	1
242	Alumno 242	\N	242	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-179	8	179	\N	1
243	Alumno 243	\N	243	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-156	8	156	\N	1
244	Alumno 244	\N	244	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	6-458	0	0	\N	1
245	Alumno 245	\N	245	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-180	8	180	\N	1
246	Alumno 246	\N	246	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-181	0	0	\N	1
247	Alumno 247	\N	247	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-182	8	182	\N	1
248	Alumno 248	\N	248	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-160	8	160	\N	1
249	Alumno 249	\N	249	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-183	8	183	\N	1
250	Alumno 250	\N	250	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/2013	0	0	\N	1
251	Alumno 251	\N	251	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/2025	8	25	\N	1
252	Alumno 252	\N	252	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1977	8	77	\N	1
253	Alumno 253	\N	253	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1980	8	80	\N	1
254	Alumno 254	\N	254	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1981	8	81	\N	1
255	Alumno 255	\N	255	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1986	8	86	\N	1
256	Alumno 256	\N	256	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1932	8	32	\N	1
257	Alumno 257	\N	257	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	6-491	6	491	\N	1
258	Alumno 258	\N	258	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1997	8	97	\N	1
259	Alumno 259	\N	259	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1939	8	39	\N	1
260	Alumno 260	\N	260	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1999	8	99	\N	1
261	Alumno 261	\N	261	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-103	8	103	\N	1
262	Alumno 262	\N	262	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-107	8	107	\N	1
263	Alumno 263	\N	263	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1947	8	47	\N	1
264	Alumno 264	\N	264	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1948	8	48	\N	1
265	Alumno 265	\N	265	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1974	8	74	\N	1
266	Alumno 266	\N	266	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1949	8	49	\N	1
267	Alumno 267	\N	267	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1950	8	50	\N	1
268	Alumno 268	\N	268	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1951	8	51	\N	1
269	Alumno 269	\N	269	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1985	8	85	\N	1
270	Alumno 270	\N	270	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1952	8	52	\N	1
271	Alumno 271	\N	271	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	7-194	7	194	\N	1
272	Alumno 272	\N	272	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1954	8	54	\N	1
273	Alumno 273	\N	273	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	4-1185	0	0	\N	1
274	Alumno 274	\N	274	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1957	8	57	\N	1
275	Alumno 275	\N	275	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1991	8	91	\N	1
276	Alumno 276	\N	276	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1992	8	92	\N	1
277	Alumno 277	\N	277	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	08/01/2007	8	1	\N	1
278	Alumno 278	\N	278	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1994	8	94	\N	1
279	Alumno 279	\N	279	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	6-454	0	0	\N	1
280	Alumno 280	\N	280	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-100	8	100	\N	1
281	Alumno 281	\N	281	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	8-101	8	101	\N	1
282	Alumno 282	\N	282	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1964	8	64	\N	1
283	Alumno 283	\N	283	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1965	8	65	\N	1
284	Alumno 284	\N	284	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1966	8	66	\N	1
285	Alumno 285	\N	285	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	08/09/2007	8	9	\N	1
286	Alumno 286	\N	286	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1969	8	69	\N	1
287	Alumno 287	\N	287	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1970	8	70	\N	1
288	Alumno 288	\N	288	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	7-181	8	181	\N	1
289	Alumno 289	\N	289	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1971	8	71	\N	1
290	Alumno 290	\N	290	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	7-125	0	0	\N	1
291	Alumno 291	\N	291	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/2029	8	29	\N	1
292	Alumno 292	\N	292	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	01/08/1934	8	34	\N	1
293	Alumno 293	\N	293	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
294	Alumno 294	\N	294	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
295	Alumno 295	\N	295	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
296	Alumno 296	\N	296	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	9	4	\N	\N
297	Alumno 297	\N	297	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
298	Alumno 298	\N	298	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
299	Alumno 299	\N	299	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	9	20	\N	\N
300	Alumno 300	\N	300	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	9	23	\N	\N
301	Alumno 301	\N	301	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	8	7	\N	\N
302	Alumno 302	\N	302	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	8	24	\N	\N
303	Alumno 303	\N	303	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	7	130	\N	\N
304	Alumno 304	\N	304	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	8	36	\N	\N
305	Alumno 305	\N	305	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
306	Alumno 306	\N	306	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	7	157	\N	\N
307	Alumno 307	\N	307	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	7	142	\N	\N
308	Alumno 308	\N	308	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	8	41	\N	\N
309	Alumno 309	\N	309	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	7	164	\N	\N
310	Alumno 310	\N	310	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	6	529	\N	\N
311	Alumno 311	\N	311	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	8	55	\N	\N
312	Alumno 312	\N	312	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	8	94	\N	\N
313	Alumno 313	\N	313	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
314	Alumno 314	\N	314	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
315	Alumno 315	\N	315	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
316	Alumno 316	\N	316	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
317	Alumno 317	\N	317	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
318	Alumno 318	\N	318	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
319	Alumno 319	\N	319	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
320	Alumno 320	\N	320	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
321	Alumno 321	\N	321	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
322	Alumno 322	\N	322	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
323	Alumno 323	\N	323	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
324	Alumno 324	\N	324	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
325	Alumno 325	\N	325	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
326	Alumno 326	\N	326	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
327	Alumno 327	\N	327	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
328	Alumno 328	\N	328	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
329	Alumno 329	\N	329	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
330	Alumno 330	\N	330	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
331	Alumno 331	\N	331	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
332	Alumno 332	\N	332	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
333	Alumno 333	\N	333	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
334	Alumno 334	\N	334	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
335	Alumno 335	\N	335	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
336	Alumno 336	\N	336	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
337	Alumno 337	\N	337	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
338	Alumno 338	\N	338	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
339	Alumno 339	\N	339	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
340	Alumno 340	\N	340	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
341	Alumno 341	\N	341	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
342	Alumno 342	\N	342	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
343	Alumno 343	\N	343	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
344	Alumno 344	\N	344	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
345	Alumno 345	\N	345	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
346	Alumno 346	\N	346	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
347	Alumno 347	\N	347	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
348	Alumno 348	\N	348	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
349	Alumno 349	\N	349	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
350	Alumno 350	\N	350	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
351	Alumno 351	\N	351	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
352	Alumno 352	\N	352	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
353	Alumno 353	\N	353	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
354	Alumno 354	\N	354	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
355	Alumno 355	\N	355	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
356	Alumno 356	\N	356	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
357	Alumno 357	\N	357	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
358	Alumno 358	\N	358	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
359	Alumno 359	\N	359	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
360	Alumno 360	\N	360	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
361	Alumno 361	\N	361	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
362	Alumno 362	\N	362	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
363	Alumno 363	\N	363	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
364	Alumno 364	\N	364	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
365	Alumno 365	\N	365	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
366	Alumno 366	\N	366	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
367	Alumno 367	\N	367	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
368	Alumno 368	\N	368	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
369	Alumno 369	\N	369	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
370	Alumno 370	\N	370	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
371	Alumno 371	\N	371	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
372	Alumno 372	\N	372	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
373	Alumno 373	\N	373	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
374	Alumno 374	\N	374	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
375	Alumno 375	\N	375	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
376	Alumno 376	\N	376	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
377	Alumno 377	\N	377	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
378	Alumno 378	\N	378	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
379	Alumno 379	\N	379	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
380	Alumno 380	\N	380	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
381	Alumno 381	\N	381	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
382	Alumno 382	\N	382	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
383	Alumno 383	\N	383	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
384	Alumno 384	\N	384	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
385	Alumno 385	\N	385	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
386	Alumno 386	\N	386	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
387	Alumno 387	\N	387	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
388	Alumno 388	\N	388	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
389	Alumno 389	\N	389	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
390	Alumno 390	\N	390	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
391	Alumno 391	\N	391	F	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
392	Alumno 392	\N	392	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
393	Alumno 393	\N	393	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
394	Alumno 394	\N	394	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
395	Alumno 395	\N	395	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
396	Alumno 396	\N	396	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
397	Alumno 397	\N	397	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
398	Alumno 398	\N	398	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
399	Alumno 399	\N	399	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
400	Alumno 400	\N	400	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
401	Alumno 401	\N	401	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
402	Alumno 402	\N	402	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
403	Alumno 403	\N	403	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
404	Alumno 404	\N	404	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
405	Alumno 405	\N	405	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
406	Alumno 406	\N	406	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
407	Alumno 407	\N	407	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
408	Alumno 408	\N	408	M	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	MATRIZ	\N	\N	\N	\N	\N	\N	\N	\N
412	Alumno 412	\N	412	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
413	Alumno 413	\N	413	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
414	Alumno 414	\N	414	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
415	Alumno 415	\N	415	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
416	Alumno 416	\N	416	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
417	Alumno 417	\N	417	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
418	Alumno 418	\N	418	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
419	Alumno 419	\N	419	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
420	Alumno 420	\N	420	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
421	Alumno 421	\N	421	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
422	Alumno 422	\N	422	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
423	Alumno 423	\N	423	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
424	Alumno 424	\N	424	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
425	Alumno 425	\N	425	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
426	Alumno 426	\N	426	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
427	Alumno 427	\N	427	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
428	Alumno 428	\N	428	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
429	Alumno 429	\N	429	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
430	Alumno 430	\N	430	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
431	Alumno 431	\N	431	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
432	Alumno 432	\N	432	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
433	Alumno 433	\N	433	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
434	Alumno 434	\N	434	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
435	Alumno 435	\N	435	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
436	Alumno 436	\N	436	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
437	Alumno 437	\N	437	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
438	Alumno 438	\N	438	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
439	Alumno 439	\N	439	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
442	Alumno 442	\N	442	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
443	Alumno 443	\N	443	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
444	Alumno 444	\N	444	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
445	Alumno 445	\N	445	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
446	Alumno 446	\N	446	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
447	Alumno 447	\N	447	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
448	Alumno 448	\N	448	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
449	Alumno 449	\N	449	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
450	Alumno 450	\N	450	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
451	Alumno 451	\N	451	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
452	Alumno 452	\N	452	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
453	Alumno 453	\N	453	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
454	Alumno 454	\N	454	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
455	Alumno 455	\N	455	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
456	Alumno 456	\N	456	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
457	Alumno 457	\N	457	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
458	Alumno 458	\N	458	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
459	Alumno 459	\N	459	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
460	Alumno 460	\N	460	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
461	Alumno 461	\N	461	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
462	Alumno 462	\N	462	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
463	Alumno 463	\N	463	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
464	Alumno 464	\N	464	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
465	Alumno 465	\N	465	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
466	Alumno 466	\N	466	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
467	Alumno 467	\N	467	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
468	Alumno 468	\N	468	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
469	Alumno 469	\N	469	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
470	Alumno 470	\N	470	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
471	Alumno 471	\N	471	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
472	Alumno 472	\N	472	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
473	Alumno 473	\N	473	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
474	Alumno 474	\N	474	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
475	Alumno 475	\N	475	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
476	Alumno 476	\N	476	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
477	Alumno 477	\N	477	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
478	Alumno 478	\N	478	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
479	Alumno 479	\N	479	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
480	Alumno 480	\N	480	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
481	Alumno 481	\N	481	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
482	Alumno 482	\N	482	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
483	Alumno 483	\N	483	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
484	Alumno 484	\N	484	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
485	Alumno 485	\N	485	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
486	Alumno 486	\N	486	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
487	Alumno 487	\N	487	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
488	Alumno 488	\N	488	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
489	Alumno 489	\N	489	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
490	Alumno 490	\N	490	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
491	Alumno 491	\N	491	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
492	Alumno 492	\N	492	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
493	Alumno 493	\N	493	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
494	Alumno 494	\N	494	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
495	Alumno 495	\N	495	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
496	Alumno 496	\N	496	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
497	Alumno 497	\N	497	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
498	Alumno 498	\N	498	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
499	Alumno 499	\N	499	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
500	Alumno 500	\N	500	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
501	Alumno 501	\N	501	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
502	Alumno 502	\N	502	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	\N	\N	\N	0	0	\N	\N
\.


--
-- Data for Name: asignaturas; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY asignaturas (asignaturaid, asignatura, materiaid, cursoid, carreraid, planestudioid, orden, horas, teorica, "práctica", sexo, optativa, safs, faltas1r, faltaslibre, faltasrecursa, cicloid) FROM stdin;
26	ALGEBRA	1	1	1	1	1	3	f	f	\N	f	10	\N	24	30	\N
27	ANÁLISIS MATEMÁTICO	2	1	1	1	2	3	f	f	\N	f	10	\N	24	30	\N
28	INGLÉS TÉCNICO	3	1	1	1	3	2	f	f	\N	f	6	\N	16	20	\N
29	ADMINISTRACIÓN DE LAS ORGANIZACIONES	4	1	1	1	4	3	f	f	\N	f	10	\N	24	30	\N
30	METODOLOGÍA DE LA INVESTIGACIÓN	5	1	1	1	5	2	f	f	\N	f	6	\N	16	20	\N
31	PROGRAMACIÓN I	6	1	1	1	6	3	f	f	\N	f	10	\N	24	30	\N
32	INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN	7	1	1	1	7	2	f	f	\N	f	6	\N	16	20	\N
33	ARQUITECTURA DE COMPUTADORES	8	1	1	1	8	2	f	f	\N	f	6	\N	16	20	\N
34	ESPACIO DE DEFINICIÓN INSTITUCIONAL I	9	1	1	1	9	\N	f	f	\N	f	10	\N	24	30	\N
41	PROBABILIDAD Y ESTADÍSTICAS	16	2	1	1	1	3	f	f	\N	f	10	\N	24	30	\N
42	ANÁLISIS MATEMÁTICO II	17	2	1	1	2	2	f	f	\N	f	6	\N	16	20	\N
43	INGLÉS TÉCNICO II	18	2	1	1	3	2	f	f	\N	f	6	\N	16	20	\N
44	SISTEMAS DE INFORMACIÓN I	19	2	1	1	4	2	f	f	\N	f	6	\N	16	20	\N
45	PROGRAMACIÓN II	20	2	1	1	5	2	f	f	\N	f	6	\N	16	20	\N
46	SISTEMAS OPERATIVOS	21	2	1	1	6	3	f	t	\N	f	10	\N	24	30	\N
47	BASES DE DATOS	22	2	1	1	7	2	f	t	\N	f	6	\N	16	20	\N
48	ESPACIO DE DEFINICIÓN INSTITUCIONAL II	23	2	1	1	8	2	f	t	\N	f	6	\N	16	20	\N
55	INVESTIGACIÓN OPERATIVA	31	3	1	1	1	2	f	f	\N	f	6	\N	16	20	\N
56	ECONOMÍA EMPRESARIAL	32	3	1	1	2	2	f	f	\N	f	6	\N	16	20	\N
57	TELEINFORMÁTICA	33	3	1	1	3	2	f	f	\N	f	6	\N	16	20	\N
58	SISTEMAS DE INFORMACIÓN II	34	3	1	1	4	2	f	f	\N	f	6	\N	16	20	\N
59	ESPACIO DE DEFINICIÓN INSTITUCIONAL III	35	3	1	1	5	2	f	f	\N	f	6	\N	16	20	\N
69	PRÁCTICA PROFESIONAL	45	3	1	1	15	2	f	f	\N	f	6	\N	16	20	\N
\.


--
-- Data for Name: calendario; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY calendario (id, fecha, feriado, mensaje) FROM stdin;
1	2004-01-01	t	Año Nuevo
2	2004-04-05	t	Malvinas
3	2004-04-08	t	Jueves Santo
4	2004-04-09	t	Viernes Santo
5	2004-05-01	t	Día del Trabajador
6	2004-05-25	t	25 de Mayo
7	2004-06-21	t	Bandera
8	2004-07-09	t	Independencia
9	2004-08-16	t	Gral. San Martín
10	2004-10-11	t	Día de la Raza
11	2004-12-08	t	Día de la Virgen
12	2004-12-25	t	Navidad
\.


--
-- Data for Name: calificaciones; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY calificaciones (calificacionid, calificacion, codigo, id, condicion, ayuda, equivalencia, previa) FROM stdin;
1	Orientativa	O	1	\N	\N	f	f
2	TP	P	2	\N	\N	f	f
3	Exámenes	E	3	\N	\N	f	f
4	Definitiva	C	4	Regular	Dentro del Mismo Período	f	f
5	Final	F	5	Regular	Analítico	f	f
6	Acreditación	A	6	Pend.Acred.	"Previa"	f	f
7	Equivalencia	E	7	Equiv.	\N	t	f
8	Libre	L	8	Libre	\N	f	f
9	Final (No Regular)	\N	\N	No Regular	\N	f	f
\.


--
-- Data for Name: cargos; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY cargos (cargoid, cargo) FROM stdin;
1	Administrativo
2	Profesor
3	Maestro Especial
4	Maestra Jardinera
5	Director
6	Porteria
7	Bedel
8	Rector
\.


--
-- Data for Name: carreras; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY carreras (carreraid, carrera) FROM stdin;
1	Tecnicatura en Analisis de Sistemas
2	Tecnicatura Superior en Enfermería
3	Tecnicatura Superior en Instrumentación Quirúrgica 
4	Tecnicatura Superior en Laboratorio de Análisis Clínicos
5	Tecnicatura Superior en Radiología
\.


--
-- Data for Name: catedras; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY catedras (catedraid, catedra, informe, boletin, "analítico", espacio, abr, calificacion, horas, minutos, nivelid, codigo) FROM stdin;
0	XXX	\N	\N	\N	\N	\N	\N	0	0	0	\N
\.


--
-- Data for Name: ciclos; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY ciclos (cicloid, ciclo, "año", detalle, desde, hasta) FROM stdin;
1	Ciclo Lectivo 2001	2001	\N	2004-01-01	2004-12-31
2	Ciclo Lectivo 2002	2002	\N	\N	\N
3	Ciclo Lectivo 2003	2003	\N	\N	\N
4	Ciclo Lectivo 2004	2004	\N	\N	\N
5	Ciclo Lectivo 2005	2005	\N	2005-03-01	2005-12-31
6	Ciclo Lectivo 2006	2006	\N	2006-03-01	2006-12-31
7	Ciclo Lectivo 2007	2007	\N	\N	\N
8	Ciclo Lectivo 2008	2008	\N	2008-03-01	2008-12-31
9	Ciclo Lectivo 2009	2009	\N	2009-03-01	2009-12-31
10	Ciclo Lectivo 2010	2010	\N	2010-03-01	2010-12-31
\.


--
-- Data for Name: comisiones; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY comisiones (comisionid, comision, divisionid, periodoid, materiaid, personalid, sexo, safs, faltas1r, faltas2r, faltaslibre, faltasrecursa, id) FROM stdin;
1	ALGEBRA	1	\N	1	\N	\N	10	\N	\N	24	30	0
2	ANÁLISIS MATEMÁTICO	1	\N	2	\N	\N	10	\N	\N	24	30	0
3	INGLÉS TÉCNICO	1	\N	3	\N	\N	6	\N	\N	16	20	0
4	ADMINISTRACIÓN DE LAS ORGANIZACIONES	1	\N	4	\N	\N	10	\N	\N	24	30	0
5	METODOLOGÍA DE LA INVESTIGACIÓN	1	\N	5	\N	\N	6	\N	\N	16	20	0
6	PROGRAMACIÓN I	1	\N	6	\N	\N	10	\N	\N	24	30	0
7	INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN	1	\N	7	\N	\N	6	\N	\N	16	20	0
8	ARQUITECTURA DE COMPUTADORES	1	\N	8	\N	\N	6	\N	\N	16	20	0
9	ESPACIO DE DEFINICIÓN INSTITUCIONAL I	1	\N	9	\N	\N	10	\N	\N	24	30	0
16	ALGEBRA	2	\N	1	\N	\N	10	\N	\N	24	30	0
17	ANÁLISIS MATEMÁTICO	2	\N	2	\N	\N	10	\N	\N	24	30	0
18	INGLÉS TÉCNICO	2	\N	3	\N	\N	6	\N	\N	16	20	0
19	ADMINISTRACIÓN DE LAS ORGANIZACIONES	2	\N	4	\N	\N	10	\N	\N	24	30	0
20	METODOLOGÍA DE LA INVESTIGACIÓN	2	\N	5	\N	\N	6	\N	\N	16	20	0
21	PROGRAMACIÓN I	2	\N	6	\N	\N	10	\N	\N	24	30	0
22	INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN	2	\N	7	\N	\N	6	\N	\N	16	20	0
23	ARQUITECTURA DE COMPUTADORES	2	\N	8	\N	\N	6	\N	\N	16	20	0
24	ESPACIO DE DEFINICIÓN INSTITUCIONAL I	2	\N	9	\N	\N	10	\N	\N	24	30	0
31	ALGEBRA	3	\N	1	\N	\N	10	\N	\N	24	30	0
32	ANÁLISIS MATEMÁTICO	3	\N	2	\N	\N	10	\N	\N	24	30	0
33	INGLÉS TÉCNICO	3	\N	3	\N	\N	6	\N	\N	16	20	0
34	ADMINISTRACIÓN DE LAS ORGANIZACIONES	3	\N	4	\N	\N	10	\N	\N	24	30	0
35	METODOLOGÍA DE LA INVESTIGACIÓN	3	\N	5	\N	\N	6	\N	\N	16	20	0
36	PROGRAMACIÓN I	3	\N	6	\N	\N	10	\N	\N	24	30	0
37	INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN	3	\N	7	\N	\N	6	\N	\N	16	20	0
38	ARQUITECTURA DE COMPUTADORES	3	\N	8	\N	\N	6	\N	\N	16	20	0
39	ESPACIO DE DEFINICIÓN INSTITUCIONAL I	3	\N	9	\N	\N	10	\N	\N	24	30	0
46	PROBABILIDAD Y ESTADÍSTICAS	4	\N	16	\N	\N	10	\N	\N	24	30	0
47	ANÁLISIS MATEMÁTICO II	4	\N	17	\N	\N	6	\N	\N	16	20	0
48	INGLÉS TÉCNICO II	4	\N	18	\N	\N	6	\N	\N	16	20	0
49	SISTEMAS DE INFORMACIÓN I	4	\N	19	\N	\N	6	\N	\N	16	20	0
50	PROGRAMACIÓN II	4	\N	20	\N	\N	6	\N	\N	16	20	0
51	SISTEMAS OPERATIVOS	4	\N	21	\N	\N	10	\N	\N	24	30	0
52	BASES DE DATOS	4	\N	22	\N	\N	6	\N	\N	16	20	0
53	ESPACIO DE DEFINICIÓN INSTITUCIONAL II	4	\N	23	\N	\N	6	\N	\N	16	20	0
60	PROBABILIDAD Y ESTADÍSTICAS	5	\N	16	\N	\N	10	\N	\N	24	30	0
61	ANÁLISIS MATEMÁTICO II	5	\N	17	\N	\N	6	\N	\N	16	20	0
62	INGLÉS TÉCNICO II	5	\N	18	\N	\N	6	\N	\N	16	20	0
63	SISTEMAS DE INFORMACIÓN I	5	\N	19	\N	\N	6	\N	\N	16	20	0
64	PROGRAMACIÓN II	5	\N	20	\N	\N	6	\N	\N	16	20	0
65	SISTEMAS OPERATIVOS	5	\N	21	\N	\N	10	\N	\N	24	30	0
66	BASES DE DATOS	5	\N	22	\N	\N	6	\N	\N	16	20	0
67	ESPACIO DE DEFINICIÓN INSTITUCIONAL II	5	\N	23	\N	\N	6	\N	\N	16	20	0
74	INVESTIGACIÓN OPERATIVA	6	\N	31	\N	\N	6	\N	\N	16	20	0
75	ECONOMÍA EMPRESARIAL	6	\N	32	\N	\N	6	\N	\N	16	20	0
76	TELEINFORMÁTICA	6	\N	33	\N	\N	6	\N	\N	16	20	0
77	SISTEMAS DE INFORMACIÓN II	6	\N	34	\N	\N	6	\N	\N	16	20	0
78	ESPACIO DE DEFINICIÓN INSTITUCIONAL III	6	\N	35	\N	\N	6	\N	\N	16	20	0
88	PRÁCTICA PROFESIONAL	6	\N	45	\N	\N	6	\N	\N	16	20	0
89	INVESTIGACIÓN OPERATIVA	7	\N	31	\N	\N	6	\N	\N	16	20	0
90	ECONOMÍA EMPRESARIAL	7	\N	32	\N	\N	6	\N	\N	16	20	0
91	TELEINFORMÁTICA	7	\N	33	\N	\N	6	\N	\N	16	20	0
92	SISTEMAS DE INFORMACIÓN II	7	\N	34	\N	\N	6	\N	\N	16	20	0
93	ESPACIO DE DEFINICIÓN INSTITUCIONAL III	7	\N	35	\N	\N	6	\N	\N	16	20	0
103	PRÁCTICA PROFESIONAL	7	\N	45	\N	\N	6	\N	\N	16	20	0
140	ALGEBRA	70001	\N	1	\N	\N	\N	\N	\N	\N	\N	0
141	ANÁLISIS MATEMÁTICO	70001	\N	2	\N	\N	\N	\N	\N	\N	\N	0
142	INGLÉS TÉCNICO	70001	\N	3	\N	\N	\N	\N	\N	\N	\N	0
143	ADMINISTRACIÓN DE LAS ORGANIZACIONES	70001	\N	4	\N	\N	\N	\N	\N	\N	\N	0
144	METODOLOGÍA DE LA INVESTIGACIÓN	70001	\N	5	\N	\N	\N	\N	\N	\N	\N	0
145	PROGRAMACIÓN I	70001	\N	6	\N	\N	\N	\N	\N	\N	\N	0
146	INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN	70001	\N	7	\N	\N	\N	\N	\N	\N	\N	0
147	ARQUITECTURA DE COMPUTADORES	70001	\N	8	\N	\N	\N	\N	\N	\N	\N	0
148	ESPACIO DE DEFINICIÓN INSTITUCIONAL I	70001	\N	9	\N	\N	\N	\N	\N	\N	\N	0
156	ALGEBRA	70002	\N	1	\N	\N	\N	\N	\N	\N	\N	0
157	ANÁLISIS MATEMÁTICO	70002	\N	2	\N	\N	\N	\N	\N	\N	\N	0
158	INGLÉS TÉCNICO	70002	\N	3	\N	\N	\N	\N	\N	\N	\N	0
159	ADMINISTRACIÓN DE LAS ORGANIZACIONES	70002	\N	4	\N	\N	\N	\N	\N	\N	\N	0
160	METODOLOGÍA DE LA INVESTIGACIÓN	70002	\N	5	\N	\N	\N	\N	\N	\N	\N	0
161	PROGRAMACIÓN I	70002	\N	6	\N	\N	\N	\N	\N	\N	\N	0
162	INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN	70002	\N	7	\N	\N	\N	\N	\N	\N	\N	0
163	ARQUITECTURA DE COMPUTADORES	70002	\N	8	\N	\N	\N	\N	\N	\N	\N	0
164	ESPACIO DE DEFINICIÓN INSTITUCIONAL I	70002	\N	9	\N	\N	\N	\N	\N	\N	\N	0
172	ALGEBRA	70003	\N	1	\N	\N	\N	\N	\N	\N	\N	0
173	ANÁLISIS MATEMÁTICO	70003	\N	2	\N	\N	\N	\N	\N	\N	\N	0
174	INGLÉS TÉCNICO	70003	\N	3	\N	\N	\N	\N	\N	\N	\N	0
175	ADMINISTRACIÓN DE LAS ORGANIZACIONES	70003	\N	4	\N	\N	\N	\N	\N	\N	\N	0
176	METODOLOGÍA DE LA INVESTIGACIÓN	70003	\N	5	\N	\N	\N	\N	\N	\N	\N	0
177	PROGRAMACIÓN I	70003	\N	6	\N	\N	\N	\N	\N	\N	\N	0
178	INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN	70003	\N	7	\N	\N	\N	\N	\N	\N	\N	0
179	ARQUITECTURA DE COMPUTADORES	70003	\N	8	\N	\N	\N	\N	\N	\N	\N	0
180	ESPACIO DE DEFINICIÓN INSTITUCIONAL I	70003	\N	9	\N	\N	\N	\N	\N	\N	\N	0
188	PROBABILIDAD Y ESTADÍSTICAS	70004	\N	16	\N	\N	\N	\N	\N	\N	\N	0
189	ANÁLISIS MATEMÁTICO II	70004	\N	17	\N	\N	\N	\N	\N	\N	\N	0
190	INGLÉS TÉCNICO II	70004	\N	18	\N	\N	\N	\N	\N	\N	\N	0
191	SISTEMAS DE INFORMACIÓN I	70004	\N	19	\N	\N	\N	\N	\N	\N	\N	0
192	PROGRAMACIÓN II	70004	\N	20	\N	\N	\N	\N	\N	\N	\N	0
193	SISTEMAS OPERATIVOS	70004	\N	21	\N	\N	\N	\N	\N	\N	\N	0
194	BASES DE DATOS	70004	\N	22	\N	\N	\N	\N	\N	\N	\N	0
195	ESPACIO DE DEFINICIÓN INSTITUCIONAL II	70004	\N	23	\N	\N	\N	\N	\N	\N	\N	0
203	PROBABILIDAD Y ESTADÍSTICAS	70005	\N	16	\N	\N	\N	\N	\N	\N	\N	0
204	ANÁLISIS MATEMÁTICO II	70005	\N	17	\N	\N	\N	\N	\N	\N	\N	0
205	INGLÉS TÉCNICO II	70005	\N	18	\N	\N	\N	\N	\N	\N	\N	0
206	SISTEMAS DE INFORMACIÓN I	70005	\N	19	\N	\N	\N	\N	\N	\N	\N	0
207	PROGRAMACIÓN II	70005	\N	20	\N	\N	\N	\N	\N	\N	\N	0
208	SISTEMAS OPERATIVOS	70005	\N	21	\N	\N	\N	\N	\N	\N	\N	0
209	BASES DE DATOS	70005	\N	22	\N	\N	\N	\N	\N	\N	\N	0
210	ESPACIO DE DEFINICIÓN INSTITUCIONAL II	70005	\N	23	\N	\N	\N	\N	\N	\N	\N	0
218	INVESTIGACIÓN OPERATIVA	70006	\N	31	\N	\N	\N	\N	\N	\N	\N	0
219	ECONOMÍA EMPRESARIAL	70006	\N	32	\N	\N	\N	\N	\N	\N	\N	0
220	TELEINFORMÁTICA	70006	\N	33	\N	\N	\N	\N	\N	\N	\N	0
221	SISTEMAS DE INFORMACIÓN II	70006	\N	34	\N	\N	\N	\N	\N	\N	\N	0
222	ESPACIO DE DEFINICIÓN INSTITUCIONAL III	70006	\N	35	\N	\N	\N	\N	\N	\N	\N	0
232	PRÁCTICA PROFESIONAL	70006	\N	45	\N	\N	\N	\N	\N	\N	\N	0
234	INVESTIGACIÓN OPERATIVA	70007	\N	31	\N	\N	\N	\N	\N	\N	\N	0
235	ECONOMÍA EMPRESARIAL	70007	\N	32	\N	\N	\N	\N	\N	\N	\N	0
236	TELEINFORMÁTICA	70007	\N	33	\N	\N	\N	\N	\N	\N	\N	0
237	SISTEMAS DE INFORMACIÓN II	70007	\N	34	\N	\N	\N	\N	\N	\N	\N	0
238	ESPACIO DE DEFINICIÓN INSTITUCIONAL III	70007	\N	35	\N	\N	\N	\N	\N	\N	\N	0
248	PRÁCTICA PROFESIONAL	70007	\N	45	\N	\N	\N	\N	\N	\N	\N	0
278	ALGEBRA	80001	\N	1	\N	\N	\N	\N	\N	\N	\N	0
279	ANÁLISIS MATEMÁTICO	80001	\N	2	\N	\N	\N	\N	\N	\N	\N	0
280	INGLÉS TÉCNICO	80001	\N	3	\N	\N	\N	\N	\N	\N	\N	0
281	ADMINISTRACIÓN DE LAS ORGANIZACIONES	80001	\N	4	\N	\N	\N	\N	\N	\N	\N	0
282	METODOLOGÍA DE LA INVESTIGACIÓN	80001	\N	5	\N	\N	\N	\N	\N	\N	\N	0
283	PROGRAMACIÓN I	80001	\N	6	\N	\N	\N	\N	\N	\N	\N	0
284	INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN	80001	\N	7	\N	\N	\N	\N	\N	\N	\N	0
285	ARQUITECTURA DE COMPUTADORES	80001	\N	8	\N	\N	\N	\N	\N	\N	\N	0
286	ESPACIO DE DEFINICIÓN INSTITUCIONAL I	80001	\N	9	\N	\N	\N	\N	\N	\N	\N	0
294	ALGEBRA	80002	\N	1	\N	\N	\N	\N	\N	\N	\N	0
295	ANÁLISIS MATEMÁTICO	80002	\N	2	\N	\N	\N	\N	\N	\N	\N	0
296	INGLÉS TÉCNICO	80002	\N	3	\N	\N	\N	\N	\N	\N	\N	0
297	ADMINISTRACIÓN DE LAS ORGANIZACIONES	80002	\N	4	\N	\N	\N	\N	\N	\N	\N	0
298	METODOLOGÍA DE LA INVESTIGACIÓN	80002	\N	5	\N	\N	\N	\N	\N	\N	\N	0
299	PROGRAMACIÓN I	80002	\N	6	\N	\N	\N	\N	\N	\N	\N	0
300	INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN	80002	\N	7	\N	\N	\N	\N	\N	\N	\N	0
301	ARQUITECTURA DE COMPUTADORES	80002	\N	8	\N	\N	\N	\N	\N	\N	\N	0
302	ESPACIO DE DEFINICIÓN INSTITUCIONAL I	80002	\N	9	\N	\N	\N	\N	\N	\N	\N	0
310	ALGEBRA	80003	\N	1	\N	\N	\N	\N	\N	\N	\N	0
311	ANÁLISIS MATEMÁTICO	80003	\N	2	\N	\N	\N	\N	\N	\N	\N	0
312	INGLÉS TÉCNICO	80003	\N	3	\N	\N	\N	\N	\N	\N	\N	0
313	ADMINISTRACIÓN DE LAS ORGANIZACIONES	80003	\N	4	\N	\N	\N	\N	\N	\N	\N	0
314	METODOLOGÍA DE LA INVESTIGACIÓN	80003	\N	5	\N	\N	\N	\N	\N	\N	\N	0
315	PROGRAMACIÓN I	80003	\N	6	\N	\N	\N	\N	\N	\N	\N	0
316	INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN	80003	\N	7	\N	\N	\N	\N	\N	\N	\N	0
317	ARQUITECTURA DE COMPUTADORES	80003	\N	8	\N	\N	\N	\N	\N	\N	\N	0
318	ESPACIO DE DEFINICIÓN INSTITUCIONAL I	80003	\N	9	\N	\N	\N	\N	\N	\N	\N	0
326	PROBABILIDAD Y ESTADÍSTICAS	80004	\N	16	\N	\N	\N	\N	\N	\N	\N	0
327	ANÁLISIS MATEMÁTICO II	80004	\N	17	\N	\N	\N	\N	\N	\N	\N	0
328	INGLÉS TÉCNICO II	80004	\N	18	\N	\N	\N	\N	\N	\N	\N	0
329	SISTEMAS DE INFORMACIÓN I	80004	\N	19	\N	\N	\N	\N	\N	\N	\N	0
330	PROGRAMACIÓN II	80004	\N	20	\N	\N	\N	\N	\N	\N	\N	0
331	SISTEMAS OPERATIVOS	80004	\N	21	\N	\N	\N	\N	\N	\N	\N	0
332	BASES DE DATOS	80004	\N	22	\N	\N	\N	\N	\N	\N	\N	0
333	ESPACIO DE DEFINICIÓN INSTITUCIONAL II	80004	\N	23	\N	\N	\N	\N	\N	\N	\N	0
341	PROBABILIDAD Y ESTADÍSTICAS	80005	\N	16	\N	\N	\N	\N	\N	\N	\N	0
342	ANÁLISIS MATEMÁTICO II	80005	\N	17	\N	\N	\N	\N	\N	\N	\N	0
343	INGLÉS TÉCNICO II	80005	\N	18	\N	\N	\N	\N	\N	\N	\N	0
344	SISTEMAS DE INFORMACIÓN I	80005	\N	19	\N	\N	\N	\N	\N	\N	\N	0
345	PROGRAMACIÓN II	80005	\N	20	\N	\N	\N	\N	\N	\N	\N	0
346	SISTEMAS OPERATIVOS	80005	\N	21	\N	\N	\N	\N	\N	\N	\N	0
347	BASES DE DATOS	80005	\N	22	\N	\N	\N	\N	\N	\N	\N	0
348	ESPACIO DE DEFINICIÓN INSTITUCIONAL II	80005	\N	23	\N	\N	\N	\N	\N	\N	\N	0
356	INVESTIGACIÓN OPERATIVA	80006	\N	31	\N	\N	\N	\N	\N	\N	\N	0
357	ECONOMÍA EMPRESARIAL	80006	\N	32	\N	\N	\N	\N	\N	\N	\N	0
358	TELEINFORMÁTICA	80006	\N	33	\N	\N	\N	\N	\N	\N	\N	0
359	SISTEMAS DE INFORMACIÓN II	80006	\N	34	\N	\N	\N	\N	\N	\N	\N	0
360	ESPACIO DE DEFINICIÓN INSTITUCIONAL III	80006	\N	35	\N	\N	\N	\N	\N	\N	\N	0
370	PRÁCTICA PROFESIONAL	80006	\N	45	\N	\N	\N	\N	\N	\N	\N	0
372	INVESTIGACIÓN OPERATIVA	80007	\N	31	\N	\N	\N	\N	\N	\N	\N	0
373	ECONOMÍA EMPRESARIAL	80007	\N	32	\N	\N	\N	\N	\N	\N	\N	0
374	TELEINFORMÁTICA	80007	\N	33	\N	\N	\N	\N	\N	\N	\N	0
375	SISTEMAS DE INFORMACIÓN II	80007	\N	34	\N	\N	\N	\N	\N	\N	\N	0
376	ESPACIO DE DEFINICIÓN INSTITUCIONAL III	80007	\N	35	\N	\N	\N	\N	\N	\N	\N	0
386	PRÁCTICA PROFESIONAL	80007	\N	45	\N	\N	\N	\N	\N	\N	\N	0
\.


--
-- Data for Name: correlativas; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY correlativas (correlativaid, materiaid1, materiaid2, planestudioid) FROM stdin;
2	16	1	1
3	31	16	1
4	17	1	1
6	32	1	1
7	19	4	1
8	34	18	1
10	35	3	1
12	21	6	1
15	22	7	1
17	23	8	1
\.


--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY cursos (cursoid, curso, codigo, nivel, "año", seccion, division, nivelid, personalid, ttp, subvencion, arancelbase, siguientegrupoid, orden) FROM stdin;
1	Primer Año (T)	1	6	1° Año	\N	\N	1	0	f	\N	\N	2	1
2	Segundo Año (T)	2	6	2° Año	\N	\N	1	0	f	\N	\N	3	2
3	Tercer Año (T)	3	6	3° Año	\N	\N	1	0	f	\N	\N	\N	3
\.


--
-- Data for Name: divisiones; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY divisiones (divisionid, division, codigo, cursoid, cicloid, numero, letra, turno, "año", sexo, id, boletinformularioid) FROM stdin;
1	1º A 2006	1A06	1	6	1	A	M	\N	\N	\N	\N
2	1º B 2006	1B06	1	6	1	B	M	\N	\N	\N	\N
3	1º C 2006	1C06	1	6	1	C	T	\N	\N	\N	\N
4	2º A 2006	2A06	2	6	2	A	M	\N	\N	\N	\N
5	2º B 2006	2B06	2	6	2	B	T	\N	\N	\N	\N
6	3º A 2006	3A06	3	6	3	A	M	\N	\N	\N	\N
7	3º B 2006	3B06	3	6	3	B	T	\N	\N	\N	\N
70001	1º A TM 2007	\N	1	7	1	A	M	\N	\N	1	\N
70002	1º B TM 2007	\N	1	7	1	B	M	\N	\N	2	\N
70003	1º C TT 2007	\N	1	7	1	C	T	\N	\N	3	\N
70004	2º A TM 2007	\N	2	7	2	A	M	\N	\N	4	\N
70005	2º B TT 2007	\N	2	7	2	B	T	\N	\N	5	\N
70006	3º A TM 2007	\N	3	7	3	A	M	\N	\N	6	\N
70007	3º B TT 2007	\N	3	7	3	B	T	\N	\N	7	\N
80001	1º A TM 2008	\N	1	8	1	A	M	\N	\N	1	\N
80002	1º B TM 2008	\N	1	8	1	B	M	\N	\N	2	\N
80003	1º C TT 2008	\N	1	8	1	C	T	\N	\N	3	\N
80004	2º A TM 2008	\N	2	8	2	A	M	\N	\N	4	\N
80005	2º B TT 2008	\N	2	8	2	B	T	\N	\N	5	\N
80006	3º A TM 2008	\N	3	8	3	A	M	\N	\N	6	\N
80007	3º B TT 2008	\N	3	8	3	B	T	\N	\N	7	\N
80008	4º A TM 2008	\N	4	8	4	A	M	\N	\N	8	\N
80009	4º B TT 2008	\N	4	8	4	B	T	\N	\N	9	\N
\.


--
-- Data for Name: examenes; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY examenes (examenid, materiaid, periodoid, llamado, turno, fecha, hora, personalid1, personalid2, personalid3, personalid4) FROM stdin;
1	1	30	1	N	\N	\N	\N	\N	0	\N
2	2	30	1	N	\N	\N	\N	\N	0	\N
3	17	30	1	N	\N	\N	\N	\N	0	\N
\.


--
-- Data for Name: faltas; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY faltas (faltaid, alumnoid, comisionid, inasistenciaid, fecha, cantidad, justificado, detalle, id, __xmin, web) FROM stdin;
\.


--
-- Data for Name: horarios; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY horarios (horarioid, horaid, dia, materiaid, detalle) FROM stdin;
\.


--
-- Data for Name: horas; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY horas (horaid, hora, desde, hasta, nivelid) FROM stdin;
501	1	1899-12-30	1899-12-30	5
502	2	1899-12-30	1899-12-30	5
503	3	1899-12-30	1899-12-30	5
504	4	1899-12-30	1899-12-30	5
505	5	1899-12-30	1899-12-30	5
506	6	1899-12-30	1899-12-30	5
507	7	1899-12-30	1899-12-30	5
401	1	1899-12-30	1899-12-30	4
402	2	1899-12-30	1899-12-30	4
403	3	1899-12-30	1899-12-30	4
404	4	1899-12-30	1899-12-30	4
405	5	1899-12-30	1899-12-30	4
406	6	1899-12-30	1899-12-30	4
\.


--
-- Data for Name: inasistencias; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY inasistencias (inasistenciaid, inasistencia, saf, tarde) FROM stdin;
1	Ausente	f	f
2	Clase	f	f
3	Tarde	f	f
4	Ed. Física	f	f
5	Ret. Anticip.	f	f
6	SAF	t	f
\.


--
-- Data for Name: inscripcionescomision; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY inscripcionescomision (inscripcionid, alumnoid, comisionid, alta, baja, condicion) FROM stdin;
3	118	278	2010-02-25	\N	\N
\.


--
-- Data for Name: inscripcionesdivision; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY inscripcionesdivision (inscripcionid, alumnoid, divisionid, alta, baja, condicion) FROM stdin;
31	442	80001	2008-09-06	\N	\N
32	443	80001	2008-09-06	\N	\N
33	444	80001	2008-09-06	\N	\N
34	445	80001	2008-09-06	\N	\N
35	446	80001	2008-09-06	\N	\N
36	447	80001	2008-09-06	\N	\N
37	448	80001	2008-09-06	\N	\N
38	449	80001	2008-09-06	\N	\N
39	450	80001	2008-09-06	\N	\N
40	451	80001	2008-09-06	\N	\N
41	452	80001	2008-09-06	\N	\N
42	453	80001	2008-09-06	\N	\N
43	454	80001	2008-09-06	\N	\N
44	455	80001	2008-09-06	\N	\N
45	456	80001	2008-09-06	\N	\N
46	295	80001	2008-09-06	\N	\N
47	457	80001	2008-09-06	\N	\N
48	149	80001	2008-09-06	\N	\N
49	458	80001	2008-09-06	\N	\N
50	459	80001	2008-09-06	\N	\N
51	460	80001	2008-09-06	\N	\N
52	461	80001	2008-09-06	\N	\N
53	462	80001	2008-09-06	\N	\N
54	463	80001	2008-09-06	\N	\N
55	464	80001	2008-09-06	\N	\N
56	465	80001	2008-09-06	\N	\N
57	466	80001	2008-09-06	\N	\N
58	467	80001	2008-09-06	\N	\N
59	468	80001	2008-09-06	\N	\N
60	412	80002	2008-09-06	\N	\N
61	413	80002	2008-09-06	\N	\N
62	414	80002	2008-09-06	\N	\N
63	415	80002	2008-09-06	\N	\N
64	416	80002	2008-09-06	\N	\N
65	417	80002	2008-09-06	\N	\N
66	418	80002	2008-09-06	\N	\N
67	419	80002	2008-09-06	\N	\N
68	420	80002	2008-09-06	\N	\N
69	421	80002	2008-09-06	\N	\N
70	422	80002	2008-09-06	\N	\N
71	423	80002	2008-09-06	\N	\N
72	424	80002	2008-09-06	\N	\N
73	425	80002	2008-09-06	\N	\N
74	426	80002	2008-09-06	\N	\N
75	427	80002	2008-09-06	\N	\N
76	428	80002	2008-09-06	\N	\N
77	429	80002	2008-09-06	\N	\N
78	430	80002	2008-09-06	\N	\N
79	431	80002	2008-09-06	\N	\N
80	432	80002	2008-09-06	\N	\N
81	433	80002	2008-09-06	\N	\N
82	434	80002	2008-09-06	\N	\N
83	435	80002	2008-09-06	\N	\N
84	436	80002	2008-09-06	\N	\N
85	437	80002	2008-09-06	\N	\N
86	438	80002	2008-09-06	\N	\N
87	439	80002	2008-09-06	\N	\N
88	469	80003	2008-09-06	\N	\N
89	470	80003	2008-09-06	\N	\N
90	471	80003	2008-09-06	\N	\N
91	472	80003	2008-09-06	\N	\N
92	473	80003	2008-09-06	\N	\N
93	474	80003	2008-09-06	\N	\N
94	475	80003	2008-09-06	\N	\N
95	476	80003	2008-09-06	\N	\N
96	477	80003	2008-09-06	\N	\N
97	478	80003	2008-09-06	\N	\N
98	479	80003	2008-09-06	\N	\N
99	480	80003	2008-09-06	\N	\N
100	481	80003	2008-09-06	\N	\N
101	482	80003	2008-09-06	\N	\N
102	483	80003	2008-09-06	\N	\N
103	397	80003	2008-09-06	\N	\N
104	484	80003	2008-09-06	\N	\N
105	485	80003	2008-09-06	\N	\N
106	486	80003	2008-09-06	\N	\N
107	487	80003	2008-09-06	\N	\N
108	488	80003	2008-09-06	\N	\N
109	489	80003	2008-09-06	\N	\N
110	490	80003	2008-09-06	\N	\N
111	491	80003	2008-09-06	\N	\N
112	492	80003	2008-09-06	\N	\N
113	368	80003	2008-09-06	\N	\N
114	493	80003	2008-09-06	\N	\N
115	494	80003	2008-09-06	\N	\N
116	495	80003	2008-09-06	\N	\N
117	496	80003	2008-09-06	\N	\N
118	497	80003	2008-09-06	\N	\N
119	498	80003	2008-09-06	\N	\N
120	325	80004	2008-09-06	\N	\N
121	327	80004	2008-09-06	\N	\N
122	328	80004	2008-09-06	\N	\N
123	14	80004	2008-09-06	\N	\N
124	384	80004	2008-09-06	\N	\N
125	329	80004	2008-09-06	\N	\N
126	84	80004	2008-09-06	\N	\N
127	331	80004	2008-09-06	\N	\N
128	332	80004	2008-09-06	\N	\N
129	333	80004	2008-09-06	\N	\N
130	334	80004	2008-09-06	\N	\N
131	335	80004	2008-09-06	\N	\N
132	336	80004	2008-09-06	\N	\N
133	337	80004	2008-09-06	\N	\N
134	25	80004	2008-09-06	\N	\N
135	339	80004	2008-09-06	\N	\N
136	340	80004	2008-09-06	\N	\N
137	341	80004	2008-09-06	\N	\N
138	342	80004	2008-09-06	\N	\N
139	386	80004	2008-09-06	\N	\N
140	499	80004	2008-09-06	\N	\N
141	344	80004	2008-09-06	\N	\N
142	345	80004	2008-09-06	\N	\N
143	346	80004	2008-09-06	\N	\N
144	389	80004	2008-09-06	\N	\N
145	347	80004	2008-09-06	\N	\N
146	500	80004	2008-09-06	\N	\N
147	348	80004	2008-09-06	\N	\N
148	391	80004	2008-09-06	\N	\N
149	356	80005	2008-09-06	\N	\N
150	43	80005	2008-09-06	\N	\N
151	357	80005	2008-09-06	\N	\N
152	395	80005	2008-09-06	\N	\N
153	396	80005	2008-09-06	\N	\N
154	44	80005	2008-09-06	\N	\N
155	45	80005	2008-09-06	\N	\N
156	399	80005	2008-09-06	\N	\N
157	401	80005	2008-09-06	\N	\N
158	402	80005	2008-09-06	\N	\N
159	101	80005	2008-09-06	\N	\N
160	364	80005	2008-09-06	\N	\N
161	365	80005	2008-09-06	\N	\N
162	405	80005	2008-09-06	\N	\N
163	406	80005	2008-09-06	\N	\N
164	369	80005	2008-09-06	\N	\N
165	370	80005	2008-09-06	\N	\N
166	371	80005	2008-09-06	\N	\N
167	372	80005	2008-09-06	\N	\N
168	407	80005	2008-09-06	\N	\N
169	408	80005	2008-09-06	\N	\N
170	373	80005	2008-09-06	\N	\N
171	114	80005	2008-09-06	\N	\N
172	376	80005	2008-09-06	\N	\N
173	377	80005	2008-09-06	\N	\N
174	10	80006	2008-09-06	\N	\N
175	80	80006	2008-09-06	\N	\N
176	81	80006	2008-09-06	\N	\N
177	83	80006	2008-09-06	\N	\N
178	17	80006	2008-09-06	\N	\N
179	20	80006	2008-09-06	\N	\N
180	85	80006	2008-09-06	\N	\N
181	86	80006	2008-09-06	\N	\N
182	259	80006	2008-09-06	\N	\N
183	23	80006	2008-09-06	\N	\N
184	88	80006	2008-09-06	\N	\N
185	89	80006	2008-09-06	\N	\N
186	90	80006	2008-09-06	\N	\N
187	91	80006	2008-09-06	\N	\N
188	32	80006	2008-09-06	\N	\N
189	501	80006	2008-09-06	\N	\N
190	46	80007	2008-09-06	\N	\N
191	47	80007	2008-09-06	\N	\N
192	48	80007	2008-09-06	\N	\N
193	51	80007	2008-09-06	\N	\N
194	52	80007	2008-09-06	\N	\N
195	53	80007	2008-09-06	\N	\N
196	298	80007	2008-09-06	\N	\N
197	183	80007	2008-09-06	\N	\N
198	56	80007	2008-09-06	\N	\N
199	104	80007	2008-09-06	\N	\N
200	60	80007	2008-09-06	\N	\N
201	106	80007	2008-09-06	\N	\N
202	65	80007	2008-09-06	\N	\N
203	67	80007	2008-09-06	\N	\N
204	188	80007	2008-09-06	\N	\N
205	282	80007	2008-09-06	\N	\N
206	110	80007	2008-09-06	\N	\N
207	300	80007	2008-09-06	\N	\N
208	111	80007	2008-09-06	\N	\N
209	112	80007	2008-09-06	\N	\N
210	113	80007	2008-09-06	\N	\N
211	195	80008	2008-09-06	\N	\N
212	125	80008	2008-09-06	\N	\N
213	126	80008	2008-09-06	\N	\N
214	128	80008	2008-09-06	\N	\N
215	130	80008	2008-09-06	\N	\N
216	131	80008	2008-09-06	\N	\N
217	132	80008	2008-09-06	\N	\N
218	133	80008	2008-09-06	\N	\N
219	134	80008	2008-09-06	\N	\N
220	135	80008	2008-09-06	\N	\N
221	136	80008	2008-09-06	\N	\N
222	204	80008	2008-09-06	\N	\N
223	138	80008	2008-09-06	\N	\N
224	139	80008	2008-09-06	\N	\N
225	142	80008	2008-09-06	\N	\N
226	143	80008	2008-09-06	\N	\N
227	292	80008	2008-09-06	\N	\N
228	144	80008	2008-09-06	\N	\N
229	304	80008	2008-09-06	\N	\N
230	147	80008	2008-09-06	\N	\N
231	148	80008	2008-09-06	\N	\N
232	149	80008	2008-09-06	\N	\N
233	150	80008	2008-09-06	\N	\N
234	152	80008	2008-09-06	\N	\N
235	154	80008	2008-09-06	\N	\N
236	155	80008	2008-09-06	\N	\N
237	163	80009	2008-09-06	\N	\N
238	230	80009	2008-09-06	\N	\N
239	164	80009	2008-09-06	\N	\N
240	165	80009	2008-09-06	\N	\N
241	166	80009	2008-09-06	\N	\N
242	305	80009	2008-09-06	\N	\N
243	167	80009	2008-09-06	\N	\N
244	168	80009	2008-09-06	\N	\N
245	169	80009	2008-09-06	\N	\N
246	172	80009	2008-09-06	\N	\N
247	173	80009	2008-09-06	\N	\N
248	175	80009	2008-09-06	\N	\N
249	176	80009	2008-09-06	\N	\N
250	178	80009	2008-09-06	\N	\N
251	179	80009	2008-09-06	\N	\N
252	180	80009	2008-09-06	\N	\N
253	276	80009	2008-09-06	\N	\N
254	182	80009	2008-09-06	\N	\N
255	183	80009	2008-09-06	\N	\N
256	240	80009	2008-09-06	\N	\N
257	185	80009	2008-09-06	\N	\N
258	186	80009	2008-09-06	\N	\N
259	280	80009	2008-09-06	\N	\N
260	281	80009	2008-09-06	\N	\N
261	187	80009	2008-09-06	\N	\N
262	282	80009	2008-09-06	\N	\N
263	502	80009	2008-09-06	\N	\N
\.


--
-- Data for Name: inscripcionesexamen; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY inscripcionesexamen (inscripcionid, alumnoid, examenid, condicion, alta, baja, confirmar, valido) FROM stdin;
1	4	1	R	2010-02-25	2010-02-25	f	f
2	4	2	R	2010-02-25	2010-02-25	f	f
3	4	1	R	2010-02-25	\N	f	f
4	4	2	R	2010-02-25	2010-02-25	f	f
\.


--
-- Data for Name: materias; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY materias (materiaid, materia, resumen, cursoid, catedraid, codigo, orden, optativa, sexo, analitico, requerida) FROM stdin;
1	ALGEBRA	\N	1	\N	c1m01	1	f	\N	\N	t
2	ANÁLISIS MATEMÁTICO	\N	1	\N	c1m02	2	f	\N	\N	t
3	INGLÉS TÉCNICO	\N	1	\N	c1m03	3	f	\N	\N	t
4	ADMINISTRACIÓN DE LAS ORGANIZACIONES	\N	1	\N	c1m04	4	f	\N	\N	t
5	METODOLOGÍA DE LA INVESTIGACIÓN	\N	1	\N	c1m05	5	f	\N	\N	t
6	PROGRAMACIÓN I	\N	1	\N	c1m06	6	f	\N	\N	t
7	INTRODUCCIÓN A LOS SISTEMAS DE INFORMACIÓN	\N	1	\N	c1m07	7	f	\N	\N	t
8	ARQUITECTURA DE COMPUTADORES	\N	1	\N	c1m08	8	f	\N	\N	t
9	ESPACIO DE DEFINICIÓN INSTITUCIONAL I	\N	1	\N	c1m09	9	f	\N	\N	t
16	PROBABILIDAD Y ESTADÍSTICAS	\N	2	\N	c2m01	1	f	\N	\N	t
17	ANÁLISIS MATEMÁTICO II	\N	2	\N	c2m02	2	f	\N	\N	t
18	INGLÉS TÉCNICO II	\N	2	\N	c2m03	3	f	\N	\N	t
19	SISTEMAS DE INFORMACIÓN I	\N	2	\N	c2m04	4	f	\N	\N	t
20	PROGRAMACIÓN II	\N	2	\N	c2m05	5	f	\N	\N	t
21	SISTEMAS OPERATIVOS	\N	2	\N	c2m06	6	f	\N	\N	t
22	BASES DE DATOS	\N	2	\N	c2m07	7	f	\N	\N	t
23	ESPACIO DE DEFINICIÓN INSTITUCIONAL II	\N	2	\N	c2m08	8	f	\N	\N	t
31	INVESTIGACIÓN OPERATIVA	\N	3	\N	c3m01	1	f	\N	\N	t
32	ECONOMÍA EMPRESARIAL	\N	3	\N	c3m02	2	f	\N	\N	t
33	TELEINFORMÁTICA	\N	3	\N	c3m03	3	f	\N	\N	t
34	SISTEMAS DE INFORMACIÓN II	\N	3	\N	c3m04	4	f	\N	\N	t
35	ESPACIO DE DEFINICIÓN INSTITUCIONAL III	\N	3	\N	c3m06	6	f	\N	\N	t
45	PRÁCTICA PROFESIONAL	\N	3	\N	c3m05	5	f	\N	\N	t
\.


--
-- Data for Name: niveles; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY niveles (nivelid, nivel, ciclo, tipo, personalid) FROM stdin;
1	Terciario	0	0	10
\.


--
-- Data for Name: notas; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY notas (notaid, alumnoid, materiaid, periodoid, calificacionid, nota, descripcion, establecimiento, observaciones, fecha, libro, folio, alta, id, __xmin, web, turno) FROM stdin;
45633	2	1	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45634	2	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45635	2	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45636	2	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45637	2	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45638	2	6	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45639	2	7	1	5	7.79	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45640	2	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45641	2	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45648	3	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45649	3	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45650	3	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45651	3	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45652	3	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45653	3	6	1	5	7.6700001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45654	3	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45655	3	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45656	3	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45663	4	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45664	4	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45665	4	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45666	4	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45667	4	5	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45668	4	6	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45669	4	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45670	4	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45671	4	9	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45678	5	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45679	5	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45680	5	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45681	5	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45682	5	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45683	5	6	1	5	8.21	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45684	5	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45685	5	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45686	5	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45693	9	1	1	5	9.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45694	9	2	1	5	8.5600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45695	9	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45696	9	4	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45697	9	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45698	9	6	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45699	9	7	1	5	7.73	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45700	9	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45701	9	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45708	10	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45709	10	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45710	10	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45711	10	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45712	10	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45713	10	6	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45714	10	7	1	5	7.6700001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45715	10	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45716	10	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45723	11	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45724	11	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45725	11	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45726	11	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45727	11	5	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45728	11	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45729	11	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45730	11	8	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45731	11	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45738	12	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45739	12	2	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45740	12	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45741	12	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45742	12	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45743	12	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45744	12	7	1	5	8.6899996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45745	12	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45746	12	9	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45753	13	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45754	13	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45755	13	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45756	13	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45757	13	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45758	13	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45759	13	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45760	13	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45761	13	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45768	14	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45769	14	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45770	14	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45771	14	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45772	14	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45773	14	6	1	5	7.04	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45774	14	7	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45775	14	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45776	14	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45783	15	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45784	15	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45785	15	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45786	15	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45787	15	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45788	15	6	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45789	15	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45790	15	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45791	15	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45798	17	1	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45799	17	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45800	17	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45801	17	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45802	17	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45803	17	6	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45804	17	7	1	5	7.0799999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45805	17	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45806	17	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45813	18	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45814	18	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45815	18	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45816	18	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45817	18	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45818	18	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45819	18	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45820	18	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45821	18	9	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45828	19	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45829	19	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45830	19	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45831	19	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45832	19	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45833	19	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45834	19	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45835	19	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45836	19	9	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45843	20	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45844	20	2	1	5	7.5599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45845	20	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45846	20	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45847	20	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45848	20	6	1	5	8.9200001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45849	20	7	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45850	20	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45851	20	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45858	21	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45859	21	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45860	21	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45861	21	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45862	21	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45863	21	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45864	21	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45865	21	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45866	21	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45873	22	1	1	5	1.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45874	22	2	1	5	5.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45875	22	3	1	5	1	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45876	22	4	1	5	3	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45877	22	5	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45878	22	6	1	5	6.29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45879	22	7	1	5	4.71	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45880	22	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45881	22	9	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45888	23	1	1	5	9.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45889	23	2	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45890	23	3	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45891	23	4	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45892	23	5	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45893	23	6	1	5	8.6700001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45894	23	7	1	5	8.04	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45895	23	8	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45896	23	9	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45903	24	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45904	24	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45905	24	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45906	24	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45907	24	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45908	24	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45909	24	7	1	5	7.04	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45910	24	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45911	24	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45918	25	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45919	25	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45920	25	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45921	25	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45922	25	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45923	25	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45924	25	7	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45925	25	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45926	25	9	1	5	6.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45933	28	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45934	28	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45935	28	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45936	28	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45937	28	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45938	28	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45939	28	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45940	28	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45941	28	9	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45948	30	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45949	30	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45950	30	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45951	30	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45952	30	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45953	30	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45954	30	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45955	30	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45956	30	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45963	32	1	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45964	32	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45965	32	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45966	32	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45967	32	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45968	32	6	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45969	32	7	1	5	7.6700001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45970	32	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45971	32	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45978	44	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45979	44	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45980	44	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45981	44	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45982	44	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45983	44	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45984	44	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45985	44	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45986	44	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45993	45	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45994	45	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45995	45	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45996	45	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45997	45	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45998	45	6	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
45999	45	7	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46000	45	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46001	45	9	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46008	46	1	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46009	46	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46010	46	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46011	46	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46012	46	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46013	46	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46014	46	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46015	46	8	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46016	46	9	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46023	47	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46024	47	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46025	47	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46026	47	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46027	47	5	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46028	47	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46029	47	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46030	47	8	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46031	47	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46038	48	1	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46039	48	2	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46040	48	3	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46041	48	4	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46042	48	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46043	48	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46044	48	7	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46045	48	8	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46046	48	9	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46053	51	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46054	51	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46055	51	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46056	51	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46057	51	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46058	51	6	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46059	51	7	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46060	51	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46061	51	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46068	52	1	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46069	52	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46070	52	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46071	52	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46072	52	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46073	52	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46074	52	7	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46075	52	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46076	52	9	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46083	53	1	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46084	53	2	1	5	7.1900001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46085	53	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46086	53	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46087	53	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46088	53	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46089	53	7	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46090	53	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46091	53	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46098	55	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46099	55	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46100	55	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46101	55	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46102	55	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46103	55	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46104	55	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46105	55	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46106	55	9	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46113	56	1	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46114	56	2	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46115	56	3	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46116	56	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46117	56	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46118	56	6	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46119	56	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46120	56	8	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46121	56	9	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46128	59	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46129	59	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46130	59	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46131	59	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46132	59	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46133	59	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46134	59	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46135	59	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46136	59	9	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46143	60	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46144	60	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46145	60	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46146	60	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46147	60	5	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46148	60	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46149	60	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46150	60	8	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46151	60	9	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46158	61	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46159	61	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46160	61	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46161	61	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46162	61	5	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46163	61	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46164	61	7	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46165	61	8	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46166	61	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46173	62	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46174	62	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46175	62	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46176	62	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46177	62	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46178	62	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46179	62	7	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46180	62	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46181	62	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46188	63	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46189	63	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46190	63	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46191	63	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46192	63	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46193	63	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46194	63	7	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46195	63	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46196	63	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46203	65	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46204	65	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46205	65	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46206	65	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46207	65	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46208	65	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46209	65	7	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46210	65	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46211	65	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46218	67	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46219	67	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46220	67	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46221	67	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46222	67	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46223	67	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46224	67	7	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46225	67	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46226	67	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46233	69	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46234	69	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46235	69	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46236	69	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46237	69	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46238	69	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46239	69	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46240	69	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46241	69	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46248	71	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46249	71	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46250	71	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46251	71	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46252	71	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46253	71	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46254	71	7	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46255	71	8	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46256	71	9	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46263	74	1	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46264	74	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46265	74	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46266	74	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46267	74	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46268	74	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46269	74	7	1	5	7.1599998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46270	74	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46271	74	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46278	75	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46279	75	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46280	75	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46281	75	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46282	75	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46283	75	6	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46284	75	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46285	75	8	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46286	75	9	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46293	76	1	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46294	76	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46295	76	3	1	5	7.9299998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46296	76	4	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46297	76	5	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46298	76	6	1	5	9.3100004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46299	76	7	1	5	7.9499998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46300	76	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46301	76	9	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46308	77	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46309	77	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46310	77	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46311	77	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46312	77	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46313	77	6	1	5	7.5599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46314	77	7	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46315	77	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46316	77	9	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46323	78	1	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46324	78	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46325	78	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46326	78	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46327	78	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46328	78	6	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46329	78	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46330	78	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46331	78	9	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46338	79	1	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46339	79	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46340	79	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46341	79	4	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46342	79	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46343	79	6	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46344	79	7	1	5	8.04	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46345	79	8	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46346	79	9	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46353	80	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46354	80	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46355	80	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46356	80	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46357	80	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46358	80	6	1	5	7.9299998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46359	80	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46360	80	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46361	80	9	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46368	81	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46369	81	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46370	81	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46371	81	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46372	81	5	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46373	81	6	1	5	7.6799998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46374	81	7	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46375	81	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46376	81	9	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46383	82	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46384	82	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46385	82	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46386	82	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46387	82	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46388	82	6	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46389	82	7	1	5	7.02	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46390	82	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46391	82	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46398	83	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46399	83	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46400	83	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46401	83	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46402	83	5	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46403	83	6	1	5	7.4299998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46404	83	7	1	5	7.04	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46405	83	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46406	83	9	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46413	84	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46414	84	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46415	84	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46416	84	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46417	84	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46418	84	6	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46419	84	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46420	84	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46421	84	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46428	85	1	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46429	85	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46430	85	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46431	85	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46432	85	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46433	85	6	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46434	85	7	1	5	7.4099998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46435	85	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46436	85	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46443	86	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46444	86	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46445	86	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46446	86	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46447	86	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46448	86	6	1	5	7.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46449	86	7	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46450	86	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46451	86	9	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46458	87	1	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46459	87	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46460	87	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46461	87	4	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46462	87	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46463	87	6	1	5	9.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46464	87	7	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46465	87	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46466	87	9	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46473	88	1	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46474	88	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46475	88	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46476	88	4	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46477	88	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46478	88	6	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46479	88	7	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46480	88	8	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46481	88	9	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46488	89	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46489	89	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46490	89	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46491	89	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46492	89	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46493	89	6	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46494	89	7	1	5	7.77	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46495	89	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46496	89	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46503	90	1	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46504	90	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46505	90	3	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46506	90	4	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46507	90	5	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46508	90	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46509	90	7	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46510	90	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46511	90	9	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46518	91	1	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46519	91	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46520	91	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46521	91	4	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46522	91	5	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46523	91	6	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46524	91	7	1	5	7.9299998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46525	91	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46526	91	9	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46533	92	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46534	92	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46535	92	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46536	92	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46537	92	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46538	92	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46539	92	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46540	92	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46541	92	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46548	94	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46549	94	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46550	94	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46551	94	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46552	94	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46553	94	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46554	94	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46555	94	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46556	94	9	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46563	97	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46564	97	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46565	97	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46566	97	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46567	97	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46568	97	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46569	97	7	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46570	97	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46571	97	9	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46578	98	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46579	98	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46580	98	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46581	98	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46582	98	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46583	98	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46584	98	7	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46585	98	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46586	98	9	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46593	101	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46594	101	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46595	101	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46596	101	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46597	101	5	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46598	101	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46599	101	7	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46600	101	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46601	101	9	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46608	102	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46609	102	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46610	102	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46611	102	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46612	102	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46613	102	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46614	102	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46615	102	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46616	102	9	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46623	103	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46624	103	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46625	103	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46626	103	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46627	103	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46628	103	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46629	103	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46630	103	8	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46631	103	9	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46638	104	1	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46639	104	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46640	104	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46641	104	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46642	104	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46643	104	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46644	104	7	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46645	104	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46646	104	9	1	5	8.5600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46653	105	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46654	105	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46655	105	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46656	105	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46657	105	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46658	105	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46659	105	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46660	105	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46661	105	9	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46668	106	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46669	106	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46670	106	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46671	106	4	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46672	106	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46673	106	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46674	106	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46675	106	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46676	106	9	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46683	109	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46684	109	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46685	109	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46686	109	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46687	109	5	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46688	109	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46689	109	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46690	109	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46691	109	9	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46698	110	1	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46699	110	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46700	110	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46701	110	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46702	110	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46703	110	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46704	110	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46705	110	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46706	110	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46713	111	1	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46714	111	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46715	111	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46716	111	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46717	111	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46718	111	6	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46719	111	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46720	111	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46721	111	9	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46728	112	1	1	5	9.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46729	112	2	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46730	112	3	1	5	7.8099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46731	112	4	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46732	112	5	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46733	112	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46734	112	7	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46735	112	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46736	112	9	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46743	113	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46744	113	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46745	113	8	1	5	6.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46747	114	1	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46748	114	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46749	114	3	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46750	114	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46751	114	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46752	114	6	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46753	114	7	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46754	114	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46755	114	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46762	115	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46763	115	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46764	115	3	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46765	115	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46766	115	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46767	115	6	1	5	7.1900001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46768	115	7	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46769	115	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46770	115	9	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46777	115	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46778	115	17	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46779	115	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46780	115	19	1	5	7.5599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46781	115	20	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46782	115	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46783	115	22	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46784	115	23	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46791	116	1	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46792	116	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46793	116	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46794	116	4	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46795	116	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46796	116	6	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46797	116	7	1	5	9.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46798	116	8	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46799	116	9	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46806	116	16	1	5	7.1700001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46807	116	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46808	116	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46809	116	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46810	116	20	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46811	116	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46812	116	22	1	5	8.5600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46813	116	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46820	117	1	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46821	117	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46822	117	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46823	117	4	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46824	117	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46825	117	6	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46826	117	7	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46827	117	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46828	117	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46835	117	16	1	5	7.3499999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46836	117	17	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46837	117	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46838	117	19	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46839	117	20	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46840	117	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46841	117	22	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46842	117	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46849	118	1	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46850	118	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46851	118	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46852	118	4	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46853	118	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46854	118	6	1	5	8.9399996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46855	118	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46856	118	8	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46857	118	9	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46864	118	16	1	5	8.6899996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46865	118	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46866	118	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46867	118	19	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46868	118	20	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46869	118	21	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46870	118	22	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46871	118	23	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46878	119	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46879	119	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46880	119	3	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46881	119	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46882	119	5	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46883	119	6	1	5	7.27	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46884	119	7	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46885	119	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46886	119	9	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46893	119	16	1	5	7.27	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46894	119	19	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46895	120	1	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46896	120	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46897	120	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46898	120	4	1	5	7.1900001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46899	120	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46900	120	6	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46901	120	7	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46902	120	8	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46903	120	9	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46910	120	16	1	5	7.27	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46911	120	17	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46912	120	18	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46913	120	19	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46914	120	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46915	120	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46916	120	22	1	5	9.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46917	120	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46924	121	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46925	121	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46926	121	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46927	121	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46928	121	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46929	121	6	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46930	121	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46931	121	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46932	121	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46939	121	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46940	121	17	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46941	121	18	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46942	121	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46943	121	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46944	121	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46945	121	22	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46946	121	23	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46953	122	1	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46954	122	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46955	122	3	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46956	122	4	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46957	122	5	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46958	122	6	1	5	9.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46959	122	7	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46960	122	8	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46961	122	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46968	122	16	1	5	8.5100002	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46969	122	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46970	122	18	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46971	122	19	1	5	7.9299998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46972	122	20	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46973	122	21	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46974	122	22	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46975	122	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46982	123	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46983	123	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46984	123	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46985	123	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46986	123	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46987	123	6	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46988	123	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46989	123	8	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46990	123	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46997	123	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46998	123	17	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
46999	123	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47000	123	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47001	123	20	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47002	123	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47003	123	22	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47004	123	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47011	124	1	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47012	124	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47013	124	3	1	5	7.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47014	124	4	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47015	124	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47016	124	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47017	124	7	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47018	124	8	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47019	124	9	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47026	124	16	1	5	7.5700002	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47027	124	17	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47028	124	18	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47029	124	19	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47030	124	20	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47031	124	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47032	124	22	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47033	124	23	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47040	125	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47041	125	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47042	125	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47043	125	4	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47044	125	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47045	125	6	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47046	125	7	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47047	125	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47048	125	9	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47055	125	16	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47056	125	17	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47057	125	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47058	125	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47059	125	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47060	125	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47061	125	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47062	125	23	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47069	126	1	1	5	8.5600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47070	126	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47071	126	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47072	126	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47073	126	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47074	126	6	1	5	7.9400001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47075	126	7	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47076	126	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47077	126	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47084	126	16	1	5	7.3600001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47085	126	17	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47086	126	18	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47087	126	19	1	5	7.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47088	126	20	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47089	126	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47090	126	22	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47091	126	23	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47098	128	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47099	128	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47100	128	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47101	128	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47102	128	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47103	128	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47104	128	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47105	128	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47106	128	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47113	128	16	1	5	7.0999999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47114	128	17	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47115	128	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47116	128	19	1	5	7.1799998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47117	128	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47118	128	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47119	128	22	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47120	128	23	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47127	129	1	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47128	129	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47129	129	3	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47130	129	4	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47131	129	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47132	129	6	1	5	8.9399996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47133	129	7	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47134	129	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47135	129	9	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47142	129	16	1	5	0	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47143	130	1	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47144	130	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47145	130	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47146	130	4	1	5	7.9400001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47147	130	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47148	130	6	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47149	130	7	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47150	130	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47151	130	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47158	130	16	1	5	8.1800003	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47159	130	17	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47160	130	18	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47161	130	19	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47162	130	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47163	130	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47164	130	22	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47165	130	23	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47172	131	1	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47173	131	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47174	131	3	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47175	131	4	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47176	131	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47177	131	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47178	131	7	1	5	9.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47179	131	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47180	131	9	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47187	131	16	1	5	8.9200001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47188	131	17	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47189	131	18	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47190	131	19	1	5	7.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47191	131	20	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47192	131	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47193	131	22	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47194	131	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47201	132	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47202	132	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47203	132	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47204	132	4	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47205	132	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47206	132	6	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47207	132	7	1	5	9.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47208	132	8	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47209	132	9	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47216	132	16	1	5	7.9200001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47217	132	17	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47218	132	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47219	132	19	1	5	7.6799998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47220	132	20	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47221	132	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47222	132	22	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47223	132	23	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47230	133	1	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47231	133	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47232	133	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47233	133	4	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47234	133	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47235	133	6	1	5	7.4400001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47236	133	7	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47237	133	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47238	133	9	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47245	133	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47246	133	17	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47247	133	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47248	133	19	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47249	133	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47250	133	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47251	133	22	1	5	7.1799998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47252	133	23	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47259	134	1	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47260	134	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47261	134	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47262	134	4	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47263	134	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47264	134	6	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47265	134	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47266	134	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47267	134	9	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47274	134	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47275	134	17	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47276	134	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47277	134	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47278	134	20	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47279	134	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47280	134	22	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47281	134	23	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47288	135	1	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47289	135	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47290	135	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47291	135	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47292	135	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47293	135	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47294	135	7	1	5	8.3199997	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47295	135	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47296	135	9	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47303	135	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47304	135	17	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47305	135	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47306	135	19	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47307	135	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47308	135	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47309	135	22	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47310	135	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47317	136	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47318	136	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47319	136	3	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47320	136	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47321	136	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47322	136	6	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47323	136	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47324	136	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47325	136	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47332	136	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47333	136	17	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47334	136	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47335	136	19	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47336	136	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47337	136	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47338	136	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47339	136	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47346	137	1	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47347	137	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47348	137	3	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47349	137	4	1	5	7.8099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47350	137	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47351	137	6	1	5	7.6900001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47352	137	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47353	137	8	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47354	137	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47361	137	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47362	137	17	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47363	137	18	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47364	137	19	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47365	137	20	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47366	137	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47367	137	22	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47368	137	23	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47375	138	1	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47376	138	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47377	138	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47378	138	4	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47379	138	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47380	138	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47381	138	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47382	138	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47383	138	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47390	138	16	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47391	138	17	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47392	138	18	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47393	138	19	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47394	138	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47395	138	21	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47396	138	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47397	138	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47404	139	1	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47405	139	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47406	139	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47407	139	4	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47408	139	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47409	139	6	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47410	139	7	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47411	139	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47412	139	9	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47419	139	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47420	139	17	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47421	139	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47422	139	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47423	139	20	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47424	139	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47425	139	22	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47426	139	23	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47433	140	1	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47434	140	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47435	140	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47436	140	4	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47437	140	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47438	140	6	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47439	140	7	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47440	140	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47441	140	9	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47448	140	16	1	5	7.9699998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47449	140	17	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47450	140	18	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47451	140	19	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47452	140	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47453	140	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47454	140	22	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47455	140	23	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47462	142	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47463	142	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47464	142	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47465	142	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47466	142	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47467	142	6	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47468	142	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47469	142	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47470	142	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47477	142	16	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47478	142	17	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47479	142	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47480	142	19	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47481	142	20	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47482	142	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47483	142	22	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47484	142	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47491	143	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47492	143	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47493	143	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47494	143	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47495	143	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47496	143	6	1	5	8.5600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47497	143	7	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47498	143	8	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47499	143	9	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47506	143	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47507	143	17	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47508	143	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47509	143	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47510	143	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47511	143	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47512	143	22	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47513	143	23	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47520	144	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47521	144	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47522	144	3	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47523	144	4	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47524	144	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47525	144	6	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47526	144	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47527	144	8	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47528	144	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47535	144	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47536	144	17	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47537	144	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47538	144	19	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47539	144	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47540	144	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47541	144	22	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47542	144	23	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47549	145	1	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47550	145	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47551	145	3	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47552	145	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47553	145	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47554	145	6	1	5	7.8099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47555	145	7	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47556	145	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47557	145	9	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47564	145	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47565	145	17	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47566	145	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47567	145	19	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47568	145	20	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47569	145	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47570	145	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47571	145	23	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47578	147	1	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47579	147	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47580	147	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47581	147	4	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47582	147	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47583	147	6	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47584	147	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47585	147	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47586	147	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47593	147	16	1	5	8.8599997	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47594	147	17	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47595	147	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47596	147	19	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47597	147	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47598	147	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47599	147	22	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47600	147	23	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47607	148	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47608	148	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47609	148	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47610	148	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47611	148	5	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47612	148	6	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47613	148	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47614	148	8	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47615	148	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47622	148	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47623	148	17	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47624	148	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47625	148	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47626	148	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47627	148	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47628	148	22	1	5	7.1799998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47629	148	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47636	149	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47637	149	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47638	149	3	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47639	149	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47640	149	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47641	149	6	1	5	8.0600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47642	149	7	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47643	149	8	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47644	149	9	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47651	149	16	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47652	149	17	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47653	149	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47654	149	19	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47655	149	20	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47656	149	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47657	149	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47658	149	23	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47665	150	1	1	5	8.6899996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47666	150	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47667	150	3	1	5	7.48	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47668	150	4	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47669	150	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47670	150	6	1	5	9.8100004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47671	150	7	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47672	150	8	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47673	150	9	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47680	150	16	1	5	9.1000004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47681	150	17	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47682	150	18	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47683	150	19	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47684	150	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47685	150	21	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47686	150	22	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47687	150	23	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47694	151	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47695	151	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47696	151	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47697	151	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47698	151	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47699	151	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47700	151	7	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47701	151	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47702	151	9	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47709	151	16	1	5	7.1100001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47710	151	17	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47711	151	18	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47712	151	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47713	151	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47714	151	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47715	151	22	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47716	151	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47723	152	1	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47724	152	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47725	152	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47726	152	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47727	152	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47728	152	6	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47729	152	7	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47730	152	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47731	152	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47738	152	16	1	5	8.1099997	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47739	152	17	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47740	152	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47741	152	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47742	152	20	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47743	152	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47744	152	22	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47745	152	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47752	153	1	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47753	153	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47754	153	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47755	153	4	1	5	7.5599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47756	153	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47757	153	6	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47758	153	7	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47759	153	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47760	153	9	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47767	153	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47768	153	17	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47769	153	18	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47770	153	19	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47771	153	20	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47772	153	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47773	153	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47774	153	23	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47781	154	1	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47782	154	2	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47783	154	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47784	154	4	1	5	8.5600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47785	154	5	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47786	154	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47787	154	7	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47788	154	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47789	154	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47795	154	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47796	154	17	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47797	154	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47798	154	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47799	154	20	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47800	154	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47801	154	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47802	154	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47809	155	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47810	155	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47811	155	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47812	155	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47813	155	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47814	155	6	1	5	7.1900001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47815	155	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47816	155	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47817	155	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47824	155	16	1	5	7.0900002	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47825	155	17	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47826	155	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47827	155	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47828	155	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47829	155	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47830	155	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47831	155	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47838	156	1	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47839	156	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47840	156	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47841	156	4	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47842	156	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47843	156	6	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47844	156	7	1	5	8.1700001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47845	156	8	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47846	156	9	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47853	156	16	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47854	156	17	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47855	156	18	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47856	156	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47857	156	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47858	156	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47859	156	22	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47860	156	23	1	5	7.5999999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47867	157	1	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47868	157	2	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47869	157	3	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47870	157	4	1	5	7.9400001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47871	157	5	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47872	157	6	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47873	157	7	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47874	157	8	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47875	157	9	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47882	157	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47883	157	17	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47884	157	18	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47885	157	19	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47886	157	20	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47887	157	21	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47888	157	22	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47889	157	23	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47896	158	1	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47897	158	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47898	158	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47899	158	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47900	158	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47901	158	6	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47902	158	7	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47903	158	8	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47904	158	9	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47911	158	16	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47912	158	17	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47913	158	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47914	158	19	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47915	158	20	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47916	158	21	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47917	158	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47918	158	23	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47925	159	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47926	159	2	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47927	159	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47928	159	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47929	159	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47930	159	6	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47931	159	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47932	159	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47933	159	9	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47940	159	16	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47941	159	17	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47942	159	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47943	159	19	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47944	159	20	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47945	159	21	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47946	159	22	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47947	159	23	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47954	160	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47955	160	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47956	160	3	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47957	160	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47958	160	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47959	160	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47960	160	7	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47961	160	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47962	160	9	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47969	160	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47970	160	17	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47971	160	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47972	160	19	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47973	160	20	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47974	160	21	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47975	160	22	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47976	160	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47983	161	1	1	5	7.6900001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47984	161	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47985	161	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47986	161	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47987	161	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47988	161	6	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47989	161	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47990	161	8	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47991	161	9	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47998	161	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
47999	161	17	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48000	161	18	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48001	161	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48002	161	20	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48003	161	21	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48004	161	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48005	161	23	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48012	162	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48013	162	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48014	162	3	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48015	162	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48016	162	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48017	162	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48018	162	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48019	162	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48020	162	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48027	162	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48028	162	17	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48029	162	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48030	162	19	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48031	162	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48032	162	21	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48033	162	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48034	162	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48041	163	1	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48042	163	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48043	163	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48044	163	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48045	163	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48046	163	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48047	163	7	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48048	163	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48049	163	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48056	163	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48057	163	17	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48058	163	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48059	163	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48060	163	20	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48061	163	21	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48062	163	22	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48063	163	23	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48070	164	1	1	5	7.8099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48071	164	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48072	164	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48073	164	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48074	164	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48075	164	6	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48076	164	7	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48077	164	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48078	164	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48085	164	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48086	164	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48087	164	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48088	164	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48089	164	20	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48090	164	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48091	164	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48092	164	23	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48099	165	1	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48100	165	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48101	165	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48102	165	4	1	5	8.6899996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48103	165	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48104	165	6	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48105	165	7	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48106	165	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48107	165	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48114	165	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48115	165	17	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48116	165	18	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48117	165	19	1	5	7.0300002	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48118	165	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48119	165	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48120	165	22	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48121	165	23	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48128	166	1	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48129	166	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48130	166	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48131	166	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48132	166	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48133	166	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48134	166	7	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48135	166	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48136	166	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48143	166	16	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48144	166	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48145	166	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48146	166	19	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48147	166	20	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48148	166	21	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48149	166	22	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48150	166	23	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48157	167	1	1	5	7.6900001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48158	167	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48159	167	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48160	167	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48161	167	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48162	167	6	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48163	167	7	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48164	167	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48165	167	9	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48172	167	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48173	167	17	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48174	167	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48175	167	19	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48176	167	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48177	167	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48178	167	22	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48179	167	23	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48186	168	1	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48187	168	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48188	168	3	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48189	168	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48190	168	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48191	168	6	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48192	168	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48193	168	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48194	168	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48201	168	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48202	168	17	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48203	168	18	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48204	168	19	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48205	168	20	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48206	168	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48207	168	22	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48208	168	23	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48215	169	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48216	169	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48217	169	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48218	169	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48219	169	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48220	169	6	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48221	169	7	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48222	169	8	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48223	169	9	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48230	169	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48231	169	17	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48232	169	18	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48233	169	19	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48234	169	20	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48235	169	21	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48236	169	22	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48237	169	23	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48244	170	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48245	170	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48246	170	3	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48247	170	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48248	170	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48249	170	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48250	170	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48251	170	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48252	170	9	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48259	170	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48260	170	17	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48261	170	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48262	170	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48263	170	20	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48264	170	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48265	170	22	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48266	170	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48273	171	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48275	171	16	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48276	171	17	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48277	171	18	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48278	171	19	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48279	171	20	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48280	171	21	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48281	171	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48282	171	23	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48289	172	1	1	5	8.5600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48290	172	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48291	172	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48292	172	4	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48293	172	5	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48294	172	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48295	172	7	1	5	9.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48296	172	8	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48297	172	9	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48304	172	16	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48305	172	17	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48306	172	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48307	172	19	1	5	7.6799998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48308	172	20	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48309	172	21	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48310	172	22	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48311	172	23	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48318	173	1	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48319	173	2	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48320	173	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48321	173	4	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48322	173	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48323	173	6	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48324	173	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48325	173	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48326	173	9	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48333	173	16	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48334	173	17	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48335	173	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48336	173	19	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48337	173	20	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48338	173	21	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48339	173	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48340	173	23	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48347	175	1	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48348	175	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48349	175	3	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48350	175	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48351	175	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48352	175	6	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48353	175	7	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48354	175	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48355	175	9	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48362	175	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48363	175	17	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48364	175	18	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48365	175	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48366	175	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48367	175	21	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48368	175	22	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48369	175	23	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48376	176	1	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48377	176	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48378	176	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48379	176	4	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48380	176	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48381	176	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48382	176	7	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48383	176	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48384	176	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48391	176	16	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48392	176	17	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48393	176	18	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48394	176	19	1	5	7.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48395	176	20	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48396	176	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48397	176	22	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48398	176	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48405	177	1	1	5	7.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48406	177	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48407	177	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48408	177	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48409	177	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48410	177	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48411	177	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48412	177	8	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48413	177	9	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48420	177	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48421	177	17	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48422	177	18	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48423	177	19	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48424	177	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48425	177	21	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48426	177	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48427	177	23	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48434	178	1	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48435	178	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48436	178	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48437	178	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48438	178	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48439	178	6	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48440	178	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48441	178	8	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48442	178	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48449	178	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48450	178	17	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48451	178	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48452	178	19	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48453	178	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48454	178	21	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48455	178	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48456	178	23	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48463	179	1	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48464	179	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48465	179	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48466	179	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48467	179	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48468	179	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48469	179	7	1	5	8.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48470	179	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48471	179	9	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48478	179	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48479	179	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48480	179	18	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48481	179	19	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48482	179	20	1	5	10	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48483	179	21	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48484	179	22	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48485	179	23	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48492	180	1	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48493	180	2	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48494	180	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48495	180	4	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48496	180	5	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48497	180	6	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48498	180	7	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48499	180	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48500	180	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48507	180	16	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48508	180	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48509	180	18	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48510	180	19	1	5	7.4299998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48511	180	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48512	180	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48513	180	22	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48514	180	23	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48521	181	1	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48522	181	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48523	181	3	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48524	181	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48525	181	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48526	181	6	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48527	181	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48528	181	8	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48529	181	9	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48536	181	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48537	181	17	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48538	181	18	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48539	181	19	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48540	181	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48541	181	21	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48542	181	22	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48543	181	23	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48550	182	1	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48551	182	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48552	182	3	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48553	182	4	1	5	8.3900003	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48554	182	5	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48555	182	6	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48556	182	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48557	182	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48558	182	9	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48565	182	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48566	182	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48567	182	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48568	182	19	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48569	182	20	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48570	182	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48571	182	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48572	182	23	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48579	183	1	1	5	8.1599998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48580	183	2	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48581	183	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48582	183	4	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48583	183	5	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48584	183	6	1	5	6.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48585	183	7	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48586	183	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48587	183	9	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48594	183	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48595	183	17	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48596	183	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48597	183	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48598	183	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48599	183	21	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48600	183	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48601	183	23	1	5	6.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48608	184	1	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48609	184	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48610	184	3	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48611	184	4	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48612	184	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48613	184	6	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48614	184	7	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48615	184	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48616	184	9	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48623	184	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48624	184	17	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48625	184	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48626	184	19	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48627	184	20	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48628	184	21	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48629	184	22	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48630	184	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48637	185	1	1	5	8.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48638	185	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48639	185	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48640	185	4	1	5	7.8099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48641	185	5	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48642	185	6	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48643	185	7	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48644	185	8	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48645	185	9	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48652	185	16	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48653	185	17	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48654	185	18	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48655	185	19	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48656	185	20	1	5	10	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48657	185	21	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48658	185	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48659	185	23	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48666	186	1	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48667	186	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48668	186	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48669	186	4	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48670	186	5	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48671	186	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48672	186	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48673	186	8	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48674	186	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48681	186	16	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48682	186	17	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48683	186	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48684	186	19	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48685	186	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48686	186	21	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48687	186	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48688	186	23	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48695	187	1	1	5	8.4399996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48696	187	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48697	187	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48698	187	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48699	187	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48700	187	6	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48701	187	7	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48702	187	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48703	187	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48710	187	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48711	187	17	1	5	7.8299999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48712	187	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48713	187	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48714	187	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48715	187	21	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48716	187	22	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48717	187	23	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48724	188	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48725	188	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48726	188	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48727	188	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48728	188	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48729	188	6	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48730	188	7	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48731	188	8	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48732	188	9	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48739	188	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48740	188	17	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48741	188	18	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48742	188	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48743	188	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48744	188	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48745	188	22	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48746	188	23	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48753	189	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48754	189	2	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48755	189	3	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48756	189	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48757	189	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48758	189	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48759	189	7	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48760	189	8	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48761	189	9	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48768	189	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48769	189	17	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48770	189	18	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48771	189	19	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48772	189	20	1	5	9.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48773	189	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48774	189	22	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48775	189	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48782	190	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48783	190	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48784	190	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48785	190	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48786	190	5	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48787	190	6	1	5	7.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48788	190	7	1	5	8.0200005	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48789	190	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48790	190	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48797	190	16	1	5	7.0300002	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48798	190	17	1	5	8.6899996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48799	190	18	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48800	190	19	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48801	190	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48802	190	21	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48803	190	22	1	5	9.1499996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48804	190	23	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48811	190	31	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48812	190	32	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48813	190	33	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48814	190	34	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48815	190	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48816	190	35	1	5	7.5599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48826	191	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48827	191	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48828	191	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48829	191	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48830	191	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48831	191	6	1	5	7.5599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48832	191	7	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48833	191	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48834	191	9	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48841	191	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48842	191	17	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48843	191	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48844	191	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48845	191	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48846	191	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48847	191	22	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48848	191	23	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48855	191	31	1	5	5.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48856	191	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48857	191	33	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48858	191	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48859	191	45	1	5	3.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48860	191	35	1	5	4.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48870	192	1	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48871	192	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48872	192	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48873	192	4	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48874	192	5	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48875	192	6	1	5	9.1899996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48876	192	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48877	192	8	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48878	192	9	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48885	192	16	1	5	7.73	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48886	192	17	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48887	192	18	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48888	192	19	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48889	192	20	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48890	192	21	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48891	192	22	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48892	192	23	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48899	192	31	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48900	192	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48901	192	33	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48902	192	34	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48903	192	45	1	5	3.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48904	192	35	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48914	193	1	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48915	193	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48916	193	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48917	193	4	1	5	9.4499998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48918	193	5	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48919	193	6	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48920	193	7	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48921	193	8	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48922	193	9	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48929	193	16	1	5	8.21	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48930	193	17	1	5	8.04	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48931	193	18	1	5	10	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48932	193	19	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48933	193	20	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48934	193	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48935	193	22	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48936	193	23	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48943	193	31	1	5	8.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48944	193	32	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48945	193	33	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48946	193	34	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48947	193	45	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48948	193	35	1	5	9.0600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48958	194	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48959	194	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48960	194	3	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48961	194	4	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48962	194	5	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48963	194	6	1	5	7.04	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48964	194	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48965	194	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48966	194	9	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48973	194	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48974	194	17	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48975	194	18	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48976	194	19	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48977	194	20	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48978	194	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48979	194	22	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48980	194	23	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48987	194	31	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48988	194	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48989	194	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48990	194	34	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48991	194	45	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
48992	194	35	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49002	195	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49003	195	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49004	195	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49005	195	4	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49006	195	5	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49007	195	6	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49008	195	7	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49009	195	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49010	195	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49017	195	16	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49018	195	17	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49019	195	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49020	195	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49021	195	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49022	195	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49023	195	22	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49024	195	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49031	195	31	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49032	195	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49033	195	33	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49034	195	34	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49035	195	45	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49036	195	35	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49046	196	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49047	196	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49048	196	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49049	196	4	1	5	7.1999998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49050	196	5	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49051	196	6	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49052	196	7	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49053	196	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49054	196	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49061	196	16	1	5	7.7800002	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49062	196	17	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49063	196	18	1	5	9.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49064	196	19	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49065	196	20	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49066	196	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49067	196	22	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49068	196	23	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49075	196	31	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49076	196	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49077	196	33	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49078	196	34	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49079	196	45	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49080	196	35	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49090	197	1	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49091	197	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49092	197	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49093	197	4	1	5	8.7399998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49094	197	5	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49095	197	6	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49096	197	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49097	197	8	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49098	197	9	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49105	197	16	1	5	8.6599998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49106	197	17	1	5	9.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49107	197	18	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49108	197	19	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49109	197	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49110	197	21	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49111	197	22	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49112	197	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49119	197	31	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49120	197	32	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49121	197	33	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49122	197	34	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49123	197	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49124	197	35	1	5	7.1799998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49134	198	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49135	198	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49136	198	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49137	198	4	1	5	8.4499998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49138	198	5	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49139	198	6	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49140	198	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49141	198	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49142	198	9	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49149	198	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49150	198	17	1	5	8.8100004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49151	198	18	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49152	198	19	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49153	198	20	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49154	198	21	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49155	198	22	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49156	198	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49163	198	31	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49164	198	32	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49165	198	33	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49166	198	34	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49167	198	45	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49168	198	35	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49178	199	1	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49179	199	2	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49180	199	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49181	199	4	1	5	8.54	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49182	199	5	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49183	199	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49184	199	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49185	199	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49186	199	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49193	199	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49194	199	17	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49195	199	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49196	199	19	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49197	199	20	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49198	199	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49199	199	22	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49200	199	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49207	199	31	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49208	199	32	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49209	199	33	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49210	199	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49211	199	45	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49212	199	35	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49222	291	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49223	291	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49224	291	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49225	291	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49226	291	5	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49227	291	6	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49228	291	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49229	291	8	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49230	291	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49237	291	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49238	291	17	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49239	291	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49240	291	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49241	291	20	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49242	291	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49243	291	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49244	291	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49251	291	31	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49252	291	32	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49253	291	33	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49254	291	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49255	291	45	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49256	291	35	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49266	201	1	1	5	9.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49267	201	2	1	5	7.5599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49268	201	3	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49269	201	4	1	5	9.6999998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49270	201	5	1	5	9.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49271	201	6	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49272	201	7	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49273	201	8	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49274	201	9	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49281	201	16	1	5	8.8999996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49282	201	17	1	5	8.6899996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49283	201	18	1	5	10	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49284	201	19	1	5	8.6899996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49285	201	20	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49286	201	21	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49287	201	22	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49288	201	23	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49295	201	31	1	5	9.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49296	201	32	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49297	201	33	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49298	201	34	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49299	201	45	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49300	201	35	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49310	202	1	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49311	202	2	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49312	202	3	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49313	202	4	1	5	9.1599998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49314	202	5	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49315	202	6	1	5	9.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49316	202	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49317	202	8	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49318	202	9	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49325	202	16	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49326	202	17	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49327	202	18	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49328	202	19	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49329	202	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49330	202	21	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49331	202	22	1	5	8.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49332	202	23	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49339	202	31	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49340	202	32	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49341	202	33	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49342	202	34	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49343	202	45	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49344	202	35	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49354	203	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49355	203	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49356	203	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49357	203	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49358	203	5	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49359	203	6	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49360	203	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49361	203	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49362	203	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49369	203	16	1	5	8.04	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49370	203	17	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49371	203	18	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49372	203	19	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49373	203	20	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49374	203	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49375	203	22	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49376	203	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49383	203	31	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49384	203	32	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49385	203	33	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49386	203	34	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49387	203	45	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49388	203	35	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49398	204	1	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49399	204	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49400	204	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49401	204	4	1	5	7.1999998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49402	204	5	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49403	204	6	1	5	7.9400001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49404	204	7	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49405	204	8	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49406	204	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49413	204	16	1	5	7.02	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49414	204	17	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49415	204	18	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49416	204	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49417	204	20	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49418	204	21	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49419	204	22	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49420	204	23	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49427	204	31	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49428	204	32	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49429	204	33	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49430	204	34	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49431	204	45	1	5	11	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49432	204	35	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49442	292	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49443	292	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49444	292	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49445	292	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49446	292	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49447	292	6	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49448	292	7	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49449	292	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49450	292	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49457	292	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49458	292	17	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49459	292	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49460	292	19	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49461	292	20	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49462	292	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49463	292	22	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49464	292	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49471	292	31	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49472	292	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49473	292	33	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49474	292	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49475	292	45	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49476	292	35	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49486	208	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49487	208	2	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49488	208	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49489	208	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49490	208	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49491	208	6	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49492	208	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49493	208	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49494	208	9	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49501	208	16	1	5	7.5300002	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49502	208	17	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49503	208	18	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49504	208	19	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49505	208	20	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49506	208	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49507	208	22	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49508	208	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49515	208	31	1	5	7.5599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49516	208	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49517	208	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49518	208	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49519	208	45	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49520	208	35	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49530	209	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49531	209	2	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49532	209	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49533	209	4	1	5	7.8899999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49534	209	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49535	209	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49536	209	7	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49537	209	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49538	209	9	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49545	209	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49546	209	17	1	5	8.0600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49547	209	18	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49548	209	19	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49549	209	20	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49550	209	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49551	209	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49552	209	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49559	209	31	1	5	7.6900001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49560	209	32	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49561	209	33	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49562	209	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49563	209	45	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49564	209	35	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49574	213	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49575	213	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49576	213	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49577	213	4	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49578	213	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49579	213	6	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49580	213	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49581	213	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49582	213	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49589	213	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49590	213	17	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49591	213	18	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49592	213	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49593	213	20	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49594	213	21	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49595	213	22	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49596	213	23	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49603	213	31	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49604	213	32	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49605	213	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49606	213	34	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49607	213	45	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49608	213	35	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49618	214	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49619	214	2	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49620	214	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49621	214	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49622	214	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49623	214	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49624	214	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49625	214	8	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49626	214	9	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49633	214	16	1	5	7.4200001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49634	214	17	1	5	9.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49635	214	18	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49636	214	19	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49637	214	20	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49638	214	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49639	214	22	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49640	214	23	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49647	214	31	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49648	214	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49649	214	33	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49650	214	34	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49651	214	45	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49652	214	35	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49662	215	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49663	215	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49664	215	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49665	215	4	1	5	7.1399999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49666	215	5	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49667	215	6	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49668	215	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49669	215	8	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49670	215	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49677	215	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49678	215	17	1	5	8.8100004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49679	215	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49680	215	19	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49681	215	20	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49682	215	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49683	215	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49684	215	23	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49691	215	31	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49692	215	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49693	215	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49694	215	34	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49695	215	45	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49696	215	35	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49706	217	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49707	217	2	1	5	7.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49708	217	3	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49709	217	4	1	5	8.5799999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49710	217	5	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49711	217	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49712	217	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49713	217	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49714	217	9	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49721	217	16	1	5	7.3499999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49722	217	17	1	5	9.1899996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49723	217	18	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49724	217	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49725	217	20	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49726	217	21	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49727	217	22	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49728	217	23	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49735	217	31	1	5	9.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49736	217	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49737	217	33	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49738	217	34	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49739	217	45	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49740	217	35	1	5	9.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49750	218	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49751	218	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49752	218	3	1	5	7.1799998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49753	218	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49754	218	5	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49755	218	6	1	5	8.0600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49756	218	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49757	218	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49758	218	9	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49765	218	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49766	218	17	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49767	218	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49768	218	19	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49769	218	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49770	218	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49771	218	22	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49772	218	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49779	218	31	1	5	7.1900001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49780	218	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49781	218	33	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49782	218	34	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49783	218	45	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49784	218	35	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49794	219	1	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49795	219	2	1	5	7.1799998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49796	219	3	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49797	219	4	1	5	8.9700003	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49798	219	5	1	5	9.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49799	219	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49800	219	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49801	219	8	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49802	219	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49809	219	16	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49810	219	17	1	5	9.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49811	219	18	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49812	219	19	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49813	219	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49814	219	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49815	219	22	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49816	219	23	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49823	219	31	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49824	219	32	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49825	219	33	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49826	219	34	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49827	219	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49828	219	35	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49838	220	1	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49839	220	2	1	5	8.1800003	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49840	220	3	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49841	220	4	1	5	9.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49842	220	5	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49843	220	6	1	5	9.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49844	220	7	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49845	220	8	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49846	220	9	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49853	220	16	1	5	9.0600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49854	220	17	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49855	220	18	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49856	220	19	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49857	220	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49858	220	21	1	5	7.8400002	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49859	220	22	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49860	220	23	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49867	220	31	1	5	9.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49868	220	32	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49869	220	33	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49870	220	34	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49871	220	45	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49872	220	35	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49882	221	1	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49883	221	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49884	221	3	1	5	7.1799998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49885	221	4	1	5	9.3299999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49886	221	5	1	5	9.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49887	221	6	1	5	9.0600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49888	221	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49889	221	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49890	221	9	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49897	221	16	1	5	9.21	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49898	221	17	1	5	9.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49899	221	18	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49900	221	19	1	5	9.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49901	221	20	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49902	221	21	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49903	221	22	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49904	221	23	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49911	221	31	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49912	221	32	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49913	221	33	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49914	221	34	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49915	221	45	1	5	8.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49916	221	35	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49926	222	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49927	222	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49928	222	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49929	222	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49930	222	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49931	222	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49932	222	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49933	222	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49934	222	9	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49941	222	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49942	222	17	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49943	222	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49944	222	19	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49945	222	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49946	222	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49947	222	22	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49948	222	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49955	222	31	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49956	222	32	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49957	222	33	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49958	222	34	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49959	222	45	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49960	222	35	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49970	223	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49971	223	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49972	223	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49973	223	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49974	223	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49975	223	6	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49976	223	7	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49977	223	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49978	223	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49985	223	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49986	223	17	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49987	223	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49988	223	19	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49989	223	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49990	223	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49991	223	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49992	223	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
49999	223	31	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50000	223	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50001	223	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50002	223	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50003	223	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50004	223	35	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50014	224	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50015	224	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50016	224	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50017	224	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50018	224	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50019	224	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50020	224	7	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50021	224	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50022	224	9	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50029	224	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50030	224	17	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50031	224	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50032	224	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50033	224	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50034	224	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50035	224	22	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50036	224	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50043	224	31	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50044	224	32	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50045	224	33	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50046	224	34	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50047	224	45	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50048	224	35	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50058	225	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50059	225	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50060	225	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50061	225	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50062	225	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50063	225	6	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50064	225	7	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50065	225	8	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50066	225	9	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50073	225	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50074	225	17	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50075	225	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50076	225	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50077	225	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50078	225	21	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50079	225	22	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50080	225	23	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50087	225	31	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50088	225	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50089	225	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50090	225	34	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50091	225	45	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50092	225	35	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50102	226	1	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50103	226	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50104	226	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50105	226	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50106	226	5	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50107	226	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50108	226	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50109	226	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50110	226	9	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50117	226	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50118	226	17	1	5	7.4400001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50119	226	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50120	226	19	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50121	226	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50122	226	21	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50123	226	22	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50124	226	23	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50131	226	31	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50132	226	32	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50133	226	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50134	226	34	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50135	226	45	1	5	253	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50136	226	35	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50146	227	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50147	227	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50148	227	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50149	227	4	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50150	227	5	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50151	227	6	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50152	227	7	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50153	227	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50154	227	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50161	227	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50162	227	17	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50163	227	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50164	227	19	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50165	227	20	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50166	227	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50167	227	22	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50168	227	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50175	227	31	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50176	227	32	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50177	227	33	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50178	227	34	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50179	227	45	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50180	227	35	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50190	228	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50191	228	2	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50192	228	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50193	228	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50194	228	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50195	228	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50196	228	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50197	228	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50198	228	9	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50205	228	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50206	228	17	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50207	228	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50208	228	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50209	228	20	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50210	228	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50211	228	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50212	228	23	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50219	228	31	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50220	228	32	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50221	228	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50222	228	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50223	228	45	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50224	228	35	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50234	229	1	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50235	229	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50236	229	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50237	229	4	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50238	229	5	1	5	9.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50239	229	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50240	229	7	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50241	229	8	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50242	229	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50249	229	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50250	229	17	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50251	229	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50252	229	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50253	229	20	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50254	229	21	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50255	229	22	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50256	229	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50263	229	31	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50264	229	32	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50265	229	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50266	229	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50267	229	45	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50268	229	35	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50278	230	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50279	230	2	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50280	230	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50281	230	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50282	230	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50283	230	6	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50284	230	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50285	230	8	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50286	230	9	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50293	230	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50294	230	17	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50295	230	18	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50296	230	19	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50297	230	20	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50298	230	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50299	230	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50300	230	23	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50307	230	31	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50308	230	32	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50309	230	33	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50310	230	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50311	230	45	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50312	230	35	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50322	231	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50323	231	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50324	231	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50325	231	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50326	231	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50327	231	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50328	231	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50329	231	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50330	231	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50337	231	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50338	231	17	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50339	231	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50340	231	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50341	231	20	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50342	231	21	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50343	231	22	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50344	231	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50351	231	31	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50352	231	32	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50353	231	33	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50354	231	34	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50355	231	45	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50356	231	35	1	5	8.5600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50366	232	1	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50367	232	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50368	232	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50369	232	4	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50370	232	5	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50371	232	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50372	232	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50373	232	8	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50374	232	9	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50381	232	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50382	232	17	1	5	8.9399996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50383	232	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50384	232	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50385	232	20	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50386	232	21	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50387	232	22	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50388	232	23	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50395	232	31	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50396	232	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50397	232	33	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50398	232	34	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50399	232	45	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50400	232	35	1	5	7.5599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50410	235	1	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50411	235	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50412	235	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50413	235	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50414	235	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50415	235	6	1	5	7.0799999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50416	235	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50417	235	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50418	235	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50425	235	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50426	235	17	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50427	235	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50428	235	19	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50429	235	20	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50430	235	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50431	235	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50432	235	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50439	235	31	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50440	235	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50441	235	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50442	235	34	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50443	235	45	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50444	235	35	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50454	236	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50455	236	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50456	236	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50457	236	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50458	236	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50459	236	6	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50460	236	7	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50461	236	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50462	236	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50469	236	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50470	236	17	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50471	236	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50472	236	19	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50473	236	20	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50474	236	21	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50475	236	22	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50476	236	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50483	236	31	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50484	236	32	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50485	236	33	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50486	236	34	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50487	236	45	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50488	236	35	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50498	237	1	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50499	237	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50500	237	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50501	237	4	1	5	8.2399998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50502	237	5	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50503	237	6	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50504	237	7	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50505	237	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50506	237	9	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50513	237	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50514	237	17	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50515	237	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50516	237	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50517	237	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50518	237	21	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50519	237	22	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50520	237	23	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50527	237	31	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50528	237	32	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50529	237	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50530	237	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50531	237	45	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50532	237	35	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50542	238	1	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50543	238	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50544	238	3	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50545	238	4	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50546	238	5	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50547	238	6	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50548	238	7	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50549	238	8	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50550	238	9	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50557	238	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50558	238	17	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50559	238	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50560	238	19	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50561	238	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50562	238	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50563	238	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50564	238	23	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50571	238	31	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50572	238	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50573	238	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50574	238	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50575	238	45	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50576	238	35	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50598	239	1	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50599	239	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50600	239	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50601	239	4	1	5	7.9099998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50602	239	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50603	239	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50604	239	7	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50605	239	8	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50606	239	9	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50613	239	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50614	239	17	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50615	239	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50616	239	19	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50617	239	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50618	239	21	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50619	239	22	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50620	239	23	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50627	239	31	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50628	239	32	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50629	239	33	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50630	239	34	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50631	239	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50632	239	35	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50642	240	1	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50643	240	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50644	240	3	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50645	240	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50646	240	5	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50647	240	6	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50648	240	7	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50649	240	8	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50650	240	9	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50657	240	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50658	240	17	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50659	240	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50660	240	19	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50661	240	20	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50662	240	21	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50663	240	22	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50664	240	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50671	240	31	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50672	240	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50673	240	33	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50674	240	34	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50675	240	45	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50676	240	35	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50686	241	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50687	241	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50688	241	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50689	241	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50690	241	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50691	241	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50692	241	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50693	241	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50694	241	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50701	241	16	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50702	241	17	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50703	241	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50704	241	19	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50705	241	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50706	241	21	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50707	241	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50708	241	23	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50715	241	31	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50716	241	32	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50717	241	33	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50718	241	34	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50719	241	45	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50720	241	35	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50730	242	1	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50731	242	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50732	242	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50733	242	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50734	242	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50735	242	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50736	242	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50737	242	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50738	242	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50745	242	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50746	242	17	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50747	242	18	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50748	242	19	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50749	242	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50750	242	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50751	242	22	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50752	242	23	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50759	242	31	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50760	242	32	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50761	242	33	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50762	242	34	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50763	242	45	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50764	242	35	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50774	243	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50775	243	2	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50776	243	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50777	243	4	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50778	243	5	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50779	243	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50780	243	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50781	243	8	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50782	243	9	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50789	243	16	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50790	243	17	1	5	8.8100004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50791	243	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50792	243	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50793	243	20	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50794	243	21	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50795	243	22	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50796	243	23	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50803	243	31	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50804	243	32	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50805	243	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50806	243	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50807	243	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50808	243	35	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50818	245	1	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50819	245	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50820	245	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50821	245	4	1	5	7.54	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50822	245	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50823	245	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50824	245	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50825	245	8	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50826	245	9	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50833	245	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50834	245	17	1	5	8.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50835	245	18	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50836	245	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50837	245	20	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50838	245	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50839	245	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50840	245	23	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50847	245	31	1	5	7.5599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50848	245	32	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50849	245	33	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50850	245	34	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50851	245	45	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50852	245	35	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50862	247	1	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50863	247	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50864	247	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50865	247	4	1	5	7.8299999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50866	247	5	1	5	9.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50867	247	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50868	247	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50869	247	8	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50870	247	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50877	247	16	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50878	247	17	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50879	247	18	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50880	247	19	1	5	7.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50881	247	20	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50882	247	21	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50883	247	22	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50884	247	23	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50891	247	31	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50892	247	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50893	247	33	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50894	247	34	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50895	247	45	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50896	247	35	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50906	248	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50907	248	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50908	248	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50909	248	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50910	248	5	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50911	248	6	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50912	248	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50913	248	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50914	248	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50921	248	16	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50922	248	17	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50923	248	18	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50924	248	19	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50925	248	20	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50926	248	21	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50927	248	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50928	248	23	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50935	248	31	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50936	248	32	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50937	248	33	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50938	248	34	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50939	248	45	1	5	10	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50940	248	35	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50950	249	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50951	249	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50952	249	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50953	249	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50954	249	5	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50955	249	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50956	249	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50957	249	8	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50958	249	9	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50965	249	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50966	249	17	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50967	249	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50968	249	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50969	249	20	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50970	249	21	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50971	249	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50972	249	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50979	249	31	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50980	249	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50981	249	33	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50982	249	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50983	249	45	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50984	249	35	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50994	251	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50995	251	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50996	251	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50997	251	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50998	251	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
50999	251	6	1	5	8.4399996	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51000	251	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51001	251	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51002	251	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51009	251	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51010	251	17	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51011	251	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51012	251	19	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51013	251	20	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51014	251	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51015	251	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51016	251	23	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51023	251	31	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51024	251	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51025	251	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51026	251	34	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51027	251	45	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51028	251	35	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51050	252	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51051	252	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51052	252	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51053	252	4	1	5	7.04	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51054	252	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51055	252	6	1	5	7.79	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51056	252	7	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51057	252	8	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51058	252	9	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51065	252	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51066	252	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51067	252	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51068	252	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51069	252	20	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51070	252	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51071	252	22	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51072	252	23	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51079	252	31	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51080	252	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51081	252	33	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51082	252	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51083	252	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51084	252	35	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51106	253	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51107	253	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51108	253	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51109	253	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51110	253	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51111	253	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51112	253	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51113	253	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51114	253	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51121	253	16	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51122	253	17	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51123	253	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51124	253	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51125	253	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51126	253	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51127	253	22	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51128	253	23	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51135	253	31	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51136	253	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51137	253	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51138	253	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51139	253	45	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51140	253	35	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51162	254	1	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51163	254	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51164	254	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51165	254	4	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51166	254	5	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51167	254	6	1	5	8.3299999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51168	254	7	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51169	254	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51170	254	9	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51177	254	16	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51178	254	17	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51179	254	18	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51180	254	19	1	5	7.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51181	254	20	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51182	254	21	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51183	254	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51184	254	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51191	254	31	1	5	7.21	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51192	254	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51193	254	33	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51194	254	34	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51195	254	45	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51196	254	35	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51218	255	1	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51219	255	2	1	5	7.0300002	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51220	255	3	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51221	255	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51222	255	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51223	255	6	1	5	8.9200001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51224	255	7	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51225	255	8	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51226	255	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51233	255	16	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51234	255	17	1	5	9.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51235	255	18	1	5	10	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51236	255	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51237	255	20	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51238	255	21	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51239	255	22	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51240	255	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51247	255	31	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51248	255	32	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51249	255	33	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51250	255	34	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51251	255	45	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51252	255	35	1	5	8.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51274	256	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51275	256	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51276	256	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51277	256	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51278	256	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51279	256	6	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51280	256	7	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51281	256	8	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51282	256	9	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51289	256	16	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51290	256	17	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51291	256	18	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51292	256	19	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51293	256	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51294	256	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51295	256	22	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51296	256	23	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51303	256	31	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51304	256	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51305	256	33	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51306	256	34	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51307	256	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51308	256	35	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51329	257	1	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51330	257	2	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51331	257	3	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51332	257	4	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51333	257	5	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51334	257	6	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51335	257	7	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51336	257	8	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51337	257	9	1	5	33	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51357	258	1	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51358	258	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51359	258	3	1	5	7.5599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51360	258	4	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51361	258	5	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51362	258	6	1	5	8.29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51363	258	7	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51364	258	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51365	258	9	1	5	9.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51372	258	16	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51373	258	17	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51374	258	18	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51375	258	19	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51376	258	20	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51377	258	21	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51378	258	22	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51379	258	23	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51386	258	31	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51387	258	32	1	5	7.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51388	258	33	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51389	258	34	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51390	258	45	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51391	258	35	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51413	259	1	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51414	259	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51415	259	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51416	259	4	1	5	7.4099998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51417	259	5	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51418	259	6	1	5	8.8100004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51419	259	7	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51420	259	8	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51421	259	9	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51428	259	16	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51429	259	17	1	5	9.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51430	259	18	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51431	259	19	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51432	259	20	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51433	259	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51434	259	22	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51435	259	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51442	259	31	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51443	259	32	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51444	259	33	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51445	259	34	1	5	9.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51446	259	45	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51447	259	35	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51469	260	1	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51470	260	2	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51471	260	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51472	260	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51473	260	5	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51474	260	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51475	260	7	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51476	260	8	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51477	260	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51484	260	16	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51485	260	17	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51486	260	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51487	260	19	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51488	260	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51489	260	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51490	260	22	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51491	260	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51498	260	31	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51499	260	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51500	260	33	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51501	260	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51502	260	45	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51503	260	35	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51525	261	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51526	261	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51527	261	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51528	261	4	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51529	261	5	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51530	261	6	1	5	8.6700001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51531	261	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51532	261	8	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51533	261	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51540	261	16	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51541	261	17	1	5	9.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51542	261	18	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51543	261	19	1	5	8.4300003	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51544	261	20	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51545	261	21	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51546	261	22	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51547	261	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51554	261	31	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51555	261	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51556	261	33	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51557	261	34	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51558	261	45	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51559	261	35	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51581	262	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51582	262	2	1	5	7.04	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51583	262	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51584	262	4	1	5	7.9099998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51585	262	5	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51586	262	6	1	5	9.4200001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51587	262	7	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51588	262	8	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51589	262	9	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51596	262	16	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51597	262	17	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51598	262	18	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51599	262	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51600	262	20	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51601	262	21	1	5	7.9299998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51602	262	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51603	262	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51610	262	31	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51611	262	32	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51612	262	33	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51613	262	34	1	5	9.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51614	262	45	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51615	262	35	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51637	268	1	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51638	268	2	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51639	268	3	1	5	7.4299998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51640	268	4	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51641	268	5	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51642	268	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51643	268	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51644	268	8	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51645	268	9	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51652	268	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51653	268	17	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51654	268	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51655	268	19	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51656	268	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51657	268	21	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51658	268	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51659	268	23	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51666	268	31	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51667	268	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51668	268	33	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51669	268	34	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51670	268	45	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51671	268	35	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51693	269	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51694	269	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51695	269	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51696	269	4	1	5	7.6999998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51697	269	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51698	269	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51699	269	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51700	269	8	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51701	269	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51708	269	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51709	269	17	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51710	269	18	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51711	269	19	1	5	7.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51712	269	20	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51713	269	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51714	269	22	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51715	269	23	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51722	269	31	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51723	269	32	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51724	269	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51725	269	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51726	269	45	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51727	269	35	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51749	270	1	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51750	270	2	1	5	8.5600004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51751	270	3	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51752	270	4	1	5	9.0799999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51753	270	5	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51754	270	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51755	270	7	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51756	270	8	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51757	270	9	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51764	270	16	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51765	270	17	1	5	9.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51766	270	18	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51767	270	19	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51768	270	20	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51769	270	21	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51770	270	22	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51771	270	23	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51778	270	31	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51779	270	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51780	270	33	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51781	270	34	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51782	270	45	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51783	270	35	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51805	271	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51806	271	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51807	271	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51808	271	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51809	271	5	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51810	271	6	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51811	271	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51812	271	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51813	271	9	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51820	271	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51821	271	17	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51822	271	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51823	271	19	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51824	271	20	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51825	271	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51826	271	22	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51827	271	23	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51834	271	31	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51835	271	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51836	271	33	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51837	271	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51838	271	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51839	271	35	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51861	272	1	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51862	272	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51863	272	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51864	272	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51865	272	5	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51866	272	6	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51867	272	7	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51868	272	8	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51869	272	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51876	272	16	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51877	272	17	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51878	272	18	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51879	272	19	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51880	272	20	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51881	272	21	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51882	272	22	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51883	272	23	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51890	272	31	1	5	9.8299999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51891	272	32	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51892	272	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51893	272	34	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51894	272	45	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51895	272	35	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51917	274	1	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51918	274	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51919	274	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51920	274	4	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51921	274	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51922	274	6	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51923	274	7	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51924	274	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51925	274	9	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51932	274	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51933	274	17	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51934	274	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51935	274	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51936	274	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51937	274	21	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51938	274	22	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51939	274	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51946	274	31	1	5	7.9400001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51947	274	32	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51948	274	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51949	274	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51950	274	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51951	274	35	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51973	275	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51974	275	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51975	275	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51976	275	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51977	275	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51978	275	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51979	275	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51980	275	8	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51981	275	9	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51988	275	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51989	275	17	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51990	275	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51991	275	19	1	5	7.4299998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51992	275	20	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51993	275	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51994	275	22	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
51995	275	23	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52002	275	31	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52003	275	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52004	275	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52005	275	34	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52006	275	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52007	275	35	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52029	276	1	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52030	276	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52031	276	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52032	276	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52033	276	5	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52034	276	6	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52035	276	7	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52036	276	8	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52037	276	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52044	276	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52045	276	17	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52046	276	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52047	276	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52048	276	20	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52049	276	21	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52050	276	22	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52051	276	23	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52058	276	31	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52059	276	32	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52060	276	33	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52061	276	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52062	276	45	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52063	276	35	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52085	277	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52086	277	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52087	277	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52088	277	4	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52089	277	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52090	277	6	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52091	277	7	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52092	277	8	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52093	277	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52100	277	16	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52101	277	17	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52102	277	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52103	277	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52104	277	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52105	277	21	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52106	277	22	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52107	277	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52114	277	31	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52115	277	32	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52116	277	33	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52117	277	34	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52118	277	45	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52119	277	35	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52141	278	1	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52142	278	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52143	278	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52144	278	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52145	278	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52146	278	6	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52147	278	7	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52148	278	8	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52149	278	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52156	278	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52157	278	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52158	278	18	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52159	278	19	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52160	278	20	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52161	278	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52162	278	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52163	278	23	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52170	278	31	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52171	278	32	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52172	278	33	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52173	278	34	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52174	278	45	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52175	278	35	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52197	280	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52198	280	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52199	280	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52200	280	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52201	280	5	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52202	280	6	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52203	280	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52204	280	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52205	280	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52212	280	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52213	280	17	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52214	280	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52215	280	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52216	280	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52217	280	21	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52218	280	22	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52219	280	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52226	280	31	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52227	280	32	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52228	280	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52229	280	34	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52230	280	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52231	280	35	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52253	281	1	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52254	281	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52255	281	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52256	281	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52257	281	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52258	281	6	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52259	281	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52260	281	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52261	281	9	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52268	281	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52269	281	17	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52270	281	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52271	281	19	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52272	281	20	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52273	281	21	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52274	281	22	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52275	281	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52282	281	31	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52283	281	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52284	281	33	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52285	281	34	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52286	281	45	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52287	281	35	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52309	282	1	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52310	282	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52311	282	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52312	282	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52313	282	5	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52314	282	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52315	282	7	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52316	282	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52317	282	9	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52324	282	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52325	282	17	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52326	282	18	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52327	282	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52328	282	20	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52329	282	21	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52330	282	22	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52331	282	23	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52338	282	31	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52339	282	32	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52340	282	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52341	282	34	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52342	282	45	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52343	282	35	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52365	283	1	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52366	283	2	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52367	283	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52368	283	4	1	5	7.4099998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52369	283	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52370	283	6	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52371	283	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52372	283	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52373	283	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52380	283	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52381	283	17	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52382	283	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52383	283	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52384	283	20	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52385	283	21	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52386	283	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52387	283	23	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52394	283	31	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52395	283	32	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52396	283	33	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52397	283	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52398	283	45	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52399	283	35	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52421	284	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52422	284	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52423	284	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52424	284	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52425	284	5	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52426	284	6	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52427	284	7	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52428	284	8	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52429	284	9	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52436	284	16	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52437	284	17	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52438	284	18	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52439	284	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52440	284	20	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52441	284	21	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52442	284	22	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52443	284	23	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52450	284	31	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52451	284	32	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52452	284	33	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52453	284	34	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52454	284	45	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52455	284	35	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52477	285	1	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52478	285	2	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52479	285	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52480	285	4	1	5	7.4299998	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52481	285	5	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52482	285	6	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52483	285	7	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52484	285	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52485	285	9	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52492	285	16	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52493	285	17	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52494	285	18	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52495	285	19	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52496	285	20	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52497	285	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52498	285	22	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52499	285	23	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52506	285	31	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52507	285	32	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52508	285	33	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52509	285	34	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52510	285	45	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52511	285	35	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52533	286	1	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52534	286	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52535	286	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52536	286	4	1	5	7.3299999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52537	286	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52538	286	6	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52539	286	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52540	286	8	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52541	286	9	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52548	286	16	1	5	8.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52549	286	17	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52550	286	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52551	286	19	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52552	286	20	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52553	286	21	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52554	286	22	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52555	286	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52562	286	31	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52563	286	32	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52564	286	33	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52565	286	34	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52566	286	45	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52567	286	35	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52589	287	1	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52590	287	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52591	287	3	1	5	7.0599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52592	287	4	1	5	8.04	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52593	287	5	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52594	287	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52595	287	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52596	287	8	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52597	287	9	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52604	287	16	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52605	287	17	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52606	287	18	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52607	287	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52608	287	20	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52609	287	21	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52610	287	22	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52611	287	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52618	287	31	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52619	287	32	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52620	287	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52621	287	34	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52622	287	45	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52623	287	35	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52645	288	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52646	288	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52647	288	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52648	288	4	1	5	7.3099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52649	288	5	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52650	288	6	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52651	288	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52652	288	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52653	288	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52660	288	16	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52661	288	17	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52662	288	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52663	288	19	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52664	288	20	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52665	288	21	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52666	288	22	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52667	288	23	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52674	288	31	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52675	288	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52676	288	33	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52677	288	34	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52678	288	45	1	5	49	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52679	288	35	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52701	289	1	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52702	289	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52703	289	3	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52704	289	4	1	5	7.9200001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52705	289	5	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52706	289	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52707	289	7	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52708	289	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52709	289	9	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52716	289	16	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52717	289	17	1	5	9.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52718	289	18	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52719	289	19	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52720	289	20	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52721	289	21	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52722	289	22	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52723	289	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52730	289	31	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52731	289	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52732	289	33	1	5	8.6300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52733	289	34	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52734	289	45	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52735	289	35	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52757	263	1	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52758	263	2	1	5	28	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52759	263	3	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52760	263	4	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52761	263	5	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52762	263	6	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52763	263	7	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52764	263	8	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52765	263	9	1	5	7.1199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52772	263	16	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52773	263	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52774	263	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52775	263	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52776	263	20	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52777	263	21	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52778	263	22	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52779	263	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52786	263	31	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52787	263	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52788	263	33	1	5	8.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52789	263	34	1	5	7.3800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52790	263	45	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52791	263	35	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52813	264	1	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52814	264	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52815	264	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52816	264	4	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52817	264	5	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52818	264	6	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52819	264	7	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52820	264	8	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52821	264	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52828	264	16	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52829	264	17	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52830	264	18	1	5	9.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52831	264	19	1	5	8.3100004	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52832	264	20	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52833	264	21	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52834	264	22	1	5	8.6199999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52835	264	23	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52842	264	31	1	5	10	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52843	264	32	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52844	264	33	1	5	9	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52845	264	34	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52846	264	45	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52847	264	35	1	5	9.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52869	265	1	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52870	265	2	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52871	265	3	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52872	265	4	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52873	265	5	1	5	7.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52874	265	6	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52875	265	7	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52876	265	8	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52877	265	9	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52884	265	16	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52885	265	17	1	5	34	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52886	265	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52887	265	19	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52888	265	20	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52889	265	21	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52890	265	22	1	5	8.8699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52891	265	23	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52898	265	31	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52899	265	32	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52900	265	33	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52901	265	34	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52902	265	45	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52903	265	35	1	5	29	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52925	266	1	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52926	266	2	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52927	266	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52928	266	4	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52929	266	5	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52930	266	6	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52931	266	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52932	266	8	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52933	266	9	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52940	266	16	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52941	266	17	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52942	266	18	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52943	266	19	1	5	7.8099999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52944	266	20	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52945	266	21	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52946	266	22	1	5	8	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52947	266	23	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52954	266	31	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52955	266	32	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52956	266	33	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52957	266	34	1	5	8.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52958	266	45	1	5	7.8800001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52959	266	35	1	5	6	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52981	267	1	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52982	267	2	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52983	267	3	1	5	7	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52984	267	4	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52985	267	5	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52986	267	6	1	5	8.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52987	267	7	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52988	267	8	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52989	267	9	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52996	267	16	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52997	267	17	1	5	8.3699999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52998	267	18	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
52999	267	19	1	5	7.5599999	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
53000	267	20	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
53001	267	21	1	5	8.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
53002	267	22	1	5	8.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
53003	267	23	1	5	7.75	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
53010	267	31	1	5	7.4400001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
53011	267	32	1	5	4	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
53012	267	33	1	5	7.25	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
53013	267	34	1	5	7.5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
53014	267	45	1	5	5	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
53015	267	35	1	5	7.1300001	Pasaje Inicial	\N	\N	2007-10-17	\N	\N	2007-10-17	0	0	f	\N
53038	2	16	1	5	7.8099999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53039	2	17	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53040	2	18	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53041	2	19	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53042	2	20	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53043	2	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53044	2	22	1	5	7.8800001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53045	2	23	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53052	9	16	1	5	9.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53053	9	17	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53054	9	18	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53055	9	19	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53056	9	20	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53057	9	21	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53058	9	22	1	5	8.0600004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53059	9	23	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53066	10	16	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53067	10	17	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53068	10	18	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53069	10	19	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53070	10	20	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53071	10	21	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53072	10	22	1	5	7.9400001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53073	10	23	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53080	14	16	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53081	14	17	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53082	14	18	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53083	14	19	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53084	14	20	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53085	14	21	1	5	49	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53086	14	22	1	5	49	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53087	14	23	1	5	49	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53094	17	16	1	5	8.1800003	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53095	17	17	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53096	17	18	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53097	17	19	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53098	17	20	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53099	17	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53100	17	22	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53101	17	23	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53108	20	16	1	5	7.5500002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53109	20	17	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53110	20	18	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53111	20	19	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53112	20	20	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53113	20	21	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53114	20	22	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53115	20	23	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53122	23	16	1	5	8.2700005	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53123	23	17	1	5	8.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53124	23	18	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53125	23	19	1	5	8.8100004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53126	23	20	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53127	23	21	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53128	23	22	1	5	8.5100002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53129	23	23	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53136	32	16	1	5	9.3999996	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53137	32	17	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53138	32	18	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53139	32	19	1	5	7.6799998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53140	32	20	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53141	32	21	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53142	32	22	1	5	7.8299999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53143	32	23	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53150	293	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53151	293	16	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53152	293	17	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53153	293	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53154	293	23	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53158	294	16	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53159	294	17	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53160	294	18	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53161	294	19	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53162	294	20	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53163	294	21	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53164	294	22	1	5	7.0100002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53165	294	23	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53172	295	16	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53173	295	17	1	5	8.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53174	295	18	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53175	295	19	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53176	295	20	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53177	295	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53178	295	22	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53179	295	23	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53186	296	16	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53187	296	17	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53188	296	18	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53189	296	19	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53190	296	20	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53191	296	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53192	296	22	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53193	296	23	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53200	34	16	1	5	8.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53201	34	17	1	5	8.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53202	34	18	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53203	34	19	1	5	8.0600004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53204	34	20	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53205	34	21	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53206	34	22	1	5	9.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53207	34	23	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53214	35	16	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53215	35	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53216	35	18	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53217	35	19	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53218	35	20	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53219	35	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53220	35	22	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53221	35	23	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53228	37	16	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53229	37	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53230	37	18	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53231	37	19	1	5	66	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53232	37	20	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53233	37	21	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53234	37	22	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53235	37	23	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53242	41	16	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53243	41	17	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53244	41	18	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53245	41	19	1	5	7.0599999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53246	41	20	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53247	41	21	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53248	41	22	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53249	41	23	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53256	46	16	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53257	46	17	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53258	46	18	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53259	46	19	1	5	7.0599999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53260	46	20	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53261	46	21	1	5	8.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53262	46	22	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53263	46	23	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53270	47	16	1	5	66	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53271	47	17	1	5	66	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53272	47	18	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53273	47	19	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53274	47	20	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53275	47	21	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53276	47	22	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53277	47	23	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53284	48	16	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53285	48	17	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53286	48	18	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53287	48	19	1	5	8.0600004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53288	48	20	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53289	48	21	1	5	8.5600004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53290	48	22	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53291	48	23	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53298	51	16	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53299	51	17	1	5	66	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53300	51	18	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53301	51	19	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53302	51	20	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53303	51	21	1	5	8.5600004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53304	51	22	1	5	8.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53305	51	23	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53312	52	16	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53313	52	17	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53314	52	18	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53315	52	19	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53316	52	20	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53317	52	21	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53318	52	22	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53319	52	23	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53326	53	16	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53327	53	17	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53328	53	18	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53329	53	19	1	5	7.4299998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53330	53	20	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53331	53	21	1	5	66	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53332	53	22	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53333	53	23	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53340	56	16	1	5	10	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53341	56	17	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53342	56	18	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53343	56	19	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53344	56	20	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53345	56	21	1	5	8.3100004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53346	56	22	1	5	8.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53347	56	23	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53354	60	16	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53355	60	17	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53356	60	18	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53357	60	19	1	5	8.0600004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53358	60	20	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53359	60	21	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53360	60	22	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53361	60	23	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53368	65	16	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53369	65	17	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53370	65	18	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53371	65	19	1	5	7.9299998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53372	65	20	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53373	65	21	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53374	65	22	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53375	65	23	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53382	67	16	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53383	67	17	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53384	67	18	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53385	67	19	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53386	67	20	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53387	67	21	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53388	67	22	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53389	67	23	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53396	297	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53397	297	16	1	5	8.3500004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53398	297	19	1	5	66	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53401	298	16	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53402	299	16	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53403	299	17	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53404	299	18	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53405	299	19	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53406	299	20	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53407	299	21	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53408	299	22	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53409	299	23	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53416	300	16	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53417	300	17	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53418	300	18	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53419	300	19	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53420	300	20	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53421	300	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53422	300	22	1	5	9.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53423	300	23	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53430	301	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53431	301	18	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53432	301	20	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53435	75	16	1	5	66	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53436	75	17	1	5	66	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53437	75	18	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53438	75	19	1	5	7.8099999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53439	75	20	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53440	75	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53441	75	22	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53442	75	23	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53449	76	16	1	5	9.4499998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53450	76	17	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53451	76	18	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53452	76	19	1	5	8.1800003	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53453	76	20	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53454	76	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53455	76	22	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53456	76	23	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53463	79	16	1	5	8.2700005	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53464	79	17	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53465	79	18	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53466	79	19	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53467	79	20	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53468	79	21	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53469	79	22	1	5	8.4399996	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53470	79	23	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53477	80	16	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53478	80	17	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53479	80	18	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53480	80	19	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53481	80	20	1	5	7.4499998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53482	80	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53483	80	22	1	5	8.0600004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53484	80	23	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53491	81	16	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53492	81	17	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53493	81	18	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53494	81	19	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53495	81	20	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53496	81	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53497	81	22	1	5	7.0100002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53498	81	23	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53505	82	16	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53506	82	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53507	82	18	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53508	82	19	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53509	82	20	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53510	82	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53511	82	22	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53512	82	23	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53519	83	16	1	5	7.0599999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53520	83	17	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53521	83	18	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53522	83	19	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53523	83	20	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53524	83	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53525	83	22	1	5	7.1900001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53526	83	23	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53533	85	16	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53534	85	17	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53535	85	18	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53536	85	19	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53537	85	20	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53538	85	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53539	85	22	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53540	85	23	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53547	86	16	1	5	7.6799998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53548	86	17	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53549	86	18	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53550	86	19	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53551	86	20	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53552	86	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53553	86	22	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53554	86	23	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53561	88	16	1	5	9.4499998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53562	88	17	1	5	8.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53563	88	18	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53564	88	19	1	5	8.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53565	88	20	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53566	88	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53567	88	22	1	5	7.6999998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53568	88	23	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53575	89	16	1	5	7.0700002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53576	89	17	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53577	89	18	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53578	89	19	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53579	89	20	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53580	89	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53581	89	22	1	5	7.6300001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53582	89	23	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53589	90	16	1	5	7.2199998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53590	90	17	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53591	90	18	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53592	90	19	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53593	90	20	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53594	90	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53595	90	22	1	5	7.3299999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53596	90	23	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53603	91	16	1	5	8.6700001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53604	91	17	1	5	8.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53605	91	18	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53606	91	19	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53607	91	20	1	5	9.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53608	91	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53609	91	22	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53610	91	23	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53617	104	16	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53618	104	17	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53619	104	18	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53620	104	19	1	5	7.9299998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53621	104	20	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53622	104	21	1	5	8.0600004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53623	104	22	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53624	104	23	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53631	106	16	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53632	106	17	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53633	106	18	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53634	106	19	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53635	106	20	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53636	106	21	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53637	106	22	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53638	106	23	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53645	110	16	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53646	110	17	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53647	110	18	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53648	110	19	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53649	110	20	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53650	110	21	1	5	7.8099999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53651	110	22	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53652	110	23	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53659	111	16	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53660	111	17	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53661	111	18	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53662	111	19	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53663	111	20	1	5	9.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53664	111	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53665	111	22	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53666	111	23	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53673	112	16	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53674	112	17	1	5	8.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53675	112	18	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53676	112	19	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53677	112	20	1	5	9.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53678	112	21	1	5	8.3100004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53679	112	22	1	5	9.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53680	112	23	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53687	116	31	1	5	7.4000001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53688	116	32	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53689	116	33	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53690	116	34	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53691	116	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53692	116	35	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53702	118	31	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53703	118	32	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53704	118	33	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53705	118	34	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53706	118	45	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53707	118	35	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53717	120	31	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53718	120	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53719	120	33	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53720	120	34	1	5	7.3800001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53721	120	45	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53722	120	35	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53732	122	31	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53733	122	32	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53734	122	33	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53735	122	34	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53736	122	45	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53737	122	35	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53747	123	31	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53748	123	32	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53749	123	33	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53750	123	34	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53751	123	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53752	123	35	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53762	124	31	1	5	7.1799998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53763	124	32	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53764	124	33	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53765	124	34	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53766	124	45	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53767	124	35	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53777	125	31	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53778	125	32	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53779	125	33	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53780	125	34	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53781	125	45	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53782	125	35	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53792	126	31	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53793	126	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53794	126	33	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53795	126	34	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53796	126	45	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53797	126	35	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53807	128	31	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53808	128	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53809	128	33	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53810	128	34	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53811	128	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53812	128	35	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53822	130	31	1	5	7.1799998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53823	130	32	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53824	130	33	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53825	130	34	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53826	130	45	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53827	130	35	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53837	131	31	1	5	8.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53838	131	32	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53839	131	33	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53840	131	34	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53841	131	45	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53842	131	35	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53852	132	31	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53853	132	32	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53854	132	33	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53855	132	34	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53856	132	45	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53857	132	35	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53867	133	31	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53868	133	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53869	133	33	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53870	133	34	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53871	133	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53872	133	35	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53882	134	31	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53883	134	32	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53884	134	33	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53885	134	34	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53886	134	45	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53887	134	35	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53897	135	31	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53898	135	32	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53899	135	33	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53900	135	34	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53901	135	45	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53902	135	35	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53912	136	31	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53913	136	32	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53914	136	33	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53915	136	34	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53916	136	45	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53917	136	35	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53927	138	31	1	5	8.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53928	138	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53929	138	33	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53930	138	34	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53931	138	45	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53932	138	35	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53942	139	31	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53943	139	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53944	139	33	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53945	139	34	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53946	139	45	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53947	139	35	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53957	142	31	1	5	7.1500001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53958	142	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53959	142	33	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53960	142	34	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53961	142	45	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53962	142	35	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53972	143	31	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53973	143	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53974	143	33	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53975	143	34	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53976	143	45	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53977	143	35	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53987	144	31	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53988	144	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53989	144	33	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53990	144	34	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53991	144	45	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
53992	144	35	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54002	147	31	1	5	8.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54003	147	32	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54004	147	33	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54005	147	34	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54006	147	45	1	5	9.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54007	147	35	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54017	148	31	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54018	148	32	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54019	148	33	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54020	148	34	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54021	148	45	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54022	148	35	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54032	149	31	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54033	149	32	1	5	8.6300001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54034	149	33	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54035	149	34	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54036	149	45	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54037	149	35	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54047	150	31	1	5	9.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54048	150	32	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54049	150	33	1	5	8.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54050	150	34	1	5	8.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54051	150	45	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54052	150	35	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54062	151	31	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54063	151	32	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54064	151	33	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54065	151	34	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54066	151	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54067	151	35	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54077	152	31	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54078	152	32	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54079	152	33	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54080	152	34	1	5	8.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54081	152	45	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54082	152	35	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54092	154	31	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54093	154	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54094	154	33	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54095	154	34	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54096	154	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54097	154	35	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54107	155	31	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54108	155	32	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54109	155	33	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54110	155	34	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54111	155	45	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54112	155	35	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54122	304	2	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54123	304	21	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54124	304	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54127	156	16	1	5	1	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54128	156	19	1	5	7.3800001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54129	156	21	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54130	156	23	1	5	3	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54135	156	31	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54136	156	32	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54137	156	33	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54138	156	34	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54139	156	45	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54140	156	35	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54150	157	31	1	5	8.4099998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54151	157	32	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54152	157	33	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54153	157	34	1	5	9.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54154	157	45	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54155	157	35	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54165	158	16	1	5	1	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54166	158	19	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54167	158	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54168	158	23	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54173	160	31	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54174	160	32	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54175	160	33	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54176	160	34	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54177	160	45	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54178	160	35	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54188	161	31	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54189	161	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54190	161	33	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54191	161	34	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54192	161	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54193	161	35	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54203	162	31	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54204	162	32	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54205	162	33	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54206	162	34	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54207	162	45	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54208	162	35	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54218	163	31	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54219	163	32	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54220	163	33	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54221	163	34	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54222	163	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54223	163	35	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54233	164	31	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54234	164	32	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54235	164	33	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54236	164	34	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54237	164	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54238	164	35	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54248	165	31	1	5	8.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54249	165	32	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54250	165	33	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54251	165	34	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54252	165	45	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54253	165	35	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54263	166	31	1	5	8.8100004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54264	166	32	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54265	166	33	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54266	166	34	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54267	166	45	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54268	166	35	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54278	167	31	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54279	167	32	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54280	167	33	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54281	167	34	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54282	167	45	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54283	167	35	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54293	168	31	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54294	168	32	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54295	168	33	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54296	168	34	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54297	168	45	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54298	168	35	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54308	169	31	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54309	169	32	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54310	169	33	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54311	169	34	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54312	169	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54313	169	35	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54323	170	31	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54324	170	32	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54325	170	33	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54326	170	34	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54327	170	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54328	170	35	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54338	172	31	1	5	8.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54339	172	32	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54340	172	33	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54341	172	34	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54342	172	45	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54343	172	35	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54353	173	31	1	5	8.8100004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54354	173	32	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54355	173	33	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54356	173	34	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54357	173	45	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54358	173	35	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54368	175	31	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54369	175	32	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54370	175	33	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54371	175	34	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54372	175	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54373	175	35	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54383	176	31	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54384	176	32	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54385	176	33	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54386	176	34	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54387	176	45	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54388	176	35	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54398	177	31	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54399	177	32	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54400	177	33	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54401	177	34	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54402	177	45	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54403	177	35	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54413	178	31	1	5	8.21	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54414	178	32	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54415	178	33	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54416	178	34	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54417	178	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54418	178	35	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54428	179	31	1	5	9.71	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54429	179	32	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54430	179	33	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54431	179	34	1	5	9.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54432	179	45	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54433	179	35	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54443	180	31	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54444	180	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54445	180	33	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54446	180	34	1	5	9.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54447	180	45	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54448	180	35	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54458	182	31	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54459	182	32	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54460	182	33	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54461	182	34	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54462	182	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54463	182	35	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54473	183	31	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54474	183	32	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54475	183	33	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54476	183	34	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54477	183	45	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54478	183	35	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54488	185	31	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54489	185	32	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54490	185	33	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54491	185	34	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54492	185	45	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54493	185	35	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54503	186	31	1	5	7.71	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54504	186	32	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54505	186	33	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54506	186	34	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54507	186	45	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54508	186	35	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54518	187	31	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54519	187	32	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54520	187	33	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54521	187	34	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54522	187	45	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54523	187	35	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54533	188	31	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54534	188	32	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54535	188	33	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54536	188	34	1	5	49	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54537	188	45	1	5	49	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54538	188	35	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54548	305	2	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54549	305	31	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54550	305	32	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54551	305	33	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54552	305	34	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54553	305	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54608	194	35	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54695	204	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54741	214	2	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54838	306	21	1	5	6.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54845	254	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54846	254	31	1	5	7.21	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54847	254	32	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54848	254	33	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54849	254	34	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54850	254	45	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54851	254	35	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54861	308	21	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54874	224	45	1	5	49	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54901	228	2	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54915	230	2	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54916	230	19	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54917	230	32	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54980	240	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54981	240	19	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54982	240	45	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
54983	240	35	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55080	310	32	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55085	311	16	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55100	313	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55101	313	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55102	313	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55103	313	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55104	313	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55105	313	6	1	5	7.02	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55106	313	7	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55107	313	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55108	313	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55115	314	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55116	314	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55117	314	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55118	314	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55119	314	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55120	314	6	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55121	314	7	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55122	314	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55123	314	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55130	315	1	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55131	315	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55132	315	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55133	315	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55134	315	5	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55135	315	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55136	315	7	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55137	315	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55138	315	9	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55145	316	1	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55146	316	2	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55147	316	3	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55148	316	4	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55149	316	5	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55150	316	6	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55151	316	7	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55152	316	8	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55153	316	9	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55160	317	1	1	5	7.8499999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55161	317	2	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55162	317	3	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55163	317	4	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55164	317	5	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55165	317	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55166	317	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55167	317	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55168	317	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55175	318	1	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55176	318	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55177	318	3	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55178	318	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55179	318	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55180	318	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55181	318	7	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55182	318	8	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55183	318	9	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55190	319	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55191	319	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55192	319	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55193	319	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55194	319	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55195	319	6	1	5	7.5599999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55196	319	7	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55197	319	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55198	319	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55205	320	1	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55206	320	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55207	320	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55208	320	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55209	320	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55210	320	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55211	320	7	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55212	320	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55213	320	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55220	321	1	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55221	321	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55222	321	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55223	321	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55224	321	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55225	321	6	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55226	321	7	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55227	321	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55228	321	9	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55235	322	1	1	5	7.1799998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55236	322	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55237	322	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55238	322	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55239	322	5	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55240	322	6	1	5	7.3299999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55241	322	7	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55242	322	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55243	322	9	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55250	323	1	1	5	9.1000004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55251	323	2	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55252	323	3	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55253	323	4	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55254	323	5	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55255	323	6	1	5	9.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55256	323	7	1	5	8.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55257	323	8	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55258	323	9	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55265	324	1	1	5	8.1400003	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55266	324	2	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55267	324	3	1	5	5.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55268	324	4	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55269	324	5	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55270	324	6	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55271	324	7	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55272	324	8	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55273	324	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55280	325	1	1	5	8.21	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55281	325	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55282	325	3	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55283	325	4	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55284	325	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55285	325	6	1	5	7.3899999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55286	325	7	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55287	325	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55288	325	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55295	326	1	1	5	7.0700002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55296	326	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55297	326	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55298	326	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55299	326	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55300	326	6	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55301	326	7	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55302	326	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55303	326	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55310	327	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55311	327	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55312	327	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55313	327	4	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55314	327	5	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55315	327	6	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55316	327	7	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55317	327	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55318	327	9	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55325	328	1	1	5	7.8899999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55326	328	2	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55327	328	3	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55328	328	4	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55329	328	5	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55330	328	6	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55331	328	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55332	328	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55333	328	9	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55340	329	1	1	5	8.5299997	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55341	329	2	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55342	329	3	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55343	329	4	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55344	329	5	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55345	329	6	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55346	329	7	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55347	329	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55348	329	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55355	330	1	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55356	330	2	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55357	330	3	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55358	330	4	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55359	330	5	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55360	330	6	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55361	330	7	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55362	330	8	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55363	330	9	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55370	331	1	1	5	7.8800001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55371	331	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55372	331	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55373	331	4	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55374	331	5	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55375	331	6	1	5	7.1599998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55376	331	7	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55377	331	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55378	331	9	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55385	332	1	1	5	7.3200002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55386	332	2	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55387	332	3	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55388	332	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55389	332	5	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55390	332	6	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55391	332	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55392	332	8	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55393	332	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55400	333	1	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55401	333	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55402	333	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55403	333	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55404	333	5	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55405	333	6	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55406	333	7	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55407	333	8	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55408	333	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55415	334	1	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55416	334	2	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55417	334	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55418	334	4	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55419	334	5	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55420	334	6	1	5	7.4299998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55421	334	7	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55422	334	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55423	334	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55430	335	1	1	5	8.3100004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55431	335	2	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55432	335	3	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55433	335	4	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55434	335	5	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55435	335	6	1	5	8.4300003	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55436	335	7	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55437	335	8	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55438	335	9	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55445	336	1	1	5	8.1300001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55446	336	2	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55447	336	3	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55448	336	4	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55449	336	5	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55450	336	6	1	5	7.5599999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55451	336	7	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55452	336	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55453	336	9	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55460	337	1	1	5	8.21	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55461	337	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55462	337	3	1	5	7.0599999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55463	337	4	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55464	337	5	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55465	337	6	1	5	8.4300003	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55466	337	7	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55467	337	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55468	337	9	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55475	338	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55476	338	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55477	338	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55478	338	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55479	338	5	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55480	338	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55481	338	7	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55482	338	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55483	338	9	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55490	339	1	1	5	9.0299997	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55491	339	2	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55492	339	3	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55493	339	4	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55494	339	5	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55495	339	6	1	5	7.54	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55496	339	7	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55497	339	8	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55498	339	9	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55505	340	1	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55506	340	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55507	340	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55508	340	4	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55509	340	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55510	340	6	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55511	340	7	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55512	340	8	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55513	340	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55520	341	1	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55521	341	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55522	341	3	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55523	341	4	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55524	341	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55525	341	6	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55526	341	7	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55527	341	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55528	341	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55535	342	1	1	5	8.2700005	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55536	342	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55537	342	3	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55538	342	4	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55539	342	5	1	5	9	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55540	342	6	1	5	7.6399999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55541	342	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55542	342	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55543	342	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55550	343	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55551	343	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55552	343	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55553	343	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55554	343	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55555	343	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55556	343	7	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55557	343	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55558	343	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55565	344	1	1	5	9.6400003	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55566	344	2	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55567	344	3	1	5	8.4300003	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55568	344	4	1	5	9.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55569	344	5	1	5	9.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55570	344	6	1	5	9.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55571	344	7	1	5	9.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55572	344	8	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55573	344	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55580	345	1	1	5	7.54	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55581	345	2	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55582	345	3	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55583	345	4	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55584	345	5	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55585	345	6	1	5	7.6999998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55586	345	7	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55587	345	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55588	345	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55595	346	1	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55596	346	2	1	5	7.3099999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55597	346	3	1	5	33	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55598	346	4	1	5	33	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55599	346	5	1	5	33	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55600	346	6	1	5	33	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55601	346	7	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55602	346	8	1	5	33	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55603	346	9	1	5	33	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55610	347	1	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55611	347	2	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55612	347	3	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55613	347	4	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55614	347	5	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55615	347	6	1	5	7.4299998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55616	347	7	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55617	347	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55618	347	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55625	348	1	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55626	348	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55627	348	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55628	348	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55629	348	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55630	348	6	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55631	348	7	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55632	348	8	1	5	49	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55633	348	9	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55640	349	1	1	5	49	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55641	349	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55642	349	3	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55643	349	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55644	349	7	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55645	350	1	1	5	7.8299999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55646	350	2	1	5	7.0599999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55647	350	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55648	350	4	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55649	350	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55650	350	6	1	5	8.5600004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55651	350	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55652	350	8	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55653	350	9	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55660	351	1	1	5	8.7600002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55661	351	2	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55662	351	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55663	351	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55664	351	5	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55665	351	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55666	351	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55667	351	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55668	351	9	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55675	352	1	1	5	7.1799998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55676	352	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55677	352	3	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55678	352	4	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55679	352	5	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55680	352	6	1	5	7.6799998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55681	352	7	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55682	352	8	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55683	352	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55690	353	1	1	5	8.4300003	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55691	353	2	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55692	353	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55693	353	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55694	353	5	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55695	353	6	1	5	8.1800003	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55696	353	7	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55697	353	8	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55698	353	9	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55705	354	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55706	354	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55707	354	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55708	354	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55709	354	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55710	354	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55711	354	7	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55712	354	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55713	354	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55720	355	1	1	5	7.48	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55721	355	2	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55722	355	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55723	355	4	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55724	355	5	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55725	355	6	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55726	355	7	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55727	355	8	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55728	355	9	1	5	8.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55735	356	1	1	5	7.6300001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55736	356	2	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55737	356	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55738	356	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55739	356	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55740	356	6	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55741	356	7	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55742	356	8	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55743	356	9	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55750	357	1	1	5	7.0599999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55751	357	2	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55752	357	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55753	357	4	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55754	357	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55755	357	6	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55756	357	7	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55757	357	8	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55758	357	9	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55765	358	1	1	5	7.5799999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55766	358	2	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55767	358	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55768	358	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55769	358	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55770	358	6	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55771	358	7	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55772	358	8	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55773	358	9	1	5	7.5799999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55780	359	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55781	359	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55782	359	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55783	359	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55784	359	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55785	359	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55786	359	7	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55787	359	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55788	359	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55795	360	1	1	5	49	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55796	360	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55797	360	3	1	5	49	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55798	360	4	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55799	360	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55800	360	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55801	360	7	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55802	360	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55803	360	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55810	361	1	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55811	361	2	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55812	361	3	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55813	361	4	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55814	361	5	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55815	361	6	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55816	361	7	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55817	361	8	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55818	361	9	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55825	362	1	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55826	362	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55827	362	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55828	362	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55829	362	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55830	362	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55831	362	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55832	362	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55833	362	9	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55840	363	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55841	363	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55842	363	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55843	363	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55844	363	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55845	363	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55846	363	7	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55847	363	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55848	363	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55855	364	1	1	5	7.4499998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55856	364	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55857	364	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55858	364	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55859	364	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55860	364	6	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55861	364	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55862	364	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55863	364	9	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55870	365	1	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55871	365	2	1	5	10	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55872	365	3	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55873	365	4	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55874	365	5	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55875	365	6	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55876	365	7	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55877	365	8	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55878	365	9	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55885	366	1	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55886	366	2	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55887	366	3	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55888	366	4	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55889	366	5	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55890	366	6	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55891	366	7	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55892	366	8	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55893	366	9	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55900	367	1	1	5	7.27	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55901	367	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55902	367	3	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55903	367	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55904	367	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55905	367	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55906	367	7	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55907	367	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55908	367	9	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55915	368	1	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55916	368	2	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55917	368	3	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55918	368	4	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55919	368	5	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55920	368	6	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55921	368	7	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55922	368	8	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55923	368	9	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55930	369	1	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55931	369	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55932	369	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55933	369	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55934	369	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55935	369	6	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55936	369	7	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55937	369	8	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55938	369	9	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55945	370	1	1	5	7.0999999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55946	370	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55947	370	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55948	370	4	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55949	370	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55950	370	6	1	5	7.8099999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55951	370	7	1	5	7.3400002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55952	370	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55953	370	9	1	5	8.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55960	371	1	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55961	371	2	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55962	371	3	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55963	371	4	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55964	371	5	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55965	371	6	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55966	371	7	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55967	371	8	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55968	371	9	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55975	372	1	1	5	7.6100001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55976	372	2	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55977	372	3	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55978	372	4	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55979	372	5	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55980	372	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55981	372	7	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55982	372	8	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55983	372	9	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55990	373	1	1	5	7.5500002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55991	373	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55992	373	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55993	373	4	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55994	373	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55995	373	6	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55996	373	7	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55997	373	8	1	5	7.8099999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
55998	373	9	1	5	9.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56005	374	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56006	374	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56007	374	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56008	374	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56009	374	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56010	374	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56011	374	7	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56012	374	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56013	374	9	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56020	375	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56021	375	2	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56022	375	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56023	375	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56024	375	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56025	375	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56026	375	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56027	375	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56028	375	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56035	376	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56036	376	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56037	376	3	1	5	7.0599999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56038	376	4	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56039	376	5	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56040	376	6	1	5	7.3099999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56041	376	7	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56042	376	8	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56043	376	9	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56050	377	1	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56051	377	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56052	377	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56053	377	4	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56054	377	5	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56055	377	6	1	5	7.1799998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56056	377	7	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56057	377	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56058	377	9	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56065	378	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56066	378	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56067	378	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56068	378	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56069	378	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56070	378	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56071	378	7	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56072	378	8	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56073	378	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56080	379	1	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56081	379	2	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56082	379	3	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56083	379	4	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56084	379	5	1	5	9.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56085	379	6	1	5	8.5900002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56086	379	7	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56087	379	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56088	379	9	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56095	380	1	1	5	7.04	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56096	380	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56097	380	3	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56098	380	4	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56099	380	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56100	380	6	1	5	7.8400002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56101	380	7	1	5	33	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56102	380	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56103	380	9	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56110	381	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56111	381	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56112	381	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56113	381	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56114	381	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56115	381	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56116	381	7	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56117	381	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56118	381	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56125	382	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56126	382	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56127	382	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56128	382	4	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56129	382	5	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56130	382	6	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56131	382	7	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56132	382	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56133	382	9	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56140	383	2	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56141	383	3	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56142	383	4	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56143	383	5	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56144	383	6	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56145	383	7	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56146	383	8	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56147	383	9	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56154	384	1	1	5	7.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56155	384	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56156	384	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56157	384	4	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56158	384	5	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56159	384	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56160	384	7	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56161	384	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56162	384	9	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56169	331	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56170	331	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56171	331	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56172	331	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56173	331	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56174	331	6	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56175	331	7	1	5	7.8699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56176	331	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56177	331	9	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56184	385	1	1	5	49	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56185	385	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56186	385	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56187	385	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56188	385	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56189	385	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56190	385	7	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56191	385	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56192	385	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56199	386	1	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56200	386	2	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56201	386	3	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56202	386	4	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56203	386	5	1	5	8.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56204	386	6	1	5	8.0600004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56205	386	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56206	386	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56207	386	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56214	387	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56215	387	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56216	387	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56217	387	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56218	387	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56219	387	6	1	5	7.3099999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56220	387	7	1	5	8.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56221	387	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56222	387	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56229	388	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56230	388	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56231	388	3	1	5	33	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56232	388	4	1	5	33	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56233	388	5	1	5	33	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56234	388	6	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56235	388	7	1	5	33	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56236	388	8	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56237	388	9	1	5	33	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56244	389	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56245	389	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56246	389	3	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56247	389	4	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56248	389	5	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56249	389	6	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56250	389	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56251	389	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56252	389	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56259	390	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56260	390	2	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56261	390	3	1	5	42	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56262	390	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56263	390	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56264	390	6	1	5	49	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56265	390	7	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56266	390	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56267	390	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56274	391	1	1	5	7.5599999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56275	391	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56276	391	3	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56277	391	4	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56278	391	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56279	391	6	1	5	9.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56280	391	7	1	5	8.6000004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56281	391	8	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56282	391	9	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56289	392	1	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56290	392	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56291	392	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56292	392	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56293	392	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56294	392	6	1	5	7.4000001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56295	392	7	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56296	392	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56297	392	9	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56304	393	1	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56305	393	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56306	393	3	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56307	393	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56308	393	5	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56309	393	6	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56310	393	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56311	393	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56312	393	9	1	5	7.1799998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56319	394	1	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56320	394	2	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56321	394	3	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56322	394	4	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56323	394	5	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56324	394	6	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56325	394	7	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56326	394	8	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56327	394	9	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56334	395	1	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56335	395	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56336	395	3	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56337	395	4	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56338	395	5	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56339	395	6	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56340	395	7	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56341	395	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56342	395	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56349	396	1	1	5	8.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56350	396	2	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56351	396	3	1	5	7.8099999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56352	396	4	1	5	8.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56353	396	5	1	5	9.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56354	396	6	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56355	396	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56356	396	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56357	396	9	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56364	397	1	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56365	397	2	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56366	397	3	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56367	397	4	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56368	397	5	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56369	397	6	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56370	397	7	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56371	397	8	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56372	397	9	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56379	398	1	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56380	398	2	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56381	398	3	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56382	398	4	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56383	398	5	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56384	398	6	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56385	398	7	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56386	398	8	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56387	398	9	1	5	0	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56394	399	1	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56395	399	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56396	399	3	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56397	399	4	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56398	399	5	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56399	399	6	1	5	7.6799998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56400	399	7	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56401	399	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56402	399	9	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56409	400	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56410	400	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56411	400	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56412	400	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56413	400	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56414	400	6	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56415	400	7	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56416	400	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56417	400	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56424	401	1	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56425	401	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56426	401	3	1	5	7.0599999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56427	401	4	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56428	401	5	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56429	401	6	1	5	8.3100004	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56430	401	7	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56431	401	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56432	401	9	1	5	7.3099999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56439	402	1	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56440	402	2	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56441	402	3	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56442	402	4	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56443	402	5	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56444	402	6	1	5	7.9000001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56445	402	7	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56446	402	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56447	402	9	1	5	7.75	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56454	403	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56455	403	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56456	403	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56457	403	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56458	403	5	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56459	403	6	1	5	7.0900002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56460	403	7	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56461	403	8	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56462	403	9	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56469	404	1	1	5	8.6199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56470	404	2	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56471	404	3	1	5	7.3699999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56472	404	4	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56473	404	5	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56474	404	6	1	5	8.4300003	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56475	404	7	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56476	404	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56477	404	9	1	5	7.25	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56484	405	1	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56485	405	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56486	405	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56487	405	4	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56488	405	5	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56489	405	6	1	5	7.6500001	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56490	405	7	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56491	405	8	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56492	405	9	1	5	7.4299998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56499	406	1	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56500	406	2	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56501	406	3	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56502	406	4	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56503	406	5	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56504	406	6	1	5	7.4299998	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56505	406	7	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56506	406	8	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56507	406	9	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56514	407	1	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56515	407	2	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56516	407	3	1	5	4	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56517	407	4	1	5	22	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56518	407	5	1	5	7.5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56519	407	6	1	5	7.3400002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56520	407	7	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56521	407	8	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56522	407	9	1	5	5	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56529	408	1	1	5	8.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56530	408	2	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56531	408	3	1	5	7	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56532	408	4	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56533	408	5	1	5	8	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56534	408	6	1	5	7.5900002	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56535	408	7	1	5	7.1199999	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56536	408	8	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56537	408	9	1	5	6	Pasaje Inicial	\N	\N	2008-07-15	\N	\N	2008-07-15	0	0	f	\N
56544	4	1	30	5	5	\N	\N	\N	\N	1	2	2010-02-25	0	0	f	\N
\.


--
-- Data for Name: periodos; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY periodos (periodoid, periodo, nivelid, cicloid, mes, anio, trimestre, condicion, cuatrimestre, semestre, orden, codigo, inicio, cierre, tipo, dias, id, secuencia, notaminima) FROM stdin;
1	Finales Anteriores	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	\N	\N
2	Año 2001	1	\N	0	0	0	\N	0	0	1	\N	\N	\N	0	0	0	\N	\N
3	Año 2002	1	\N	0	0	0	\N	0	0	2	\N	\N	\N	0	0	0	\N	\N
4	Año 2003	1	\N	0	0	0	\N	0	0	3	\N	\N	\N	0	0	0	\N	\N
5	1° Cuatrimestre 2004	1	4	2004	0	0	\N	1	0	4	\N	\N	\N	0	0	0	6014	\N
6	2° Cuatrimestre 2004	1	4	2004	0	0	\N	2	0	5	\N	\N	\N	0	0	0	6014	\N
7	Año 2004	1	4	0	0	0	\N	3	0	6	\N	\N	\N	0	0	0	6014	\N
8	Exámenes Marzo 2004	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6012	\N
9	Exámenes Agosto 2004	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6013	\N
10	Exámenes Dic/2004	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6014	\N
11	Examenes Marzo/2005	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6015	\N
12	Examenes Agosto 2005	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6016	\N
14	1º Cuatrimestre 2005	1	5	0	0	0	\N	1	0	0	\N	\N	\N	0	0	0	6016	\N
15	2º Cuatrimestre 2005	1	5	0	0	0	\N	2	0	0	\N	\N	\N	0	0	0	6016	\N
16	Año 2005	1	5	0	0	0	\N	3	0	0	\N	\N	\N	0	0	0	6016	\N
18	Exámenes Dic/2005	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6016	\N
19	Exámenes Mar/2006	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6017	\N
20	1º Cuatrimestre 2006	1	6	0	0	0	\N	1	0	1	\N	\N	\N	0	0	0	6017	\N
21	2ª Cuatrimestre 2006	1	6	0	0	0	\N	2	0	0	\N	\N	\N	0	0	0	6017	\N
22	Año 2006	1	6	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6017	\N
23	Examenes Agosto 2006	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6018	\N
24	Exámenes Dic/2006	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6019	\N
25	Exámenes Mar/2007	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6020	\N
26	1º Cuatrimestre 2007	1	7	0	0	0	\N	1	0	1	\N	\N	\N	0	0	0	6021	\N
27	2ª Cuatrimestre 2007	1	7	0	0	0	\N	2	0	0	\N	\N	\N	0	0	0	6021	\N
28	Año 2007	1	7	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6021	\N
29	Examenes Agosto 2007	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6022	\N
30	Exámenes Dic/2007	1	\N	0	0	0	\N	0	0	0	\N	\N	\N	0	0	0	6023	\N
\.


--
-- Data for Name: personal; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY personal (personalid, nombre, nro, tipodoc, nrodoc, pin, nacimiento, domicilio, localidad, cp, provincia, telefono, titulos, otorgadospor, fechaotorgamiento, apto, nombramiento, cuil, cargoid, seccionid) FROM stdin;
1	DIRECTOR	\N	DNI	999999	9999	1959-12-02	n/a	GONZALEZ CATAN	\N	\N	9999-9999	PROF.EN DISCIPLINAS INDUSTRIALES	INST.NAC.SUP.DEL PROF.TECNICO	1987	0	2003-02-15	\N	8	4
\.


--
-- Data for Name: planesestudio; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY planesestudio (planestudioid, planestudio, aprobadopor, carreraid, desde, hasta) FROM stdin;
1	Analista de sistemas 2003	Resolución Nº5817/03	1	\N	\N
\.


--
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY profesores (profesorid, personalid, comisionid, cargoid, revistaid, licencia, detalle, ref, id, __xmin) FROM stdin;
\.


--
-- Data for Name: revistas; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY revistas (revistaid, revista) FROM stdin;
1	Titular
2	Suplente
\.


--
-- Data for Name: sanciones; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY sanciones (sancionid, alumnoid, fecha, cantidad, tipo, detalle, parte) FROM stdin;
\.


--
-- Data for Name: secciones; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY secciones (seccionid, seccion) FROM stdin;
1	Maestranza
2	Primaria
3	Secundaria
4	Terciaria
\.


--
-- Data for Name: situaciones; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY situaciones (situacionid, situacion) FROM stdin;
1	Activa
2	Baja
3	Moroso
4	Incobrable
\.


--
-- Data for Name: titulos; Type: TABLE DATA; Schema: public; Owner: reingart
--

COPY titulos (tituloid, titulo, planestudioid, carreraid, cursoid) FROM stdin;
1	Técnico Superior en Análisis de Sistemas	1	1	3
\.


--
-- Name: alumnos_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY alumnos
    ADD CONSTRAINT alumnos_pk PRIMARY KEY (alumnoid);


--
-- Name: asignaturas_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY asignaturas
    ADD CONSTRAINT asignaturas_pk PRIMARY KEY (asignaturaid);


--
-- Name: calendario_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY calendario
    ADD CONSTRAINT calendario_pk PRIMARY KEY (id);


--
-- Name: calificaciones_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY calificaciones
    ADD CONSTRAINT calificaciones_pk PRIMARY KEY (calificacionid);


--
-- Name: cargos_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY cargos
    ADD CONSTRAINT cargos_pk PRIMARY KEY (cargoid);


--
-- Name: carreras_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY carreras
    ADD CONSTRAINT carreras_pk PRIMARY KEY (carreraid);


--
-- Name: catedras_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY catedras
    ADD CONSTRAINT catedras_pk PRIMARY KEY (catedraid);


--
-- Name: ciclos_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY ciclos
    ADD CONSTRAINT ciclos_pk PRIMARY KEY (cicloid);


--
-- Name: comisiones_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY comisiones
    ADD CONSTRAINT comisiones_pk PRIMARY KEY (comisionid);


--
-- Name: correlativas_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY correlativas
    ADD CONSTRAINT correlativas_pk PRIMARY KEY (correlativaid);


--
-- Name: cursos_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY cursos
    ADD CONSTRAINT cursos_pk PRIMARY KEY (cursoid);


--
-- Name: divisiones_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY divisiones
    ADD CONSTRAINT divisiones_pk PRIMARY KEY (divisionid);


--
-- Name: examenes_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY examenes
    ADD CONSTRAINT examenes_pk PRIMARY KEY (examenid);


--
-- Name: faltas_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY faltas
    ADD CONSTRAINT faltas_pk PRIMARY KEY (faltaid);


--
-- Name: inasistencias_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY inasistencias
    ADD CONSTRAINT inasistencias_pk PRIMARY KEY (inasistenciaid);


--
-- Name: inscripcionescomision_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY inscripcionescomision
    ADD CONSTRAINT inscripcionescomision_pk PRIMARY KEY (inscripcionid);


--
-- Name: inscripcionesdivision_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY inscripcionesdivision
    ADD CONSTRAINT inscripcionesdivision_pk PRIMARY KEY (inscripcionid);


--
-- Name: inscripcionesexamen_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY inscripcionesexamen
    ADD CONSTRAINT inscripcionesexamen_pk PRIMARY KEY (inscripcionid);


--
-- Name: materias_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY materias
    ADD CONSTRAINT materias_pk PRIMARY KEY (materiaid);


--
-- Name: niveles_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY niveles
    ADD CONSTRAINT niveles_pk PRIMARY KEY (nivelid);


--
-- Name: notas_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY notas
    ADD CONSTRAINT notas_pk PRIMARY KEY (notaid);


--
-- Name: periodos_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY periodos
    ADD CONSTRAINT periodos_pk PRIMARY KEY (periodoid);


--
-- Name: personal_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY personal
    ADD CONSTRAINT personal_pk PRIMARY KEY (personalid);


--
-- Name: planesestudio_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY planesestudio
    ADD CONSTRAINT planesestudio_pk PRIMARY KEY (planestudioid);


--
-- Name: profesores_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY profesores
    ADD CONSTRAINT profesores_pk PRIMARY KEY (profesorid);


--
-- Name: revistas_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY revistas
    ADD CONSTRAINT revistas_pk PRIMARY KEY (revistaid);


--
-- Name: sanciones_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY sanciones
    ADD CONSTRAINT sanciones_pk PRIMARY KEY (sancionid);


--
-- Name: secciones_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY secciones
    ADD CONSTRAINT secciones_pk PRIMARY KEY (seccionid);


--
-- Name: situaciones_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY situaciones
    ADD CONSTRAINT situaciones_pk PRIMARY KEY (situacionid);


--
-- Name: titulos_pk; Type: CONSTRAINT; Schema: public; Owner: reingart; Tablespace: 
--

ALTER TABLE ONLY titulos
    ADD CONSTRAINT titulos_pk PRIMARY KEY (tituloid);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

