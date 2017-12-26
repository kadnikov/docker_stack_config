--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--
INSERT INTO roles (role) VALUES ('admin');
INSERT INTO roles (role) VALUES ('authenticated');
INSERT INTO roles (role) VALUES ('manager-gui');
INSERT INTO roles (role) VALUES ('superadmin');
INSERT INTO roles (role) VALUES ('user');
INSERT INTO roles (role) VALUES ('tomcat');
INSERT INTO roles (role) VALUES ('role1');
INSERT INTO roles (role) VALUES ('manager-script');
INSERT INTO roles (role) VALUES ('admin-gui');
INSERT INTO roles (role) VALUES ('readwrite');

INSERT INTO groups (id, title) VALUES ('admins', 'Администраторы');
INSERT INTO groups (id, title) VALUES ('all', 'Все пользователи');
INSERT INTO groups (id, title) VALUES ('editors', 'Редакторы');

INSERT INTO users (userid, password, groups, fullname, avatar, email, created, validated, validationcode, category, details, status, username, enabled) VALUES ('test', 'test', '{test,all,admins}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'test', true);
INSERT INTO users (userid, password, groups, fullname, avatar, email, created, validated, validationcode, category, details, status, username, enabled) VALUES ('user1', 'user1', '{user1,all}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'user1', true);
INSERT INTO users (userid, password, groups, fullname, avatar, email, created, validated, validationcode, category, details, status, username, enabled) VALUES ('boot', '$2a$10$YCaAusxHbe3joYpTGNRH0.lt2XPLd7TBrqJjZG4ej.XlC025uww2u', '{boot,all,admins}', 'boot', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'boot', true);

INSERT INTO user_roles (role, userid) VALUES ('admin', 'test');
INSERT INTO user_roles (role, userid) VALUES ('manager-gui', 'test');
INSERT INTO user_roles (role, userid) VALUES ('superadmin', 'test');
INSERT INTO user_roles (role, userid) VALUES ('tomcat', 'test');
INSERT INTO user_roles (role, userid) VALUES ('role1', 'test');
INSERT INTO user_roles (role, userid) VALUES ('readwrite', 'test');
INSERT INTO user_roles (role, userid) VALUES ('tomcat', 'boot');
INSERT INTO user_roles (role, userid) VALUES ('admin', 'boot');
INSERT INTO user_roles (role, userid) VALUES ('readwrite', 'boot');
INSERT INTO user_roles (role, userid) VALUES ('tomcat', 'user1');

INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (1, '2017-07-22 12:18:51.125094', NULL, '2017-07-22 12:18:51.125094', 'CMIS Settings 1', 'test', NULL, '{test,all}', NULL, NULL, 'cmis_settings', NULL, NULL, NULL, NULL, NULL, '{"cmis_repositories": [{"rootPath": "/opt/doccloud/data", "repositoryId": "test"}]}', NULL, 'd54e3443-7587-4d0b-96f5-58cfbb48988b', 'cmis_settings');

-- System types
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (2, '2017-10-12 12:21:53.56369', NULL, '2017-12-01 10:58:07.173', 'Системные', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.3', '0', NULL, NULL, NULL, '{"access": [], "parent": "0", "schema": {"type": "object", "properties": {"admin": {"type": "string", "title": "Администратор"}}}, "properties": [{"name": "admin", "type": "string", "title": "Администратор"}], "symbolicName": "abstract_system", "storage_policy": "fs_policy"}', NULL, '91a7dcb1-9cb8-447d-97d3-3c854af584bd', 'abstract_system');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (3, '2017-10-16 14:10:29.638846', NULL, '2017-10-16 14:33:43.571', 'Политика хранения', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.4', '0', NULL, NULL, NULL, '{"access": ["admins", "all", "editors"], "parent": "0", "schema": {"type": "object", "properties": {"storage_area": {"type": "string", "title": "Область хранения"}, "symbolicName": {"type": "string", "title": "Символьный идентификатор"}}}, "properties": [{"name": "storage_area", "type": "string", "title": "Область хранения"}, {"name": "symbolicName", "type": "string", "title": "Символьный идентификатор"}], "symbolicName": "storage_policy"}', NULL, '4812241c-79fe-4cbf-898f-77024851dd42', 'storage_policy');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (4, '2017-09-29 07:41:10.156601', NULL, '2017-10-12 12:30:38.973', 'Типы хранения', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.2', '0', NULL, NULL, NULL, '{"access": [], "parent": "0", "schema": {"type": "object", "properties": {"undefined": {}}}, "properties": [{}], "symbolicName": "abstract_storage"}', NULL, 'e5fbb07c-3c55-417b-afc8-59f63f76f8f9', 'abstract_storage');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (5, '2017-08-14 14:59:13.377503', NULL, '2017-10-16 14:26:53.097', 'Файловое хранилище', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.6', '3', NULL, NULL, NULL, '{"access": ["admins", "all", "editors"], "parent": "3", "schema": {"type": "object", "properties": {"maxSize": {"type": "integer", "title": "Максимальный объем"}, "repository": {"type": "string", "title": "Место хранения"}, "symbolicName": {"type": "string", "title": "Символьный идентификатор"}}}, "properties": [{"name": "maxSize", "type": "integer", "title": "Максимальный объем"}, {"name": "repository", "type": "string", "title": "Место хранения"}, {"name": "symbolicName", "type": "string", "title": "Символьный идентификатор"}], "symbolicName": "file_storage_area"}', NULL, 'a3150148-59a7-4992-95c8-e912c5bd0d68', 'file_storage_area');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (6, '2017-10-12 12:37:53.095036', NULL, '2017-10-16 14:26:23.407', 'Amazon хранилище', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.3', '3', NULL, NULL, NULL, '{"access": [], "parent": "3", "schema": {"type": "object", "properties": {"bucketName": {"type": "string", "title": "Имя корзины (bucket)"}, "awsEndpoint": {"type": "string", "title": "Адрес aws"}, "awsAccessKey": {"type": "string", "title": "Ключ доступа"}, "symbolicName": {"type": "string", "title": "Символьный идентификатор"}, "awsSecretAccessKey": {"type": "string", "title": "Секретный ключ"}}}, "properties": [{"name": "bucketName", "type": "string", "title": "Имя корзины (bucket)"}, {"name": "awsEndpoint", "type": "string", "title": "Адрес aws"}, {"name": "awsAccessKey", "type": "string", "title": "Ключ доступа"}, {"name": "awsSecretAccessKey", "type": "string", "title": "Секретный ключ"}, {"name": "symbolicName", "type": "string", "title": "Символьный идентификатор"}], "symbolicName": "amazon_storage_area"}', NULL, '9ed52d2e-b4ca-4960-a4eb-364e06bbebc6', 'amazon_storage_area');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (19, '2017-08-23 11:05:55.022066', NULL, '2017-10-12 12:25:40.185', 'Представление', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.4', '2', NULL, NULL, NULL, '{"access": ["admins", "all", "editors"], "parent": "1140", "schema": {"type": "object", "properties": {"query": {"type": "string", "title": "Запрос"}}}, "properties": [{"name": "query", "type": "string", "title": "Запрос"}], "symbolicName": "view"}', NULL, '87786441-a5a7-417f-847e-1fda53b63a45', 'view');

-- Storage areas
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (7, '2017-10-16 12:26:38.3007', NULL, '2017-10-16 14:30:24.782', 'Файловое хранилище 1', 'test', 'test', '{test,admins}', NULL, NULL, 'file_storage_area', '0.3', NULL, NULL, NULL, NULL, '{"maxSize": 1024, "repository": "/opt/doccloud/data/", "symbolicName": "fs_storage"}', NULL, 'ba32512f-7b15-45ff-b58e-975a025c488b', 'fs_storage');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (8, '2017-10-16 14:05:32.619814', NULL, '2017-10-23 14:04:54.308', 'Локальное хранилище Amazon', 'test', 'test', '{test,admins}', NULL, NULL, 'amazon_storage_area', '0.6', NULL, NULL, NULL, NULL, '{"bucketName": "doccloud-test", "awsEndpoint": "http://doccloud.ru:8000", "awsAccessKey": "accessKey1", "symbolicName": "s3_local_storage", "awsSecretAccessKey": "verySecretKey1"}', NULL, '9f4689f9-d8ea-4e51-bdf3-07c388096bd2', 's3_local_storage');

-- Storage policies
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (9, '2017-10-23 08:28:10.646971', NULL, '2017-10-23 08:28:46.603', 'Политика хранения по-умолчанию', 'test', 'test', '{test,admins}', NULL, NULL, 'storage_policy', '0.2', NULL, NULL, NULL, NULL, '{"storage_area": "fs_storage", "symbolicName": "default_policy"}', NULL, 'b8e7af34-55d2-49a0-8e0c-76619f9d2f03', 'default_policy');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (10, '2017-10-16 14:23:15.109015', NULL, '2017-10-16 14:34:08.87', 'Политика локального S3', 'test', 'test', '{test,admins}', NULL, NULL, 'storage_policy', '0.4', NULL, NULL, NULL, NULL, '{"storage_area": "s3_local_storage", "symbolicName": "s3_local_policy", "symbolic_name": "s3_local_policy"}', NULL, '3daf0c3e-dbc5-46f9-a3c0-e54aa674de90', 's3_local_policy');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (11, '2017-10-16 14:24:29.405557', NULL, '2017-10-16 14:34:33.52', 'Политика файлового хранения', 'test', 'test', '{test,admins}', NULL, NULL, 'storage_policy', '0.5', NULL, NULL, NULL, NULL, '{"storage_area": "fs_storage", "symbolicName": "fs_policy", "symbolic_name": "fs_policy"}', NULL, 'a2a1d377-f874-48e3-8a8a-d24aee4b52ef', 'fs_policy');

-- Base types
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (12, '2017-08-25 08:13:32.972832', NULL, '2017-10-12 12:26:15.714', 'Папка', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.4', '0', NULL, NULL, NULL, '{"access": ["admins", "all", "editors"], "parent": "0", "schema": {"type": "object", "properties": {}}, "symbolicName": "folder"}', NULL, 'dbd83580-3257-4948-830b-bef8f13d992f', 'folder');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (13, '2017-05-28 18:47:40.337708', NULL, '2017-10-12 12:36:01.394', 'Базовый документ', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.9', '0', NULL, NULL, NULL, '{"access": ["admins", "editors"], "parent": "0", "schema": {"type": "object", "properties": {}}}', NULL, '3b453992-0424-4966-a699-4e7760789879', 'document');

-- IA Types
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (14, '2017-10-06 18:00:27.267045', NULL, '2017-10-12 12:27:33.121', 'Типы IA', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.2', '12', NULL, NULL, NULL, '{"access": [], "parent": "0", "schema": {"type": "object", "properties": {}}}', NULL, 'c6987b0d-2b5a-456f-9709-4abc7da0bd56', 'abstract_ia');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (15, '2017-08-25 07:57:06.273702', NULL, '2017-10-12 12:28:10.711', 'Тенант', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.4', '14', NULL, NULL, NULL, '{"access": ["admins", "all", "editors"], "parent": "13", "schema": {"type": "object", "properties": {"undefined": {}}}, "properties": [{"name": "undefined"}], "symbolicName": "tenant"}', NULL, '9c890005-57ee-4d43-9ddd-67b95ccbc2e8', 'tenant');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (16, '2017-08-25 07:57:06.273702', NULL, '2017-10-12 12:28:10.711', 'Приложение', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.4', '14', NULL, NULL, NULL, '{"access": ["admins", "all", "editors"], "parent": "13", "schema": {"type": "object", "properties": {"undefined": {}}}, "properties": [{"name": "undefined"}], "symbolicName": "application"}', NULL, '9c890005-57ee-4d43-9ddd-67b95ccbc2e8', 'application');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (17, '2017-08-25 08:06:55.162989', NULL, '2017-10-12 12:28:53.145', 'Поиск IA', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.4', '0', NULL, NULL, NULL, '{"access": ["admins", "all", "editors"], "parent": "13", "schema": {"type": "object", "properties": {"undefined": {}}}, "properties": [{"name": "undefined"}], "symbolicName": "search-composition"}', NULL, 'd7152a54-c58d-468f-8f8c-edc1f4a270fd', 'search-composition');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (18, '2017-08-25 07:59:59.515054', NULL, '2017-10-12 12:28:30.311', 'Настройка поиска', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.4', '14', NULL, NULL, NULL, '{"access": ["admins", "all", "editors"], "parent": "13", "schema": {"type": "object", "properties": {"undefined": {}}}, "properties": [{"name": "undefined"}], "symbolicName": "search"}', NULL, '3469600d-aced-443a-8627-19026cbc0c15', 'search');
INSERT INTO system (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_symbolic_name) VALUES (19, '2017-08-25 07:59:59.515054', NULL, '2017-10-12 12:28:30.311', 'Корневая папка', 'test', 'test', '{test,admins}', NULL, NULL, 'type', '0.4', '14', NULL, NULL, NULL, '{"access": ["admins", "all", "editors"], "parent": "13", "schema": {"type": "object", "properties": {"undefined": {}}}, "properties": [{"name": "undefined"}], "symbolicName": "treeroot"}', NULL, '3469600d-aced-443a-8627-19026cbc0c15', 'treeroot');

INSERT INTO documents (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_file_storage, sys_base_type) VALUES (0,'2016-11-25 13:42:18.8021','root','2016-12-16 10:23:54.321','Root folder','admin','test','{admin,test,admins,all}',NULL,NULL,'folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5d36ec4c-7a37-4349-885b-b874f3ef7df4',NULL,'folder');
INSERT INTO documents (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_file_storage, sys_base_type) VALUES (1,'2017-04-27 13:09:51.325995',NULL,'2017-04-27 13:09:51.325995','Администрирование','test',NULL,'{test,admins}',NULL,NULL,'folder','0.1','0',NULL,NULL,NULL,NULL,NULL,'d44eb3c0-31c6-4062-aeb1-caab6b23a692',NULL,'folder');

INSERT INTO documents (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_file_storage, sys_base_type) VALUES (2,'2017-07-04 12:43:06.420974',NULL,'2017-07-31 10:00:48.898','Тенант','test','test','{test,admins}',NULL,NULL,'tenant','0.2','0',NULL,NULL,NULL,NULL,NULL,'5d05e877-a493-4fc9-9e5f-8fefaa84b437',NULL,'folder');
INSERT INTO documents (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_file_storage, sys_base_type) VALUES (3,'2017-07-04 20:09:24.741792',NULL,'2017-11-21 08:50:56.15','Приложение 1','test','test','{test,admins}',NULL,NULL,'application','0.3','2',NULL,NULL,NULL,'{}',NULL,'584b3eac-ebeb-42b1-b0d4-f453dbdec7c9',NULL,'folder');
INSERT INTO documents (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_file_storage, sys_base_type) VALUES (4,'2017-07-05 09:36:36.997871',NULL,'2017-07-05 09:36:36.997871','Папки','test',NULL,'{test,admins}',NULL,NULL,'treeroot','0.1','3',NULL,NULL,NULL,NULL,NULL,'979b20dd-8722-495d-abcd-a07db4ad7281',NULL,'folder');
INSERT INTO documents (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_file_storage, sys_base_type) VALUES (5,'2017-07-04 12:43:29.072227',NULL,'2017-07-04 12:43:29.072227','Представления','test',NULL,'{test,admins}',NULL,NULL,'folder','0.1','4',NULL,NULL,NULL,NULL,NULL,'d0a92b13-9c16-4c85-a232-6374e2253780',NULL,'folder');
INSERT INTO documents (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_file_storage, sys_base_type) VALUES (6,'2017-08-25 09:42:46.402356',NULL,'2017-08-25 09:44:40.953','Поиск по номеру','test','test','{test,admins,all,editors}',NULL,NULL,'search','0.2','3',NULL,NULL,NULL,NULL,NULL,'94cbf206-b749-413d-b826-3b0acac8bac6',NULL,'folder');
INSERT INTO documents (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_file_storage, sys_base_type) VALUES (7,'2017-10-05 14:07:16.241252',NULL,'2017-10-05 14:08:19.266','Поиск по пользователю','test','test','{test,admins,all,editors}',NULL,NULL,'search','0.2','3',NULL,NULL,NULL,'{}',NULL,'b23bf6f2-035b-4b14-b17a-a0269bf4f60f',NULL,'folder');

INSERT INTO documents (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_file_storage, sys_base_type) VALUES (8,'2017-04-27 13:25:24.728887',NULL,'2017-04-27 13:34:26.164','Представления','test','test','{test,admins}',NULL,NULL,'view','0.3','1','/opt/doccloud/data/04/98/0498c6ea-203d-43cf-b592-d23f6aed1705','image/jpeg','620888','{"defaultSortColumnIndex":0,"columnDescriptions":[{"style":"","sortable":"false","name":"id","visible":"false","sortField":"","field":"id","type":"INTEGER","width":"50"},{"style":"","sortable":"true","name":"Заголовок","visible":"true","sortField":"SYS_TITLE","field":"title","type":"STRING","width":"300"},{"style":"","sortable":"true","name":"Запрос","visible":"true","sortField":"query","field":"query","type":"STRING","width":"200"}],"defaultForm":"document","query":"/jooq/api/docs/type/view","defaultOrderType":"DESC","store":"test"}','Tulips.jpg','0498c6ea-203d-43cf-b592-d23f6aed1705',NULL,'document');
INSERT INTO documents (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_file_storage, sys_base_type) VALUES (9,'2017-04-27 13:48:54.90798',NULL,'2017-07-04 15:31:00.283','Типы','test','test','{test,admins}',NULL,NULL,'view','0.6','1','/opt/doccloud/data/4b/b2/4bb2c92b-c741-4b02-9df1-e84403f6ec25','application/octet-stream','0','{"query":"/jooq/api/system/types","columnDescriptions":[{"style":"","sortable":"false","name":"id","visible":"false","sortField":"","field":"id","type":"INTEGER","width":"50"},{"style":"","sortable":"false","name":"Тип","visible":"false","sortField":"","field":"type","type":"STRING","width":"50"},{"style":"","sortable":"true","name":"Заголовок","visible":"true","sortField":"SYS_TITLE","field":"title","type":"STRING","width":"300"},{"style":"","sortable":"true","name":"Алиас","visible":"true","sortField":"symbolicName","field":"symbolicName","type":"STRING","width":"200"},{"style":"","sortable":"true","name":"Родитель","visible":"true","sortField":"parent","field":"parent","type":"STRING","width":"200"}]}','Типы','4bb2c92b-c741-4b02-9df1-e84403f6ec25',NULL,'document');
INSERT INTO documents (id, sys_date_cr, sys_desc, sys_date_mod, sys_title, sys_author, sys_modifier, sys_readers, sys_editors, sys_folders, sys_type, sys_version, sys_parent, sys_file_path, sys_file_mime_type, sys_file_length, data, sys_file_name, sys_uuid, sys_file_storage, sys_base_type) VALUES (10,'2017-05-28 19:27:42.819345',NULL,'2017-05-28 19:27:42.819345','Области хранения','test',NULL,'{test,admins}',NULL,NULL,'view','0.1','1',NULL,NULL,NULL,'{"query":"/jooq/api/system/type/storage_area","columnDescriptions":[{"style":"","sortable":"false","name":"id","visible":"false","sortField":"","field":"id","type":"INTEGER","width":"50"},{"style":"","sortable":"true","name":"Заголовок","visible":"true","sortField":"SYS_TITLE","field":"title","type":"STRING","width":"300"},{"style":"","sortable":"true","name":"Алиас","visible":"true","sortField":"sys_symbolic_name","field":"sys_symbolic_name","type":"STRING","width":"200"}]}',NULL,'f69695b4-fb81-4066-bd57-177b286be1d6',NULL,'document');

--
-- PostgreSQL database dump complete
--

