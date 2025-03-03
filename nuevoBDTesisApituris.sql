PGDMP     	                     }         	   TurismoBD    15.4    15.4 0    .           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            /           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            0           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            1           1262    38269 	   TurismoBD    DATABASE     ~   CREATE DATABASE "TurismoBD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "TurismoBD";
                postgres    false            �            1259    38271 	   Categoria    TABLE     �   CREATE TABLE public."Categoria" (
    "IdCategoria" integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(100) NOT NULL,
    estado integer NOT NULL
);
    DROP TABLE public."Categoria";
       public         heap    postgres    false            �            1259    38270    Categoria_IdCategoria_seq    SEQUENCE     �   CREATE SEQUENCE public."Categoria_IdCategoria_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Categoria_IdCategoria_seq";
       public          postgres    false    215            2           0    0    Categoria_IdCategoria_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Categoria_IdCategoria_seq" OWNED BY public."Categoria"."IdCategoria";
          public          postgres    false    214            �            1259    38296    Historia    TABLE     �   CREATE TABLE public."Historia" (
    "IdHistoria" integer NOT NULL,
    fecha date[] NOT NULL,
    descripcion character varying NOT NULL,
    estado integer NOT NULL,
    "fkMonumentos" integer NOT NULL
);
    DROP TABLE public."Historia";
       public         heap    postgres    false            �            1259    38295    Historia_IdHistoria_seq    SEQUENCE     �   CREATE SEQUENCE public."Historia_IdHistoria_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Historia_IdHistoria_seq";
       public          postgres    false    217            3           0    0    Historia_IdHistoria_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Historia_IdHistoria_seq" OWNED BY public."Historia"."IdHistoria";
          public          postgres    false    216            �            1259    38353 
   Monumentos    TABLE     �  CREATE TABLE public."Monumentos" (
    "idMonumentos" integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(500) NOT NULL,
    imagen bytea NOT NULL,
    modelo_3d bytea NOT NULL,
    "puntosInteres" json NOT NULL,
    fechacreacion date NOT NULL,
    fechamodificacion time with time zone NOT NULL,
    estado integer NOT NULL,
    "fkCategoria" integer NOT NULL,
    "fkUbicacion" integer NOT NULL
);
     DROP TABLE public."Monumentos";
       public         heap    postgres    false            �            1259    38352    Monumentos_idMonumentos_seq    SEQUENCE     �   CREATE SEQUENCE public."Monumentos_idMonumentos_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."Monumentos_idMonumentos_seq";
       public          postgres    false    225            4           0    0    Monumentos_idMonumentos_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."Monumentos_idMonumentos_seq" OWNED BY public."Monumentos"."idMonumentos";
          public          postgres    false    224            �            1259    38344 	   Ubicacion    TABLE     �   CREATE TABLE public."Ubicacion" (
    "IdUbicacion" integer NOT NULL,
    latitud numeric(10,6)[] NOT NULL,
    longitud numeric(10,6)[] NOT NULL,
    direccion character varying(100) NOT NULL,
    estado integer NOT NULL
);
    DROP TABLE public."Ubicacion";
       public         heap    postgres    false            �            1259    38343    Ubicacion_IdUbicacion_seq    SEQUENCE     �   CREATE SEQUENCE public."Ubicacion_IdUbicacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Ubicacion_IdUbicacion_seq";
       public          postgres    false    223            5           0    0    Ubicacion_IdUbicacion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Ubicacion_IdUbicacion_seq" OWNED BY public."Ubicacion"."IdUbicacion";
          public          postgres    false    222            �            1259    38321    Usuario    TABLE       CREATE TABLE public."Usuario" (
    "IdUsuario" integer NOT NULL,
    nombre character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    "contraseña" character varying(100) NOT NULL,
    rol character varying(20) NOT NULL,
    estado integer NOT NULL
);
    DROP TABLE public."Usuario";
       public         heap    postgres    false            �            1259    38320    Usuario_IdUsuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuario_IdUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Usuario_IdUsuario_seq";
       public          postgres    false    219            6           0    0    Usuario_IdUsuario_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Usuario_IdUsuario_seq" OWNED BY public."Usuario"."IdUsuario";
          public          postgres    false    218            �            1259    38335    Visitas    TABLE     �   CREATE TABLE public."Visitas" (
    "IdVisitas" integer NOT NULL,
    fecha timestamp with time zone NOT NULL,
    comentario text NOT NULL,
    estado integer NOT NULL,
    fkusuario integer NOT NULL,
    fkmonumento integer NOT NULL
);
    DROP TABLE public."Visitas";
       public         heap    postgres    false            �            1259    38334    Visitas_IdVisitas_seq    SEQUENCE     �   CREATE SEQUENCE public."Visitas_IdVisitas_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Visitas_IdVisitas_seq";
       public          postgres    false    221            7           0    0    Visitas_IdVisitas_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Visitas_IdVisitas_seq" OWNED BY public."Visitas"."IdVisitas";
          public          postgres    false    220            ~           2604    38274    Categoria IdCategoria    DEFAULT     �   ALTER TABLE ONLY public."Categoria" ALTER COLUMN "IdCategoria" SET DEFAULT nextval('public."Categoria_IdCategoria_seq"'::regclass);
 H   ALTER TABLE public."Categoria" ALTER COLUMN "IdCategoria" DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    38299    Historia IdHistoria    DEFAULT     �   ALTER TABLE ONLY public."Historia" ALTER COLUMN "IdHistoria" SET DEFAULT nextval('public."Historia_IdHistoria_seq"'::regclass);
 F   ALTER TABLE public."Historia" ALTER COLUMN "IdHistoria" DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    38356    Monumentos idMonumentos    DEFAULT     �   ALTER TABLE ONLY public."Monumentos" ALTER COLUMN "idMonumentos" SET DEFAULT nextval('public."Monumentos_idMonumentos_seq"'::regclass);
 J   ALTER TABLE public."Monumentos" ALTER COLUMN "idMonumentos" DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    38347    Ubicacion IdUbicacion    DEFAULT     �   ALTER TABLE ONLY public."Ubicacion" ALTER COLUMN "IdUbicacion" SET DEFAULT nextval('public."Ubicacion_IdUbicacion_seq"'::regclass);
 H   ALTER TABLE public."Ubicacion" ALTER COLUMN "IdUbicacion" DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    38324    Usuario IdUsuario    DEFAULT     |   ALTER TABLE ONLY public."Usuario" ALTER COLUMN "IdUsuario" SET DEFAULT nextval('public."Usuario_IdUsuario_seq"'::regclass);
 D   ALTER TABLE public."Usuario" ALTER COLUMN "IdUsuario" DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    38338    Visitas IdVisitas    DEFAULT     |   ALTER TABLE ONLY public."Visitas" ALTER COLUMN "IdVisitas" SET DEFAULT nextval('public."Visitas_IdVisitas_seq"'::regclass);
 D   ALTER TABLE public."Visitas" ALTER COLUMN "IdVisitas" DROP DEFAULT;
       public          postgres    false    220    221    221            !          0    38271 	   Categoria 
   TABLE DATA           Q   COPY public."Categoria" ("IdCategoria", nombre, descripcion, estado) FROM stdin;
    public          postgres    false    215   �9       #          0    38296    Historia 
   TABLE DATA           ^   COPY public."Historia" ("IdHistoria", fecha, descripcion, estado, "fkMonumentos") FROM stdin;
    public          postgres    false    217   �9       +          0    38353 
   Monumentos 
   TABLE DATA           �   COPY public."Monumentos" ("idMonumentos", nombre, descripcion, imagen, modelo_3d, "puntosInteres", fechacreacion, fechamodificacion, estado, "fkCategoria", "fkUbicacion") FROM stdin;
    public          postgres    false    225   :       )          0    38344 	   Ubicacion 
   TABLE DATA           Z   COPY public."Ubicacion" ("IdUbicacion", latitud, longitud, direccion, estado) FROM stdin;
    public          postgres    false    223   !:       %          0    38321    Usuario 
   TABLE DATA           [   COPY public."Usuario" ("IdUsuario", nombre, email, "contraseña", rol, estado) FROM stdin;
    public          postgres    false    219   >:       '          0    38335    Visitas 
   TABLE DATA           c   COPY public."Visitas" ("IdVisitas", fecha, comentario, estado, fkusuario, fkmonumento) FROM stdin;
    public          postgres    false    221   [:       8           0    0    Categoria_IdCategoria_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Categoria_IdCategoria_seq"', 1, false);
          public          postgres    false    214            9           0    0    Historia_IdHistoria_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Historia_IdHistoria_seq"', 1, false);
          public          postgres    false    216            :           0    0    Monumentos_idMonumentos_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Monumentos_idMonumentos_seq"', 1, false);
          public          postgres    false    224            ;           0    0    Ubicacion_IdUbicacion_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Ubicacion_IdUbicacion_seq"', 1, false);
          public          postgres    false    222            <           0    0    Usuario_IdUsuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Usuario_IdUsuario_seq"', 1, false);
          public          postgres    false    218            =           0    0    Visitas_IdVisitas_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Visitas_IdVisitas_seq"', 1, false);
          public          postgres    false    220            �           2606    38276    Categoria Categoria_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Categoria"
    ADD CONSTRAINT "Categoria_pkey" PRIMARY KEY ("IdCategoria");
 F   ALTER TABLE ONLY public."Categoria" DROP CONSTRAINT "Categoria_pkey";
       public            postgres    false    215            �           2606    38303    Historia Historia_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Historia"
    ADD CONSTRAINT "Historia_pkey" PRIMARY KEY ("IdHistoria");
 D   ALTER TABLE ONLY public."Historia" DROP CONSTRAINT "Historia_pkey";
       public            postgres    false    217            �           2606    38360    Monumentos Monumentos_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Monumentos"
    ADD CONSTRAINT "Monumentos_pkey" PRIMARY KEY ("idMonumentos");
 H   ALTER TABLE ONLY public."Monumentos" DROP CONSTRAINT "Monumentos_pkey";
       public            postgres    false    225            �           2606    38351    Ubicacion Ubicacion_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Ubicacion"
    ADD CONSTRAINT "Ubicacion_pkey" PRIMARY KEY ("IdUbicacion");
 F   ALTER TABLE ONLY public."Ubicacion" DROP CONSTRAINT "Ubicacion_pkey";
       public            postgres    false    223            �           2606    38326    Usuario Usuario_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Usuario_pkey" PRIMARY KEY ("IdUsuario");
 B   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT "Usuario_pkey";
       public            postgres    false    219            �           2606    38342    Visitas Visitas_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Visitas"
    ADD CONSTRAINT "Visitas_pkey" PRIMARY KEY ("IdVisitas");
 B   ALTER TABLE ONLY public."Visitas" DROP CONSTRAINT "Visitas_pkey";
       public            postgres    false    221            �           2606    38361    Monumentos relacion1a1    FK CONSTRAINT     �   ALTER TABLE ONLY public."Monumentos"
    ADD CONSTRAINT relacion1a1 FOREIGN KEY ("idMonumentos") REFERENCES public."Ubicacion"("IdUbicacion") NOT VALID;
 B   ALTER TABLE ONLY public."Monumentos" DROP CONSTRAINT relacion1a1;
       public          postgres    false    3213    225    223            �           2606    38366    Ubicacion relacionU    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ubicacion"
    ADD CONSTRAINT "relacionU" FOREIGN KEY ("IdUbicacion") REFERENCES public."Monumentos"("idMonumentos") NOT VALID;
 A   ALTER TABLE ONLY public."Ubicacion" DROP CONSTRAINT "relacionU";
       public          postgres    false    3215    225    223            !      x������ � �      #      x������ � �      +      x������ � �      )      x������ � �      %      x������ � �      '      x������ � �     