PGDMP     (                    {            gia_admin_data    15.2    15.2 ?    F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            I           1262    34049    gia_admin_data    DATABASE     �   CREATE DATABASE gia_admin_data WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE gia_admin_data;
                postgres    false            �            1259    34141 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    34140    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    215            J           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    214            �            1259    34263    order_items    TABLE     �   CREATE TABLE public.order_items (
    id integer NOT NULL,
    product_title character varying NOT NULL,
    price integer NOT NULL,
    quantity integer NOT NULL,
    order_id integer
);
    DROP TABLE public.order_items;
       public         heap    postgres    false            �            1259    34262    order_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.order_items_id_seq;
       public          postgres    false    226            K           0    0    order_items_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;
          public          postgres    false    225            �            1259    34272    orders    TABLE     �   CREATE TABLE public.orders (
    id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    email character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    34271    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    228            L           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    227            �            1259    34202    permissions    TABLE     b   CREATE TABLE public.permissions (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.permissions;
       public         heap    postgres    false            �            1259    34201    permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    217            M           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    216            �            1259    34254    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    title character varying NOT NULL,
    image character varying NOT NULL,
    description character varying NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    34253    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    224            N           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    223            �            1259    34230    role_permissions    TABLE     k   CREATE TABLE public.role_permissions (
    role_id integer NOT NULL,
    permission_id integer NOT NULL
);
 $   DROP TABLE public.role_permissions;
       public         heap    postgres    false            �            1259    34211    roles    TABLE     \   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    34210    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    219            O           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    218            �            1259    34220    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    role_id integer
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    34219    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    221            P           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    220            �           2604    34144    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    34266    order_items id    DEFAULT     p   ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);
 =   ALTER TABLE public.order_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    34275 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    34205    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    34257    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    34214    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    34223    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            6          0    34141 
   migrations 
   TABLE DATA           ;   COPY public.migrations (id, "timestamp", name) FROM stdin;
    public          postgres    false    215   ~G       A          0    34263    order_items 
   TABLE DATA           S   COPY public.order_items (id, product_title, price, quantity, order_id) FROM stdin;
    public          postgres    false    226   �G       C          0    34272    orders 
   TABLE DATA           N   COPY public.orders (id, first_name, last_name, email, created_at) FROM stdin;
    public          postgres    false    228   �G       8          0    34202    permissions 
   TABLE DATA           /   COPY public.permissions (id, name) FROM stdin;
    public          postgres    false    217   (H       ?          0    34254    products 
   TABLE DATA           H   COPY public.products (id, title, image, description, price) FROM stdin;
    public          postgres    false    224   �H       =          0    34230    role_permissions 
   TABLE DATA           B   COPY public.role_permissions (role_id, permission_id) FROM stdin;
    public          postgres    false    222   �H       :          0    34211    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    219   �H       <          0    34220    users 
   TABLE DATA           T   COPY public.users (id, first_name, last_name, email, password, role_id) FROM stdin;
    public          postgres    false    221   I       Q           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 1, true);
          public          postgres    false    214            R           0    0    order_items_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.order_items_id_seq', 1, false);
          public          postgres    false    225            S           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 1, false);
          public          postgres    false    227            T           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);
          public          postgres    false    216            U           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 1, true);
          public          postgres    false    223            V           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    218            W           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 5, true);
          public          postgres    false    220            �           2606    34270 *   order_items PK_005269d8574e6fac0493715c308 
   CONSTRAINT     j   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT "PK_005269d8574e6fac0493715c308" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.order_items DROP CONSTRAINT "PK_005269d8574e6fac0493715c308";
       public            postgres    false    226            �           2606    34261 '   products PK_0806c755e0aca124e67c0cf6d7d 
   CONSTRAINT     g   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "PK_0806c755e0aca124e67c0cf6d7d" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.products DROP CONSTRAINT "PK_0806c755e0aca124e67c0cf6d7d";
       public            postgres    false    224            �           2606    34234 /   role_permissions PK_25d24010f53bb80b78e412c9656 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT "PK_25d24010f53bb80b78e412c9656" PRIMARY KEY (role_id, permission_id);
 [   ALTER TABLE ONLY public.role_permissions DROP CONSTRAINT "PK_25d24010f53bb80b78e412c9656";
       public            postgres    false    222    222            �           2606    34280 %   orders PK_710e2d4957aa5878dfe94e4ac2f 
   CONSTRAINT     e   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "PK_710e2d4957aa5878dfe94e4ac2f" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.orders DROP CONSTRAINT "PK_710e2d4957aa5878dfe94e4ac2f";
       public            postgres    false    228            �           2606    34148 )   migrations PK_8c82d7f526340ab734260ea46be 
   CONSTRAINT     i   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.migrations DROP CONSTRAINT "PK_8c82d7f526340ab734260ea46be";
       public            postgres    false    215            �           2606    34209 *   permissions PK_920331560282b8bd21bb02290df 
   CONSTRAINT     j   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT "PK_920331560282b8bd21bb02290df" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.permissions DROP CONSTRAINT "PK_920331560282b8bd21bb02290df";
       public            postgres    false    217            �           2606    34227 $   users PK_a3ffb1c0c8416b9fc6f907b7433 
   CONSTRAINT     d   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433";
       public            postgres    false    221            �           2606    34218 $   roles PK_c1433d71a4838793a49dcad46ab 
   CONSTRAINT     d   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT "PK_c1433d71a4838793a49dcad46ab" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.roles DROP CONSTRAINT "PK_c1433d71a4838793a49dcad46ab";
       public            postgres    false    219            �           2606    34229 $   users UQ_97672ac88f789774dd47f7c8be3 
   CONSTRAINT     b   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "UQ_97672ac88f789774dd47f7c8be3" UNIQUE (email);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "UQ_97672ac88f789774dd47f7c8be3";
       public            postgres    false    221            �           1259    34236    IDX_17022daf3f885f7d35423e9971    INDEX     f   CREATE INDEX "IDX_17022daf3f885f7d35423e9971" ON public.role_permissions USING btree (permission_id);
 4   DROP INDEX public."IDX_17022daf3f885f7d35423e9971";
       public            postgres    false    222            �           1259    34235    IDX_178199805b901ccd220ab7740e    INDEX     `   CREATE INDEX "IDX_178199805b901ccd220ab7740e" ON public.role_permissions USING btree (role_id);
 4   DROP INDEX public."IDX_178199805b901ccd220ab7740e";
       public            postgres    false    222            �           2606    34281 *   order_items FK_145532db85752b29c57d2b7b1f1    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT "FK_145532db85752b29c57d2b7b1f1" FOREIGN KEY (order_id) REFERENCES public.orders(id);
 V   ALTER TABLE ONLY public.order_items DROP CONSTRAINT "FK_145532db85752b29c57d2b7b1f1";
       public          postgres    false    3234    226    228            �           2606    34247 /   role_permissions FK_17022daf3f885f7d35423e9971e    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT "FK_17022daf3f885f7d35423e9971e" FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.role_permissions DROP CONSTRAINT "FK_17022daf3f885f7d35423e9971e";
       public          postgres    false    217    222    3218            �           2606    34242 /   role_permissions FK_178199805b901ccd220ab7740ec    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT "FK_178199805b901ccd220ab7740ec" FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.role_permissions DROP CONSTRAINT "FK_178199805b901ccd220ab7740ec";
       public          postgres    false    3220    219    222            �           2606    34237 $   users FK_a2cecd1a3531c0b041e29ba46e1    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "FK_a2cecd1a3531c0b041e29ba46e1" FOREIGN KEY (role_id) REFERENCES public.roles(id);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "FK_a2cecd1a3531c0b041e29ba46e1";
       public          postgres    false    221    3220    219            6      x������ � �      A   1   x�ƹ  ��Tc�.����`�M$)�q���PAa5��wI�B�      C   <   x�3�LA�D���\N##c]s]CCc+S+Ss=3CK.#�$tH"�0F��� @�      8   L   x�3�,�L-�/-N-*�2�LM�,�r�!2E�9��\&�"SP��R�\R�e����!��E) s, �P^� i�(      ?   %   x�3�,(�O)M.���MLO�LI-N�42������ �	      =      x�3�4����� r!      :   .   x�3�tM�,�/�2��L-O-�2�I-.29Sr3�b���� �M
�      <   �   x�M�;�0  й=s��|640��V>[�TQ<����?�̣�r@љ�ueb���<�M�<1-��:j����t;�	ϫ�/�o\H�Ýpwpo�0\6��2{#Y�a̱!�=Ox7�̪�H�'���j�N7>��A��J7�� �?�`.W     