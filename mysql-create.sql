
    create table OS_CURRENTSTEP (
        id bigint not null auto_increment,
        action_Id integer,
        caller varchar(64),
        finish_Date datetime(3),
        start_Date datetime(3),
        due_Date datetime(3),
        owner varchar(64),
        status varchar(1024),
        step_Id integer,
        entry_Id bigint,
        primary key (id)
    ) ENGINE=InnoDB;

    create table OS_HISTORYSTEP (
        id bigint not null auto_increment,
        action_Id integer,
        caller varchar(1024),
        finish_Date datetime(3),
        start_Date datetime(3),
        due_Date datetime(3),
        owner varchar(64),
        status varchar(1024),
        step_Id integer,
        entry_Id bigint,
        primary key (id)
    ) ENGINE=InnoDB;

    create table OS_WFENTRY (
        id bigint not null auto_increment,
        version integer not null,
        name varchar(128),
        state integer,
        primary key (id)
    ) ENGINE=InnoDB;

    create table am_ancestry (
        an_descendant varchar(64) not null,
        an_ancestor varchar(64) not null,
        an_type char(1) not null,
        an_des_class varchar(32) not null,
        an_anc_class varchar(32) not null,
        an_gap integer not null,
        primary key (an_descendant, an_ancestor, an_type)
    ) ENGINE=InnoDB;

    create table am_attribute (
        at_uuid varchar(64) not null,
        at_name_upper varchar(64) not null,
        at_version bigint not null,
        at_name varchar(64),
        at_class varchar(32),
        at_datatype varchar(16),
        at_date_value datetime(3),
        at_long_value bigint,
        at_string_value varchar(3072),
        at_baseobject_value varchar(96),
        at_enctype char(1),
        at_search_value varchar(96),
        primary key (at_uuid, at_name_upper)
    ) ENGINE=InnoDB;

    create table am_audit (
        au_server_id integer not null,
        au_id bigint not null,
        au_reported_time datetime(3) not null,
        au_module_name varchar(12),
        au_category varchar(32) not null,
        au_type varchar(32) not null,
        au_result varchar(20),
        au_result_code varchar(16),
        au_ext_result_code varchar(16),
        au_message varchar(256),
        au_tx_id varchar(32),
        au_signature varchar(96),
        au_actor_class varchar(32),
        au_actor_uuid varchar(64),
        au_actor_id varchar(64),
        au_actor_user_store varchar(64),
        au_actor_ses_id varchar(64),
        au_actor_seg_uuid varchar(64),
        au_actor_ip_addr varchar(45),
        au_real_actor_id varchar(64),
        au_real_actor_user_store varchar(64),
        au_real_actor_ses_id varchar(64),
        au_real_actor_seg_uuid varchar(64),
        au_client_id varchar(45),
        au_client_type integer,
        au_target_class varchar(32),
        au_target_uuid varchar(64),
        au_target_id varchar(64),
        au_target_user_store varchar(64),
        au_target_seg_uuid varchar(64),
        au_custom_desc varchar(256),
        au_attr1_char16 varchar(16),
        au_attr2_char16 varchar(32),
        au_attr3_char32 varchar(32),
        au_attr4_char32 varchar(32),
        au_attr5_char64 varchar(64),
        au_attr6_char64 varchar(64),
        au_attr7_char64 varchar(64),
        au_attr8_char128 varchar(128),
        au_flag1 bit,
        au_flag2 bit,
        au_flag3 bit,
        au_flag4 bit,
        au_attr1_num bigint,
        au_attr2_num bigint,
        au_attr3_num bigint,
        au_attr4_num bigint,
        au_time1 datetime(3),
        au_time2 datetime(3),
        au_time3 datetime(3),
        au_time4 datetime(3),
        primary key (au_server_id, au_id)
    ) ENGINE=InnoDB;

    create table am_audit_a (
        au_server_id integer not null,
        au_id bigint not null,
        au_reported_time datetime(3) not null,
        au_module_name varchar(12),
        au_category varchar(32) not null,
        au_type varchar(32) not null,
        au_result varchar(20),
        au_result_code varchar(16),
        au_ext_result_code varchar(16),
        au_message varchar(256),
        au_tx_id varchar(32),
        au_signature varchar(96),
        au_actor_class varchar(32),
        au_actor_uuid varchar(64),
        au_actor_id varchar(64),
        au_actor_user_store varchar(64),
        au_actor_ses_id varchar(64),
        au_actor_seg_uuid varchar(64),
        au_actor_ip_addr varchar(45),
        au_real_actor_id varchar(64),
        au_real_actor_user_store varchar(64),
        au_real_actor_ses_id varchar(64),
        au_real_actor_seg_uuid varchar(64),
        au_client_id varchar(45),
        au_client_type integer,
        au_target_class varchar(32),
        au_target_uuid varchar(64),
        au_target_id varchar(64),
        au_target_user_store varchar(64),
        au_target_seg_uuid varchar(64),
        au_custom_desc varchar(256),
        au_attr1_char16 varchar(16),
        au_attr2_char16 varchar(32),
        au_attr3_char32 varchar(32),
        au_attr4_char32 varchar(32),
        au_attr5_char64 varchar(64),
        au_attr6_char64 varchar(64),
        au_attr7_char64 varchar(64),
        au_attr8_char128 varchar(128),
        au_flag1 bit,
        au_flag2 bit,
        au_flag3 bit,
        au_flag4 bit,
        au_attr1_num bigint,
        au_attr2_num bigint,
        au_attr3_num bigint,
        au_attr4_num bigint,
        au_time1 datetime(3),
        au_time2 datetime(3),
        au_time3 datetime(3),
        au_time4 datetime(3),
        primary key (au_server_id, au_id)
    ) ENGINE=InnoDB;

    create table am_audit_attr (
        aa_server_id integer not null,
        aa_id bigint not null,
        aa_name varchar(64) not null,
        aa_part integer not null,
        aa_name_upper varchar(64) not null,
        aa_datatype varchar(16) not null,
        aa_value varchar(3072),
        primary key (aa_server_id, aa_id, aa_name, aa_part)
    ) ENGINE=InnoDB;

    create table am_audit_attr_a (
        aa_server_id integer not null,
        aa_id bigint not null,
        aa_name varchar(64) not null,
        aa_part integer not null,
        aa_name_upper varchar(64) not null,
        aa_datatype varchar(16) not null,
        aa_value varchar(3072),
        primary key (aa_server_id, aa_id, aa_name, aa_part)
    ) ENGINE=InnoDB;

    create table am_audit_attr_b (
        aa_server_id integer not null,
        aa_id bigint not null,
        aa_name varchar(64) not null,
        aa_part integer not null,
        aa_name_upper varchar(64) not null,
        aa_datatype varchar(16) not null,
        aa_value varchar(3072),
        primary key (aa_server_id, aa_id, aa_name, aa_part)
    ) ENGINE=InnoDB;

    create table am_audit_attr_c (
        aa_server_id integer not null,
        aa_id bigint not null,
        aa_name varchar(64) not null,
        aa_part integer not null,
        aa_name_upper varchar(64) not null,
        aa_datatype varchar(16) not null,
        aa_value varchar(3072),
        primary key (aa_server_id, aa_id, aa_name, aa_part)
    ) ENGINE=InnoDB;

    create table am_audit_b (
        au_server_id integer not null,
        au_id bigint not null,
        au_reported_time datetime(3) not null,
        au_module_name varchar(12),
        au_category varchar(32) not null,
        au_type varchar(32) not null,
        au_result varchar(20),
        au_result_code varchar(16),
        au_ext_result_code varchar(16),
        au_message varchar(256),
        au_tx_id varchar(32),
        au_signature varchar(96),
        au_actor_class varchar(32),
        au_actor_uuid varchar(64),
        au_actor_id varchar(64),
        au_actor_user_store varchar(64),
        au_actor_ses_id varchar(64),
        au_actor_seg_uuid varchar(64),
        au_actor_ip_addr varchar(45),
        au_real_actor_id varchar(64),
        au_real_actor_user_store varchar(64),
        au_real_actor_ses_id varchar(64),
        au_real_actor_seg_uuid varchar(64),
        au_client_id varchar(45),
        au_client_type integer,
        au_target_class varchar(32),
        au_target_uuid varchar(64),
        au_target_id varchar(64),
        au_target_user_store varchar(64),
        au_target_seg_uuid varchar(64),
        au_custom_desc varchar(256),
        au_attr1_char16 varchar(16),
        au_attr2_char16 varchar(32),
        au_attr3_char32 varchar(32),
        au_attr4_char32 varchar(32),
        au_attr5_char64 varchar(64),
        au_attr6_char64 varchar(64),
        au_attr7_char64 varchar(64),
        au_attr8_char128 varchar(128),
        au_flag1 bit,
        au_flag2 bit,
        au_flag3 bit,
        au_flag4 bit,
        au_attr1_num bigint,
        au_attr2_num bigint,
        au_attr3_num bigint,
        au_attr4_num bigint,
        au_time1 datetime(3),
        au_time2 datetime(3),
        au_time3 datetime(3),
        au_time4 datetime(3),
        primary key (au_server_id, au_id)
    ) ENGINE=InnoDB;

    create table am_audit_c (
        au_server_id integer not null,
        au_id bigint not null,
        au_reported_time datetime(3) not null,
        au_module_name varchar(12),
        au_category varchar(32) not null,
        au_type varchar(32) not null,
        au_result varchar(20),
        au_result_code varchar(16),
        au_ext_result_code varchar(16),
        au_message varchar(256),
        au_tx_id varchar(32),
        au_signature varchar(96),
        au_actor_class varchar(32),
        au_actor_uuid varchar(64),
        au_actor_id varchar(64),
        au_actor_user_store varchar(64),
        au_actor_ses_id varchar(64),
        au_actor_seg_uuid varchar(64),
        au_actor_ip_addr varchar(45),
        au_real_actor_id varchar(64),
        au_real_actor_user_store varchar(64),
        au_real_actor_ses_id varchar(64),
        au_real_actor_seg_uuid varchar(64),
        au_client_id varchar(45),
        au_client_type integer,
        au_target_class varchar(32),
        au_target_uuid varchar(64),
        au_target_id varchar(64),
        au_target_user_store varchar(64),
        au_target_seg_uuid varchar(64),
        au_custom_desc varchar(256),
        au_attr1_char16 varchar(16),
        au_attr2_char16 varchar(32),
        au_attr3_char32 varchar(32),
        au_attr4_char32 varchar(32),
        au_attr5_char64 varchar(64),
        au_attr6_char64 varchar(64),
        au_attr7_char64 varchar(64),
        au_attr8_char128 varchar(128),
        au_flag1 bit,
        au_flag2 bit,
        au_flag3 bit,
        au_flag4 bit,
        au_attr1_num bigint,
        au_attr2_num bigint,
        au_attr3_num bigint,
        au_attr4_num bigint,
        au_time1 datetime(3),
        au_time2 datetime(3),
        au_time3 datetime(3),
        au_time4 datetime(3),
        primary key (au_server_id, au_id)
    ) ENGINE=InnoDB;

    create table am_biometric (
        bm_usr_uuid varchar(64) not null,
        bm_vendor integer not null,
        bm_type integer not null,
        bm_label varchar(8) not null,
        bm_version bigint not null,
        bm_refer_tplt longblob not null,
        bm_status integer,
        bm_partition integer,
        bm_last_verified_time datetime(3),
        bm_creation_time datetime(3),
        bm_modified_time datetime(3),
        bm_sec_hash varchar(128),
        primary key (bm_usr_uuid, bm_vendor, bm_type, bm_label)
    ) ENGINE=InnoDB;

    create table am_change_entry (
        ce_ev_server_id_int integer not null,
        ce_ev_number bigint not null,
        ce_sequence bigint not null,
        ce_action varchar(32) not null,
        ce_name varchar(64),
        ce_value varchar(3072),
        primary key (ce_ev_server_id_int, ce_ev_number, ce_sequence)
    ) ENGINE=InnoDB;

    create table am_contextualauthnhistory (
        ctx_uuid varchar(64) not null,
        ctx_date datetime(3),
        ctx_user_uuid varchar(64),
        ctx_user_id varchar(64),
        ctx_authn_res varchar(1024),
        ctx_ip varchar(64),
        ctx_country varchar(64),
        ctx_countryisocode varchar(2),
        ctx_subdivision varchar(64),
        ctx_subdivisionisocode varchar(3),
        ctx_city varchar(64),
        ctx_latitude varchar(64),
        ctx_longitude varchar(64),
        ctx_geo_timezone varchar(64),
        ctx_module varchar(64),
        ctx_is_rooted varchar(8),
        ctx_authn_res_sts char(1),
        primary key (ctx_uuid)
    ) ENGINE=InnoDB;

    create table am_deleted_object (
        do_uuid varchar(64) not null,
        do_object_class varchar(32),
        do_version bigint,
        do_id varchar(64),
        do_id_upper varchar(64),
        do_id_int integer,
        do_name varchar(64),
        do_name_upper varchar(64),
        do_dn varchar(256),
        do_dn_upper varchar(256),
        do_description varchar(256),
        do_discriminator1 varchar(64),
        do_discriminator2 varchar(64),
        do_parent_uuid varchar(64),
        do_parent_class varchar(32),
        do_handler_class varchar(96),
        do_status varchar(16),
        do_creator varchar(64),
        do_created_time datetime(3),
        do_modifier varchar(64),
        do_modified_time datetime(3),
        do_admin_modifier varchar(64),
        do_admin_modified_time datetime(3),
        do_reserved1 varchar(64),
        primary key (do_uuid)
    ) ENGINE=InnoDB;

    create table am_esso_entitlement (
        si_useruuid varchar(64) not null,
        si_appid varchar(64) not null,
        si_pid integer not null,
        si_entitlement_prn varchar(64) not null,
        si_userid varchar(64),
        si_app_userid varchar(64),
        si_share_prn varchar(64),
        si_share_res varchar(64),
        si_pwd_modified_time varchar(64),
        si_created_time datetime(3),
        primary key (si_useruuid, si_appid, si_pid, si_entitlement_prn)
    ) ENGINE=InnoDB;

    create table am_event (
        ev_server_id_int integer not null,
        ev_id bigint not null,
        ev_time datetime(3) not null,
        ev_tx_id varchar(32),
        ev_category varchar(32) not null,
        ev_type varchar(32) not null,
        ev_target_class varchar(32),
        ev_target_uuid varchar(64),
        ev_target_version bigint,
        primary key (ev_server_id_int, ev_id)
    ) ENGINE=InnoDB;

    create table am_idmapping (
        im_user_uuid varchar(64) not null,
        im_ext_app_uuid varchar(64) not null,
        im_ext_id varchar(64) not null,
        im_partition integer,
        im_ext_id_upper varchar(64) not null,
        im_unique_id_app varchar(8) not null,
        im_ext_id_type varchar(16) not null,
        im_other_attr1 varchar(2048),
        im_other_attr2 varchar(2048),
        im_profile_name varchar(16) not null,
        im_created_time datetime(3) not null,
        primary key (im_user_uuid, im_ext_app_uuid, im_ext_id)
    ) ENGINE=InnoDB;

    create table am_impersonation (
        imp_impersonated_uuid varchar(64) not null,
        imp_impersonator_uuid varchar(64) not null,
        imp_impersonator_oc varchar(32) not null,
        imp_sequence integer not null,
        imp_start_time datetime(3),
        imp_end_time datetime(3),
        imp_last_modified_time datetime(3),
        imp_last_modifier_uuid varchar(64),
        primary key (imp_impersonated_uuid, imp_impersonator_uuid, imp_impersonator_oc, imp_sequence)
    ) ENGINE=InnoDB;

    create table am_impersonation_obj (
        impobj_impersonated_uuid varchar(64) not null,
        impobj_impersonator_uuid varchar(64) not null,
        impobj_impersonator_oc varchar(32) not null,
        imp_sequence integer not null,
        impobj_obj_uuid varchar(64) not null,
        impobj_obj_oc varchar(32) not null,
        impobj_other_attrs varchar(2048),
        primary key (impobj_impersonated_uuid, impobj_impersonator_uuid, impobj_impersonator_oc, imp_sequence, impobj_obj_uuid, impobj_obj_oc)
    ) ENGINE=InnoDB;

    create table am_oauthtoken (
        ot_iid varchar(22) not null,
        ot_user_uuid varchar(64),
        ot_type varchar(3),
        ot_client_uuid varchar(64),
        ot_expiry_time bigint,
        ot_created_time bigint,
        ot_grant_iid varchar(22),
        primary key (ot_iid)
    ) ENGINE=InnoDB;

    create table am_object (
        ob_uuid varchar(64) not null,
        ob_object_class varchar(32) not null,
        ob_version bigint not null,
        ob_id varchar(64) not null,
        ob_id_upper varchar(64) not null,
        ob_id_int integer,
        ob_name varchar(64),
        ob_name_upper varchar(64),
        ob_dn varchar(250),
        ob_dn_upper varchar(250),
        ob_description varchar(256),
        ob_discriminator1 varchar(64),
        ob_discriminator2 varchar(64),
        ob_parent_uuid varchar(64),
        ob_parent_class varchar(32),
        ob_handler_class varchar(96),
        ob_status varchar(16),
        ob_creator varchar(64),
        ob_created_time datetime(3),
        ob_modifier varchar(64),
        ob_modified_time datetime(3),
        ob_admin_modifier varchar(64),
        ob_admin_modified_time datetime(3),
        ob_lock_flag bit,
        ob_lock_by varchar(64),
        ob_reserved1 varchar(64),
        primary key (ob_uuid)
    ) ENGINE=InnoDB;

    create table am_pinmailer (
        pm_uuid varchar(64) not null,
        pm_version bigint not null,
        pm_id varchar(64) not null unique,
        pm_entry_uid varchar(32),
        pm_template_id varchar(64),
        pm_module_id varchar(64),
        pm_content_type varchar(32),
        pm_content_action varchar(32),
        pm_status varchar(32),
        pm_content_uuid varchar(64),
        pm_content_summary varchar(256),
        pm_template_uuid varchar(64),
        pm_channel_uuid varchar(64),
        pm_delivery_summary varchar(256),
        pm_maker varchar(64),
        pm_made_time datetime(3),
        pm_checker varchar(64),
        pm_checked_time datetime(3),
        pm_creator varchar(64),
        pm_created_time datetime(3),
        pm_modifier varchar(64),
        pm_modified_time datetime(3),
        pm_ended bit,
        pm_attr1_char16 varchar(16),
        pm_attr2_char16 varchar(16),
        pm_attr3_char32 varchar(32),
        pm_attr4_char32 varchar(32),
        pm_attr5_char64 varchar(64),
        pm_attr6_char64 varchar(64),
        pm_attr7_char128 varchar(128),
        pm_attr8_char256 varchar(256),
        pm_flag1 bit,
        pm_flag2 bit,
        pm_number1 bigint,
        pm_number2 bigint,
        pm_time1 datetime(3),
        pm_time2 datetime(3),
        primary key (pm_uuid)
    ) ENGINE=InnoDB;

    create table am_pinmailer_attr (
        pa_uuid varchar(64) not null,
        pa_name varchar(64) not null,
        pa_part integer not null,
        pa_name_upper varchar(64) not null,
        pa_datatype varchar(16) not null,
        pa_enctype char(1) not null,
        pa_value varchar(3072),
        primary key (pa_uuid, pa_name, pa_part)
    ) ENGINE=InnoDB;

    create table am_relation (
        re_uuid varchar(64) not null,
        re_object_class varchar(32) not null,
        re_version bigint not null,
        re_name varchar(32) not null,
        re_id varchar(64),
        re_obj1_uuid varchar(64) not null,
        re_obj2_uuid varchar(64) not null,
        re_obj3_uuid varchar(64),
        re_obj1_class varchar(32),
        re_obj2_class varchar(32),
        re_obj3_class varchar(32),
        re_parameters varchar(1024),
        re_description varchar(256),
        re_parent_uuid varchar(64),
        re_parent_class varchar(32),
        re_creator varchar(64),
        re_created_time datetime(3),
        re_modifier varchar(64),
        re_modified_time datetime(3),
        re_admin_modifier varchar(64),
        re_admin_modified_time datetime(3),
        re_lock_flag bit,
        re_lock_by varchar(64),
        primary key (re_uuid)
    ) ENGINE=InnoDB;

    create table am_relation2 (
        r2_obj1_uuid varchar(64) not null,
        r2_name varchar(32) not null,
        r2_obj2_uuid varchar(64) not null,
        r2_obj1_class varchar(32),
        r2_obj2_class varchar(32),
        r2_created_time datetime(3),
        primary key (r2_obj1_uuid, r2_name, r2_obj2_uuid)
    ) ENGINE=InnoDB;

    create table am_relation_device_token (
        rdt_device_uuid varchar(64) not null,
        rdt_token_uuid varchar(64) not null,
        rdt_token_instance varchar(64) not null,
        rdt_created_time bigint,
        primary key (rdt_device_uuid, rdt_token_uuid, rdt_token_instance)
    ) ENGINE=InnoDB;

    create table am_relation_device_user (
        rdu_device_uuid varchar(64) not null,
        rdu_user_uuid varchar(64) not null,
        rdu_created_time bigint,
        primary key (rdu_device_uuid, rdu_user_uuid)
    ) ENGINE=InnoDB;

    create table am_tokenauthstate (
        tst_token_uuid varchar(64) not null,
        tst_func_id varchar(32) not null,
        tst_auth_mode varchar(8) not null,
        tst_version bigint not null,
        tst_partition integer,
        tst_status varchar(20),
        tst_success_cnt integer,
        tst_fail_cnt integer,
        tst_last_stat_chg_date datetime(3),
        tst_last_succ_date datetime(3),
        tst_last_fail_date datetime(3),
        tst_sec_hash varchar(128),
        tst_sec_data varchar(2048),
        tst_other_attrs varchar(1024),
        tst_last_modified_date datetime(3),
        primary key (tst_token_uuid, tst_func_id, tst_auth_mode)
    ) ENGINE=InnoDB;

    create table am_user_device (
        de_uuid varchar(16) not null,
        de_status varchar(16),
        de_type varchar(16),
        de_id varchar(64),
        de_agent varchar(64),
        de_desc varchar(64),
        de_tag varchar(256),
        de_custom_attr1 varchar(64),
        de_custom_attr2 varchar(64),
        de_custom_attr3 varchar(64),
        de_custom_attr4 varchar(512),
        de_custom_attr5 varchar(512),
        de_rooted bit,
        de_created_time bigint,
        de_admin_modifier varchar(64),
        de_admin_modified_time bigint,
        de_last_status_change bigint,
        de_last_used_time bigint,
        primary key (de_uuid)
    ) ENGINE=InnoDB;

    create table am_user_key (
        ky_uuid varchar(16) not null,
        ky_user_uuid varchar(64),
        ky_key_id varchar(64),
        ky_status varchar(16),
        ky_cryptoapp_uuid varchar(64),
        ky_key_provider_uuid varchar(64),
        ky_key_algo varchar(64),
        ky_private_key varchar(1800),
        ky_public_key varchar(1024),
        ky_key_usage varchar(64),
        ky_created_time bigint,
        ky_modified_time bigint,
        ky_last_status_change_time bigint,
        primary key (ky_uuid)
    ) ENGINE=InnoDB;

    create table am_userauthstate (
        ust_user_uuid varchar(64) not null,
        ust_type varchar(3) not null,
        ust_auth_uuid varchar(64) not null,
        ust_version bigint not null,
        ust_partition integer,
        ust_status varchar(20),
        ust_control_flag varchar(3),
        ust_start_date datetime(3),
        ust_end_date datetime(3),
        ust_success_cnt integer,
        ust_fail_cnt integer,
        ust_last_login_date datetime(3),
        ust_last_logout_date datetime(3),
        ust_last_pwd_chg_date datetime(3),
        ust_last_stat_chg_date datetime(3),
        ust_sec_hash varchar(128),
        ust_other_attrs varchar(2048),
        ust_last_modified_date datetime(3),
        primary key (ust_user_uuid, ust_type, ust_auth_uuid)
    ) ENGINE=InnoDB;

    create table am_usersession (
        usn_uuid varchar(64) not null,
        usn_version bigint not null,
        usn_count integer,
        usn_earliest_expy bigint,
        usn_latest_expy bigint,
        usn_last_update bigint,
        usn_sec_hash varchar(128),
        usn_sessions varchar(3072),
        primary key (usn_uuid)
    ) ENGINE=InnoDB;

    create table am_vars (
        va_name varchar(64) not null,
        va_version bigint not null,
        va_value varchar(256),
        primary key (va_name)
    ) ENGINE=InnoDB;

    create table am_workflow (
        wo_uuid varchar(64) not null,
        wo_version bigint not null,
        wo_id varchar(64) not null unique,
        wo_entry_uid varchar(64),
        wo_template_id varchar(128),
        wo_name varchar(64),
        wo_name_upper varchar(64),
        wo_saveable_type varchar(32),
        wo_saveable_action varchar(32),
        wo_status varchar(32),
        wo_content varchar(256),
        wo_target varchar(64),
        wo_target_class varchar(32),
        wo_maker varchar(64),
        wo_made_time datetime(3),
        wo_checker varchar(64),
        wo_checked_time datetime(3),
        wo_creator varchar(64),
        wo_created_time datetime(3),
        wo_modifier varchar(64),
        wo_modified_time datetime(3),
        wo_attr1_char16 varchar(16),
        wo_attr2_char16 varchar(16),
        wo_attr3_char32 varchar(32),
        wo_attr4_char32 varchar(32),
        wo_attr5_char64 varchar(64),
        wo_attr6_char64 varchar(64),
        wo_attr7_char128 varchar(128),
        wo_attr8_char256 varchar(256),
        wo_flag1 bit,
        wo_flag2 bit,
        wo_number1 bigint,
        wo_number2 bigint,
        wo_time1 datetime(3),
        wo_time2 datetime(3),
        primary key (wo_uuid)
    ) ENGINE=InnoDB;

    create table am_rp_token (
        rpt_token_uuid varchar(64) not null,
        rpt_token_hash varchar(64) not null unique,
        rpt_token varchar(3072) not null,
        rpt_user_uuid varchar(64) not null,
        rpt_lookup_module_uuid varchar(64) not null,
        rpt_type varchar(8) not null,
        rpt_at_expiry_time bigint,
        rpt_token_expiry_time bigint not null,
        rpt_session_iid varchar(22),
        primary key (rpt_token_uuid)
    ) ENGINE=InnoDB;

    alter table OS_CURRENTSTEP 
        add index FK8710A5CADD562C9A (entry_Id), 
        add constraint FK8710A5CADD562C9A 
        foreign key (entry_Id) 
        references OS_WFENTRY (id);

    alter table OS_HISTORYSTEP 
        add index FK7835C765DD562C9A (entry_Id), 
        add constraint FK7835C765DD562C9A 
        foreign key (entry_Id) 
        references OS_WFENTRY (id);

    create index idx_at_name_bovalue on am_attribute (at_name, at_baseobject_value);

    create index idx_at_name_lvalue on am_attribute (at_name, at_long_value);

    create index idx_at_bovalue on am_attribute (at_baseobject_value);

    create index idx_au_taget_id on am_audit (au_target_id);

    create index idx_au_actor_id on am_audit (au_actor_id);

    create index idx_au_target_uuid on am_audit (au_target_uuid);

    create index idx_au_actor_uuid on am_audit (au_actor_uuid);

    create index idx_au_result_code on am_audit (au_result_code);

    create index idx_au_reported_time on am_audit (au_reported_time);

    create index idx_au_actor_id_a on am_audit_a (au_actor_id);

    create index idx_au_reported_time_a on am_audit_a (au_reported_time);

    create index idx_au_actor_uuid_a on am_audit_a (au_actor_uuid);

    create index idx_au_taget_id_a on am_audit_a (au_target_id);

    create index idx_au_target_uuid_a on am_audit_a (au_target_uuid);

    create index idx_au_result_code_a on am_audit_a (au_result_code);

    create index idx_au_actor_id_b on am_audit_b (au_actor_id);

    create index idx_au_reported_time_b on am_audit_b (au_reported_time);

    create index idx_au_actor_uuid_b on am_audit_b (au_actor_uuid);

    create index idx_au_taget_id_b on am_audit_b (au_target_id);

    create index idx_au_target_uuid_b on am_audit_b (au_target_uuid);

    create index idx_au_result_code_b on am_audit_b (au_result_code);

    create index idx_au_actor_id_c on am_audit_c (au_actor_id);

    create index idx_au_actor_uuid_c on am_audit_c (au_actor_uuid);

    create index idx_au_reported_time_c on am_audit_c (au_reported_time);

    create index idx_au_taget_id_c on am_audit_c (au_target_id);

    create index idx_au_target_uuid_c on am_audit_c (au_target_uuid);

    create index idx_au_result_code_c on am_audit_c (au_result_code);

    create index idx_ot_expiryTime on am_oauthtoken (ot_expiry_time);
	
    create index idx_ot_grant_iid on am_oauthtoken(ot_grant_iid);
	
    create index idx_ot_client_uuid on am_oauthtoken(ot_client_uuid);

    create index idx_ob_idu on am_object (ob_id_upper);

    create index idx_ob_disc1 on am_object (ob_discriminator1);

    create index idx_ob_disc2 on am_object (ob_discriminator2);

    create index idx_ob_idi on am_object (ob_id_int);

    create index idx_ob_id on am_object (ob_id);

    create index idx_ob_dn on am_object (ob_dn);

    create index idx_ob_dnu on am_object (ob_dn_upper);

    create index idx_pm_maker on am_pinmailer (pm_maker);

    create index idx_pm_status on am_pinmailer (pm_status);

    create index idx_pm_content on am_pinmailer (pm_content_uuid);

    create index idx_re_uuid1_uuid2_uuid3 on am_relation (re_obj1_uuid, re_obj2_uuid, re_obj3_uuid);

    create index idx_wo_target on am_workflow (wo_target);

    create index idx_wo_type on am_workflow (wo_saveable_type);

    create index idx_wo_status on am_workflow (wo_status);

    create index idx_wo_template_id on am_workflow (wo_template_id);

    create index idx_wo_entry_uid on am_workflow (wo_entry_uid);

    create index idx_wo_type2 on am_workflow (wo_saveable_action);

    create index idx_at_uuid_name on am_attribute(at_uuid,at_name);

    create index idx_at_nameu_lvalue on am_attribute(at_name_upper,at_long_value);

    create index idx_at_nameu_bovalue on am_attribute(at_name_upper,at_baseobject_value);

    create index idx_at_name_searchvalue on am_attribute(at_name,at_search_value);

    create index idx_ob_oclass_id on am_object(ob_object_class,ob_id);

    create index idx_ob_oclass_idu on am_object(ob_object_class,ob_id_upper);

    create index idx_ob_oclass_idi on am_object(ob_object_class,ob_id_int);

    create unique index idx_ob_idu_oclass_parentuuid on am_object(ob_id_upper,ob_object_class,ob_parent_uuid);

    create index idx_ob_oclass_disc12 on am_object(ob_object_class,ob_discriminator1,ob_discriminator2);

    create index idx_ob_lock_uuid on am_object(ob_lock_by,ob_lock_flag,ob_uuid);

    create index idx_re_oclass_uuid1 on am_relation(re_object_class,re_obj1_uuid);

    create index idx_re_oclass_uuid2 on am_relation(re_object_class,re_obj2_uuid);

    create index idx_re_uuid1_name on am_relation(re_obj1_uuid,re_name);

    create index idx_au_cat_type_time on am_audit(au_category,au_type,au_reported_time);

    create index idx_au_cat_type_time_a on am_audit_a(au_category,au_type,au_reported_time);

    create index idx_au_cat_type_time_b on am_audit_b(au_category,au_type,au_reported_time);

    create index idx_au_cat_type_time_c on am_audit_c(au_category,au_type,au_reported_time);

    create index idx_aa_name_id_sid on am_audit_attr(aa_name,aa_id,aa_server_id);

    create index idx_aa_nameu_id_sid on am_audit_attr(aa_name_upper,aa_id,aa_server_id);

    create index idx_aa_name_id_sid_a on am_audit_attr_a(aa_name,aa_id,aa_server_id);

    create index idx_aa_nameu_id_sid_a on am_audit_attr_a(aa_name_upper,aa_id,aa_server_id);

    create index idx_aa_name_id_sid_b on am_audit_attr_b(aa_name,aa_id,aa_server_id);

    create index idx_aa_nameu_id_sid_b on am_audit_attr_b(aa_name_upper,aa_id,aa_server_id);

    create index idx_aa_name_id_sid_c on am_audit_attr_c(aa_name,aa_id,aa_server_id);

    create index idx_aa_nameu_id_sid_c on am_audit_attr_c(aa_name_upper,aa_id,aa_server_id);

    create index idx_wo_stype_sact_stat on am_workflow(wo_saveable_type,wo_saveable_action,wo_status);

    create index idx_wo_stat_stype_sact on am_workflow(wo_status,wo_saveable_type,wo_saveable_action);

    create index idx_wo_target_tclass on am_workflow(wo_target,wo_target_class);

    create index idx_r2_uuid2_name_uuid1 on am_relation2(r2_obj2_uuid,r2_name,r2_obj1_uuid);

    create index idx_an_anc_des_type on am_ancestry(an_ancestor,an_descendant,an_type);

    create index idx_pm_end_modtime on am_pinmailer(pm_ended,pm_modified_time);

    create index idx_pm_entryuid_modtime on am_pinmailer(pm_entry_uid,pm_modified_time);

    create index idx_pa_name_uuid on am_pinmailer_attr(pa_name, pa_uuid);

    create index idx_pa_nameu_uuid on am_pinmailer_attr(pa_name_upper, pa_uuid);

    create index idx_ust_type_auth_user on am_userauthstate(ust_type,ust_auth_uuid,ust_user_uuid);

    create index idx_tst_status_date_uuid on am_tokenauthstate(tst_status, tst_last_modified_date, tst_token_uuid);

    create index idx_usn_latest_expy on am_usersession(usn_latest_expy);

    create index idx_bm_uuid_vendor_label_type on am_biometric(bm_usr_uuid,bm_vendor,bm_label,bm_type);

    create index idx_imp_impersonator on am_impersonation(imp_impersonator_uuid,imp_impersonator_oc,imp_sequence,imp_impersonated_uuid);

    create index idx_esso_si_appuid on am_esso_entitlement(si_app_userid, si_appid);

    create index idx_ctx_useruuid_res_sts on am_contextualauthnhistory(ctx_user_uuid, ctx_authn_res_sts);

    create index idx_ctx_date_user_uuid on am_contextualauthnhistory(ctx_date, ctx_user_uuid);

    create unique index idx_im_app_id_unique on am_idmapping(im_ext_app_uuid,im_ext_id,im_unique_id_app);

    create unique index idx_im_user_app_profile on am_idmapping(im_user_uuid, im_ext_app_uuid, im_profile_name);

    create index idx_im_app_id on am_idmapping(im_ext_app_uuid,im_ext_id);
    
    create index idx_im_app_profile on am_idmapping(im_ext_app_uuid,im_profile_name);
   
    create index idx_im_app_idu on am_idmapping(im_ext_app_uuid,im_ext_id_upper);

    create index idx_im_user_app_idu on am_idmapping(im_user_uuid, im_ext_app_uuid,im_ext_id_upper);

    create index idx_ot_usruuid_exp on am_oauthtoken(ot_user_uuid,ot_expiry_time);

    create index idx_ot_usruuid_typ_exp on am_oauthtoken(ot_user_uuid,ot_type,ot_expiry_time);

    create index idx_ky_user_uuid on am_user_key(ky_user_uuid);

    create unique index idx_ky_user_uuid_key_id on am_user_key(ky_user_uuid,ky_key_id);

    create index idx_ky_cryptoapp_user_uuid on am_user_key(ky_cryptoapp_uuid, ky_user_uuid);

    create unique index idx_de_type_id on am_user_device(de_type,de_id);

    create index idx_rdu_user_uuid on am_relation_device_user(rdu_user_uuid);

    create index idx_rdt_token_uuid_instance on am_relation_device_token(rdt_token_uuid, rdt_token_instance);
    
    create index idx_token_expiryTime on am_rp_token (rpt_token_expiry_time);
    
    create index idx_rpt_lookupmoduleuuid_useruuid_type_exp on am_rp_token(rpt_user_uuid,rpt_lookup_module_uuid, rpt_type);

    create index idx_rpt_sessioniid_type_exp on am_rp_token(rpt_session_iid,rpt_type);
    insert into am_vars (va_name, va_version, va_value) values ('SchemaVersion', 1, '1137');

-- START OF Quartz

CREATE TABLE QRTZ_JOB_DETAILS (
    SCHED_NAME VARCHAR(120) NOT NULL,
    JOB_NAME VARCHAR(200) NOT NULL,
    JOB_GROUP VARCHAR(200) NOT NULL,
    DESCRIPTION VARCHAR(250) NULL,
    JOB_CLASS_NAME VARCHAR(250) NOT NULL,
    IS_DURABLE VARCHAR(1) NOT NULL,
    IS_NONCONCURRENT VARCHAR(1) NOT NULL,
    IS_UPDATE_DATA VARCHAR(1) NOT NULL,
    REQUESTS_RECOVERY VARCHAR(1) NOT NULL,
    JOB_DATA BLOB NULL,
    PRIMARY KEY (
        SCHED_NAME,
        JOB_NAME,
        JOB_GROUP
        )
    ) ENGINE = InnoDB;

CREATE TABLE QRTZ_TRIGGERS (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    JOB_NAME VARCHAR(200) NOT NULL,
    JOB_GROUP VARCHAR(200) NOT NULL,
    DESCRIPTION VARCHAR(250) NULL,
    NEXT_FIRE_TIME BIGINT (13) NULL,
    PREV_FIRE_TIME BIGINT (13) NULL,
    PRIORITY INTEGER NULL,
    TRIGGER_STATE VARCHAR(16) NOT NULL,
    TRIGGER_TYPE VARCHAR(8) NOT NULL,
    START_TIME BIGINT (13) NOT NULL,
    END_TIME BIGINT (13) NULL,
    CALENDAR_NAME VARCHAR(200) NULL,
    MISFIRE_INSTR SMALLINT (2) NULL,
    JOB_DATA BLOB NULL,
    PRIMARY KEY (
        SCHED_NAME,
        TRIGGER_NAME,
        TRIGGER_GROUP
        ),
    FOREIGN KEY (
        SCHED_NAME,
        JOB_NAME,
        JOB_GROUP
        ) REFERENCES QRTZ_JOB_DETAILS(SCHED_NAME, JOB_NAME, JOB_GROUP)
    ) ENGINE = InnoDB;

CREATE TABLE QRTZ_SIMPLE_TRIGGERS (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    REPEAT_COUNT BIGINT (7) NOT NULL,
    REPEAT_INTERVAL BIGINT (12) NOT NULL,
    TIMES_TRIGGERED BIGINT (10) NOT NULL,
    PRIMARY KEY (
        SCHED_NAME,
        TRIGGER_NAME,
        TRIGGER_GROUP
        ),
    FOREIGN KEY (
        SCHED_NAME,
        TRIGGER_NAME,
        TRIGGER_GROUP
        ) REFERENCES QRTZ_TRIGGERS(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
    ) ENGINE = InnoDB;

CREATE TABLE QRTZ_CRON_TRIGGERS (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    CRON_EXPRESSION VARCHAR(120) NOT NULL,
    TIME_ZONE_ID VARCHAR(80),
    PRIMARY KEY (
        SCHED_NAME,
        TRIGGER_NAME,
        TRIGGER_GROUP
        ),
    FOREIGN KEY (
        SCHED_NAME,
        TRIGGER_NAME,
        TRIGGER_GROUP
        ) REFERENCES QRTZ_TRIGGERS(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
    ) ENGINE = InnoDB;

CREATE TABLE QRTZ_SIMPROP_TRIGGERS (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    STR_PROP_1 VARCHAR(512) NULL,
    STR_PROP_2 VARCHAR(512) NULL,
    STR_PROP_3 VARCHAR(512) NULL,
    INT_PROP_1 INT NULL,
    INT_PROP_2 INT NULL,
    LONG_PROP_1 BIGINT NULL,
    LONG_PROP_2 BIGINT NULL,
    DEC_PROP_1 NUMERIC(13, 4) NULL,
    DEC_PROP_2 NUMERIC(13, 4) NULL,
    BOOL_PROP_1 VARCHAR(1) NULL,
    BOOL_PROP_2 VARCHAR(1) NULL,
    PRIMARY KEY (
        SCHED_NAME,
        TRIGGER_NAME,
        TRIGGER_GROUP
        ),
    FOREIGN KEY (
        SCHED_NAME,
        TRIGGER_NAME,
        TRIGGER_GROUP
        ) REFERENCES QRTZ_TRIGGERS(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
    ) ENGINE = InnoDB;

CREATE TABLE QRTZ_BLOB_TRIGGERS (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    BLOB_DATA BLOB NULL,
    PRIMARY KEY (
        SCHED_NAME,
        TRIGGER_NAME,
        TRIGGER_GROUP
        ),
    INDEX (
        SCHED_NAME,
        TRIGGER_NAME,
        TRIGGER_GROUP
        ),
    FOREIGN KEY (
        SCHED_NAME,
        TRIGGER_NAME,
        TRIGGER_GROUP
        ) REFERENCES QRTZ_TRIGGERS(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
    ) ENGINE = InnoDB;

CREATE TABLE QRTZ_CALENDARS (
    SCHED_NAME VARCHAR(120) NOT NULL,
    CALENDAR_NAME VARCHAR(200) NOT NULL,
    CALENDAR BLOB NOT NULL,
    PRIMARY KEY (
        SCHED_NAME,
        CALENDAR_NAME
        )
    ) ENGINE = InnoDB;

CREATE TABLE QRTZ_PAUSED_TRIGGER_GRPS (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    PRIMARY KEY (
        SCHED_NAME,
        TRIGGER_GROUP
        )
    ) ENGINE = InnoDB;

CREATE TABLE QRTZ_FIRED_TRIGGERS (
    SCHED_NAME VARCHAR(120) NOT NULL,
    ENTRY_ID VARCHAR(95) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    INSTANCE_NAME VARCHAR(200) NOT NULL,
    FIRED_TIME BIGINT (13) NOT NULL,
    SCHED_TIME BIGINT (13) NOT NULL,
    PRIORITY INTEGER NOT NULL,
    STATE VARCHAR(16) NOT NULL,
    JOB_NAME VARCHAR(200) NULL,
    JOB_GROUP VARCHAR(200) NULL,
    IS_NONCONCURRENT VARCHAR(1) NULL,
    REQUESTS_RECOVERY VARCHAR(1) NULL,
    PRIMARY KEY (
        SCHED_NAME,
        ENTRY_ID
        )
    ) ENGINE = InnoDB;

CREATE TABLE QRTZ_SCHEDULER_STATE (
    SCHED_NAME VARCHAR(120) NOT NULL,
    INSTANCE_NAME VARCHAR(200) NOT NULL,
    LAST_CHECKIN_TIME BIGINT (13) NOT NULL,
    CHECKIN_INTERVAL BIGINT (13) NOT NULL,
    PRIMARY KEY (
        SCHED_NAME,
        INSTANCE_NAME
        )
    ) ENGINE = InnoDB;

CREATE TABLE QRTZ_LOCKS (
    SCHED_NAME VARCHAR(120) NOT NULL,
    LOCK_NAME VARCHAR(40) NOT NULL,
    PRIMARY KEY (
        SCHED_NAME,
        LOCK_NAME
        )
    ) ENGINE = InnoDB;

CREATE INDEX IDX_QRTZ_J_REQ_RECOVERY ON QRTZ_JOB_DETAILS(SCHED_NAME,REQUESTS_RECOVERY);
CREATE INDEX IDX_QRTZ_J_GRP ON QRTZ_JOB_DETAILS(SCHED_NAME,JOB_GROUP);

CREATE INDEX IDX_QRTZ_T_J ON QRTZ_TRIGGERS(SCHED_NAME,JOB_NAME,JOB_GROUP);
CREATE INDEX IDX_QRTZ_T_JG ON QRTZ_TRIGGERS(SCHED_NAME,JOB_GROUP);
CREATE INDEX IDX_QRTZ_T_C ON QRTZ_TRIGGERS(SCHED_NAME,CALENDAR_NAME);
CREATE INDEX IDX_QRTZ_T_G ON QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_GROUP);
CREATE INDEX IDX_QRTZ_T_STATE ON QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_STATE);
CREATE INDEX IDX_QRTZ_T_N_STATE ON QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP,TRIGGER_STATE);
CREATE INDEX IDX_QRTZ_T_N_G_STATE ON QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_GROUP,TRIGGER_STATE);
CREATE INDEX IDX_QRTZ_T_NEXT_FIRE_TIME ON QRTZ_TRIGGERS(SCHED_NAME,NEXT_FIRE_TIME);
CREATE INDEX IDX_QRTZ_T_NFT_ST ON QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_STATE,NEXT_FIRE_TIME);
CREATE INDEX IDX_QRTZ_T_NFT_MISFIRE ON QRTZ_TRIGGERS(SCHED_NAME,MISFIRE_INSTR,NEXT_FIRE_TIME);
CREATE INDEX IDX_QRTZ_T_NFT_ST_MISFIRE ON QRTZ_TRIGGERS(SCHED_NAME,MISFIRE_INSTR,NEXT_FIRE_TIME,TRIGGER_STATE);
CREATE INDEX IDX_QRTZ_T_NFT_ST_MISFIRE_GRP ON QRTZ_TRIGGERS(SCHED_NAME,MISFIRE_INSTR,NEXT_FIRE_TIME,TRIGGER_GROUP,TRIGGER_STATE);

CREATE INDEX IDX_QRTZ_FT_TRIG_INST_NAME ON QRTZ_FIRED_TRIGGERS(SCHED_NAME,INSTANCE_NAME);
CREATE INDEX IDX_QRTZ_FT_INST_JOB_REQ_RCVRY ON QRTZ_FIRED_TRIGGERS(SCHED_NAME,INSTANCE_NAME,REQUESTS_RECOVERY);
CREATE INDEX IDX_QRTZ_FT_J_G ON QRTZ_FIRED_TRIGGERS(SCHED_NAME,JOB_NAME,JOB_GROUP);
CREATE INDEX IDX_QRTZ_FT_JG ON QRTZ_FIRED_TRIGGERS(SCHED_NAME,JOB_GROUP);
CREATE INDEX IDX_QRTZ_FT_T_G ON QRTZ_FIRED_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP);
CREATE INDEX IDX_QRTZ_FT_TG ON QRTZ_FIRED_TRIGGERS(SCHED_NAME,TRIGGER_GROUP);


-- END OF Quartz

-- START OF Additional Script

create view am_vw_audit_b_a as select * from am_audit_b union all select * from am_audit_a;
create view am_vw_audit_c_b as select * from am_audit_c union all select * from am_audit_b;
create view am_vw_audit_a_c as select * from am_audit_a union all select * from am_audit_c;

create view am_vw_audit_attribute_b_a as select * from am_audit_attr_b union all select * from am_audit_attr_a;
create view am_vw_audit_attribute_c_b as select * from am_audit_attr_c union all select * from am_audit_attr_b;
create view am_vw_audit_attribute_a_c as select * from am_audit_attr_a union all select * from am_audit_attr_c;

-- END OF Additional Script

-- Uncomment the following and input the user/role that will be used to connect to AccessMatrix for additional housekeeping privileges. 

-- grant drop on amdb.am_audit_attr_a to 'user'@'localhost';
-- grant drop on amdb.am_audit_attr_b to 'user'@'localhost';
-- grant drop on amdb.am_audit_attr_c to 'user'@'localhost';
-- grant drop on amdb.am_audit_a to 'user'@'localhost';
-- grant drop on amdb.am_audit_b to 'user'@'localhost';
-- grant drop on amdb.am_audit_c to 'user'@'localhost';


