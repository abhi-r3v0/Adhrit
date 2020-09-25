.class public Lo/setCloseIconVisible;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:[Ljava/lang/String;

.field public static final extraCallback:[Ljava/lang/String;

.field public static final onMessageChannelReady:[Ljava/lang/String;

.field public static final onPostMessage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 58

    const-string v0, "ga_conversion"

    const-string v1, "engagement_time_msec"

    const-string v2, "exposure_time"

    const-string v3, "ad_event_id"

    const-string v4, "ad_unit_id"

    const-string v5, "ga_error"

    const-string v6, "ga_error_value"

    const-string v7, "ga_error_length"

    const-string v8, "ga_event_origin"

    const-string v9, "ga_screen"

    const-string v10, "ga_screen_class"

    const-string v11, "ga_screen_id"

    const-string v12, "ga_previous_screen"

    const-string v13, "ga_previous_class"

    const-string v14, "ga_previous_id"

    const-string v15, "manual_tracking"

    const-string v16, "message_device_time"

    const-string v17, "message_id"

    const-string v18, "message_name"

    const-string v19, "message_time"

    const-string v20, "message_tracking_id"

    const-string v21, "message_type"

    const-string v22, "previous_app_version"

    const-string v23, "previous_os_version"

    const-string v24, "topic"

    const-string v25, "update_with_analytics"

    const-string v26, "previous_first_open_count"

    const-string v27, "system_app"

    const-string v28, "system_app_update"

    const-string v29, "previous_install_count"

    const-string v30, "ga_event_id"

    const-string v31, "ga_extra_params_ct"

    const-string v32, "ga_group_name"

    const-string v33, "ga_list_length"

    const-string v34, "ga_index"

    const-string v35, "ga_event_name"

    const-string v36, "campaign_info_source"

    const-string v37, "cached_campaign"

    const-string v38, "deferred_analytics_collection"

    const-string v39, "ga_session_number"

    const-string v40, "ga_session_id"

    const-string v41, "campaign_extra_referrer"

    const-string v42, "app_in_background"

    const-string v43, "firebase_feature_rollouts"

    const-string v44, "firebase_conversion"

    const-string v45, "firebase_error"

    const-string v46, "firebase_error_value"

    const-string v47, "firebase_error_length"

    const-string v48, "firebase_event_origin"

    const-string v49, "firebase_screen"

    const-string v50, "firebase_screen_class"

    const-string v51, "firebase_screen_id"

    const-string v52, "firebase_previous_screen"

    const-string v53, "firebase_previous_class"

    const-string v54, "firebase_previous_id"

    const-string v55, "session_number"

    const-string v56, "session_id"

    .line 3
    filled-new-array/range {v0 .. v56}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setCloseIconVisible;->extraCallback:[Ljava/lang/String;

    const-string v1, "_c"

    const-string v2, "_et"

    const-string v3, "_xt"

    const-string v4, "_aeid"

    const-string v5, "_ai"

    const-string v6, "_err"

    const-string v7, "_ev"

    const-string v8, "_el"

    const-string v9, "_o"

    const-string v10, "_sn"

    const-string v11, "_sc"

    const-string v12, "_si"

    const-string v13, "_pn"

    const-string v14, "_pc"

    const-string v15, "_pi"

    const-string v16, "_mst"

    const-string v17, "_ndt"

    const-string v18, "_nmid"

    const-string v19, "_nmn"

    const-string v20, "_nmt"

    const-string v21, "_nmtid"

    const-string v22, "_nmc"

    const-string v23, "_pv"

    const-string v24, "_po"

    const-string v25, "_nt"

    const-string v26, "_uwa"

    const-string v27, "_pfo"

    const-string v28, "_sys"

    const-string v29, "_sysu"

    const-string v30, "_pin"

    const-string v31, "_eid"

    const-string v32, "_epc"

    const-string v33, "_gn"

    const-string v34, "_ll"

    const-string v35, "_i"

    const-string v36, "_en"

    const-string v37, "_cis"

    const-string v38, "_cc"

    const-string v39, "_dac"

    const-string v40, "_sno"

    const-string v41, "_sid"

    const-string v42, "_cer"

    const-string v43, "_aib"

    const-string v44, "_ffr"

    const-string v45, "_c"

    const-string v46, "_err"

    const-string v47, "_ev"

    const-string v48, "_el"

    const-string v49, "_o"

    const-string v50, "_sn"

    const-string v51, "_sc"

    const-string v52, "_si"

    const-string v53, "_pn"

    const-string v54, "_pc"

    const-string v55, "_pi"

    const-string v56, "_sno"

    const-string v57, "_sid"

    .line 4
    filled-new-array/range {v1 .. v57}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setCloseIconVisible;->onMessageChannelReady:[Ljava/lang/String;

    const-string v0, "items"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setCloseIconVisible;->ICustomTabsCallback:[Ljava/lang/String;

    const-string v1, "affiliation"

    const-string v2, "coupon"

    const-string v3, "creative_name"

    const-string v4, "creative_slot"

    const-string v5, "currency"

    const-string v6, "discount"

    const-string v7, "index"

    const-string v8, "item_id"

    const-string v9, "item_brand"

    const-string v10, "item_category"

    const-string v11, "item_category2"

    const-string v12, "item_category3"

    const-string v13, "item_category4"

    const-string v14, "item_category5"

    const-string v15, "item_list_name"

    const-string v16, "item_list_id"

    const-string v17, "item_name"

    const-string v18, "item_variant"

    const-string v19, "location_id"

    const-string v20, "payment_type"

    const-string v21, "price"

    const-string v22, "promotion_id"

    const-string v23, "promotion_name"

    const-string v24, "quantity"

    const-string v25, "shipping"

    const-string v26, "shipping_tier"

    const-string v27, "tax"

    const-string v28, "transaction_id"

    const-string v29, "value"

    const-string v30, "item_list"

    const-string v31, "checkout_step"

    const-string v32, "checkout_option"

    const-string v33, "item_location_id"

    .line 6
    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setCloseIconVisible;->onPostMessage:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lo/setCloseIconVisible;->extraCallback:[Ljava/lang/String;

    sget-object v1, Lo/setCloseIconVisible;->onMessageChannelReady:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lo/setDividerDrawableHorizontal;->onPostMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
