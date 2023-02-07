PGDMP                         {            MoviesDB    15.1    15.1     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16426    MoviesDB    DATABASE     �   CREATE DATABASE "MoviesDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "MoviesDB";
                postgres    false                        2615    49210    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false                       0    0    SCHEMA public    COMMENT         COMMENT ON SCHEMA public IS '';
                   postgres    false    5                       0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                   postgres    false    5            �            1259    49229    Movie    TABLE     ,  CREATE TABLE public."Movie" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    title text NOT NULL,
    director text NOT NULL,
    genre text NOT NULL,
    released text NOT NULL
);
    DROP TABLE public."Movie";
       public         heap    postgres    false    5            �            1259    49220    User    TABLE     H  CREATE TABLE public."User" (
    id text NOT NULL,
    email text NOT NULL,
    "hashedPassword" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "isPremium" boolean NOT NULL,
    "limit" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public."User";
       public         heap    postgres    false    5            �            1259    49211    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false    5                      0    49229    Movie 
   TABLE DATA           a   COPY public."Movie" (id, "createdAt", "updatedAt", title, director, genre, released) FROM stdin;
    public          postgres    false    216   �                 0    49220    User 
   TABLE DATA           m   COPY public."User" (id, email, "hashedPassword", "createdAt", "updatedAt", "isPremium", "limit") FROM stdin;
    public          postgres    false    215   �                 0    49211    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    214   u       r           2606    49219 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    214            u           1259    49235    Movie_id_key    INDEX     G   CREATE UNIQUE INDEX "Movie_id_key" ON public."Movie" USING btree (id);
 "   DROP INDEX public."Movie_id_key";
       public            postgres    false    216            s           1259    49228    User_email_key    INDEX     K   CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);
 $   DROP INDEX public."User_email_key";
       public            postgres    false    215            t           1259    49227    User_id_key    INDEX     E   CREATE UNIQUE INDEX "User_id_key" ON public."User" USING btree (id);
 !   DROP INDEX public."User_id_key";
       public            postgres    false    215               �  x��X�n�}&�b>�=鮮��M��,��&��� /}���H���(_�������%�;�ytM��ԩ	.d�=�,	$E�M	�j�6�Z�-H������+
+���v���R�wq��^�۸/���v[���|\�o���n�������k�a�P�{_s���KӤ���0d�`׊��a��s	���f�b�Vj��>��:/>ƻz���s��.���]|�]�@6ׅ
O,�[�U����E�'�D��D	Q֒Zl�G���ިqbN�u-�/������m�)��q��>����w9z�������z��/�O�vx�Z��}1H{��E��	cd�E��m�p+z�4��G��^|�����v{8"Cߕ�чx��<�J�Rk�d��,��d�J��"�o!�?��Wү��u���?v��/�z.ҧ�ñ�^ZF�����PfYMc)S�(�Kɗ Z.)ˤ9N���Y�s=���4��1)���i����Grw�e?0�r�I_�еh��{�C;k���MEV��+�Y��M�VVfac�t�oE�:�!�T�A���J�^�y��,Zp&d��C.�h_��X�B��L4e{�,�Ģ�ŧ�x�}�o�x��Ÿ,nnw��s�~W���p�:�!s�r)�&$+���hR����4�_JƧ(5e+�ny �DL����\2N�q�A��L2�_JF*���İ�!)��$����j���@?LO~��Jn��ZPė��d�&L��l����cj5�_J&��E9Dw9!/�Dl�	=�2LQ�Edjt��
�)�pQ�A�,�?J��5�S)�qL�Ҿ�2�◒Q���мd��٣Ub��Pv���,'cmVF�^O���_}�Ǹi���!n��-�u��E�N<lL�*Gi��a)m���:�NX逩���N��&���l"A�u�H�Mė��D�b��!DF������p��H\� V04V�����C�'�s����\T��`�\yk��f(�*ә�d�/��C%�I*����'sq$R�,Z`r��	����J�^�1��v�x������M�����!n�߶�0Uj(�JIY0F
����ӆ�HaU�q1�0��X�N��(��Lq<�D|prJ��Ydg��A�����L���Q��H'RR�C4��m�8����B������&;���Y/���o��$��z�����n���x£׆{��F&�d��0�F���fA�Նm �w.�����|�_F�k�P����.�Tmr"��[�gB��-��Q�����a!�\��ӹ�U5�5dKgBB3���/,P4�s�D1��4�~��ђP �J�㐃`P��9����X���eq���6�!��_��|�Z\�>��U�n�Iy�pp>yh�rRDlH��#)����L?�g��t̑n��z����{����h�'��`��djN��iH�t`���0,��k�c��5�8iUd���
'�xbN��i���[�<�]5<�6<Yg��+�IA܊���r�op�Zw��ݧ�ï��n6k��׻�v߮����6-��nT�KIN�Ԥx4p�*EI+�25'e���6%5L�1�������X���>�m�aSׇ|{�]˰��+��k�6*�WQ@��(�t՜UӠ�aϐy�/%�}�5b^08jPX,?��Mm�{g�dPԸ��<�����������ߥ��b��>K�\��ƃCB`�
"���'��3%����������ELBa���a��ፆ�Ö�3.�I��`��Xv_��x`�)IG2��a+2����@3T��P�z���&�x�=�h�*Q�ׂo��<Vҏ�p�	��]�t��P6_�� ��g͂����@�4��q���~)eR5��>����U%��L����3�"��/&�����8b�5����M�^EOe�Z�[PX�p��7�R2��*x��f���ByI-tn�LP��[���-e/):!]���r( �������l�B��x��K���_.��)         �  x�u�MW*9�5��Y�MS�T�N��T�Q9rf�t'W@A��_[f3���r�Փ��L���3t$),F)��JȜ�2�(v�������-ʶ�+tW��Y�n��0ҋ��V�-���t����}��m��������75���l �`��\$�(����4������:@,�H#��L�^*wr gc}V��P��^97��o|�7^<����3r����i�p�M�Ntƭ��GzIkA����+e"uJ5B����;�a�`�,��e����#qf�%����>��p*�j����Bl�S����v�{���s����ZO� ٪3�LHW���Ϳ�D��3h���A3��1�Ν���R�Ӄ�~���F|�*_{�`�>���ZQ{�h�sf���׬M�>u�IF���?s�@�
q�IWe�f��X*�L��eN1+�e�����HqvV�r?������2���\��cZ�*�9Z�\�?�S���j;����az=�-��	Q�\��(!"���릇L����02޳�+`�|�<X��Ju�4܌`��և�^|nZwo�{�Ͻ���UvUX�r2�^˪�[?{,�a<����	"��ܥ�674sFܸ�|���S����}>�R�7��.����˂��CqJ����~<>Ȝ�
<�w랟�X�a]W"$�"N��c��:��j�5����1�         K  x���I�$GE�Q��^xa�P��	�A�J��-U��,����#,�����)U䴜!MH{�X޺-��s��cL��Y ӧ2�Mp���}8o�ivTf���hwԘqj`������R}�w���`�)�����?׷?n�gu�y+×����a`n#���4����~-Z�}��6<OpWWChk�&��a��$u����9�*Z<��3x�~����'�01��amx��'ua��5�r�c��q���pA����u_����tB:����b��A���k! �Sz� ��jD+�N���l��h�z����r�]�mY,6��$3֩��"�މ:tnXKi�gt�%�>�H�Gz&����x�_��Đ�V�X�h�os�����ż�/.U�Pj"!��4 T��=Y�f��H�H�HS��� ��A��'��;�I�J�&�����n$��u�8;��j���ep��P�1"�r�1��QE���`7�S ��P���;��?���K���&E��˵��60z�]���|�<�N�H�ܸ�*!iz��<	}J�ܬ��Gٵ�"���i�	E�:������I��%)�;}PW`����DG��,���!b��at������n�9�6�X�w���U2���^�k�&޸�|� {S~U���#=�����:�t&���ay��Gvj�˷Eî��? {V��R�Wtba� u����sp�8f8d��Ĥ|x��x� � �/���K���Ŏmo�V������8>]r^�/�=u"��(�2���0$���9>��읷`y���t�����1�(�����慯����#A�������T��
     