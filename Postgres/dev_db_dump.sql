PGDMP      	                |            DevDB    16.3 (Debian 16.3-1.pgdg120+1)    16.3 (Debian 16.3-1.pgdg120+1)     .           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            /           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            0           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            1           1262    16384    DevDB    DATABASE     r   CREATE DATABASE "DevDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE "DevDB";
                postgres    false            �            1259    16385 
   DeviceData    TABLE     �   CREATE TABLE public."DeviceData" (
    "DeviceDataId" uuid NOT NULL,
    "SerialNumber" text NOT NULL,
    "Status" integer NOT NULL,
    "SoilMoisture" integer NOT NULL,
    "Date" timestamp with time zone NOT NULL
);
     DROP TABLE public."DeviceData";
       public         heap    postgres    false            �            1259    16390    Devices    TABLE     �   CREATE TABLE public."Devices" (
    "SerialNumber" text NOT NULL,
    "Password" bytea NOT NULL,
    "Salt" bytea NOT NULL,
    "UserId" uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid
);
    DROP TABLE public."Devices";
       public         heap    postgres    false            �            1259    16395    Users    TABLE     �   CREATE TABLE public."Users" (
    "UserId" uuid NOT NULL,
    "Name" text NOT NULL,
    "LastName" text NOT NULL,
    "Email" text NOT NULL,
    "Password" bytea NOT NULL,
    "Salt" bytea NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    16400    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         heap    postgres    false            (          0    16385 
   DeviceData 
   TABLE DATA           h   COPY public."DeviceData" ("DeviceDataId", "SerialNumber", "Status", "SoilMoisture", "Date") FROM stdin;
    public          postgres    false    215            )          0    16390    Devices 
   TABLE DATA           Q   COPY public."Devices" ("SerialNumber", "Password", "Salt", "UserId") FROM stdin;
    public          postgres    false    216            *          0    16395    Users 
   TABLE DATA           \   COPY public."Users" ("UserId", "Name", "LastName", "Email", "Password", "Salt") FROM stdin;
    public          postgres    false    217            +          0    16400    __EFMigrationsHistory 
   TABLE DATA           R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public          postgres    false    218            �           2606    16404    DeviceData PK_DeviceData 
   CONSTRAINT     f   ALTER TABLE ONLY public."DeviceData"
    ADD CONSTRAINT "PK_DeviceData" PRIMARY KEY ("DeviceDataId");
 F   ALTER TABLE ONLY public."DeviceData" DROP CONSTRAINT "PK_DeviceData";
       public            postgres    false    215            �           2606    16406    Devices PK_Devices 
   CONSTRAINT     `   ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "PK_Devices" PRIMARY KEY ("SerialNumber");
 @   ALTER TABLE ONLY public."Devices" DROP CONSTRAINT "PK_Devices";
       public            postgres    false    216            �           2606    16408    Users PK_Users 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "PK_Users" PRIMARY KEY ("UserId");
 <   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "PK_Users";
       public            postgres    false    217            �           2606    16410 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public            postgres    false    218            �           1259    16411    IX_Devices_UserId    INDEX     M   CREATE INDEX "IX_Devices_UserId" ON public."Devices" USING btree ("UserId");
 '   DROP INDEX public."IX_Devices_UserId";
       public            postgres    false    216            �           2606    16412    Devices FK_Devices_Users_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "FK_Devices_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("UserId");
 M   ALTER TABLE ONLY public."Devices" DROP CONSTRAINT "FK_Devices_Users_UserId";
       public          postgres    false    216    217    3221            (      x������ � �      )      x������ � �      *      x������ � �      +   1   x�32021066424150�w.JM,IuI,ILJ,N��3�3����� ��
:          .           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            /           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            0           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            1           1262    16384    DevDB    DATABASE     r   CREATE DATABASE "DevDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE "DevDB";
                postgres    false            �            1259    16385 
   DeviceData    TABLE     �   CREATE TABLE public."DeviceData" (
    "DeviceDataId" uuid NOT NULL,
    "SerialNumber" text NOT NULL,
    "Status" integer NOT NULL,
    "SoilMoisture" integer NOT NULL,
    "Date" timestamp with time zone NOT NULL
);
     DROP TABLE public."DeviceData";
       public         heap    postgres    false            �            1259    16390    Devices    TABLE     �   CREATE TABLE public."Devices" (
    "SerialNumber" text NOT NULL,
    "Password" bytea NOT NULL,
    "Salt" bytea NOT NULL,
    "UserId" uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid
);
    DROP TABLE public."Devices";
       public         heap    postgres    false            �            1259    16395    Users    TABLE     �   CREATE TABLE public."Users" (
    "UserId" uuid NOT NULL,
    "Name" text NOT NULL,
    "LastName" text NOT NULL,
    "Email" text NOT NULL,
    "Password" bytea NOT NULL,
    "Salt" bytea NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    16400    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         heap    postgres    false            (          0    16385 
   DeviceData 
   TABLE DATA           h   COPY public."DeviceData" ("DeviceDataId", "SerialNumber", "Status", "SoilMoisture", "Date") FROM stdin;
    public          postgres    false    215   y       )          0    16390    Devices 
   TABLE DATA           Q   COPY public."Devices" ("SerialNumber", "Password", "Salt", "UserId") FROM stdin;
    public          postgres    false    216   �       *          0    16395    Users 
   TABLE DATA           \   COPY public."Users" ("UserId", "Name", "LastName", "Email", "Password", "Salt") FROM stdin;
    public          postgres    false    217   �       +          0    16400    __EFMigrationsHistory 
   TABLE DATA           R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public          postgres    false    218   �       �           2606    16404    DeviceData PK_DeviceData 
   CONSTRAINT     f   ALTER TABLE ONLY public."DeviceData"
    ADD CONSTRAINT "PK_DeviceData" PRIMARY KEY ("DeviceDataId");
 F   ALTER TABLE ONLY public."DeviceData" DROP CONSTRAINT "PK_DeviceData";
       public            postgres    false    215            �           2606    16406    Devices PK_Devices 
   CONSTRAINT     `   ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "PK_Devices" PRIMARY KEY ("SerialNumber");
 @   ALTER TABLE ONLY public."Devices" DROP CONSTRAINT "PK_Devices";
       public            postgres    false    216            �           2606    16408    Users PK_Users 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "PK_Users" PRIMARY KEY ("UserId");
 <   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "PK_Users";
       public            postgres    false    217            �           2606    16410 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public            postgres    false    218            �           1259    16411    IX_Devices_UserId    INDEX     M   CREATE INDEX "IX_Devices_UserId" ON public."Devices" USING btree ("UserId");
 '   DROP INDEX public."IX_Devices_UserId";
       public            postgres    false    216            �           2606    16412    Devices FK_Devices_Users_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "FK_Devices_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("UserId");
 M   ALTER TABLE ONLY public."Devices" DROP CONSTRAINT "FK_Devices_Users_UserId";
       public          postgres    false    216    217    3221           