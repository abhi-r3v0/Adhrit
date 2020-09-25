.class public Lo/setChipIconResource;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:[Ljava/lang/String;

.field public static final onMessageChannelReady:[Ljava/lang/String;

.field public static final onNavigationEvent:[Ljava/lang/String;

.field public static final onPostMessage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    const-string v0, "app_background"

    const-string v1, "app_clear_data"

    const-string v2, "app_exception"

    const-string v3, "app_remove"

    const-string v4, "app_upgrade"

    const-string v5, "app_install"

    const-string v6, "app_update"

    const-string v7, "ga_campaign"

    const-string v8, "error"

    const-string v9, "first_open"

    const-string v10, "first_visit"

    const-string v11, "in_app_purchase"

    const-string v12, "notification_dismiss"

    const-string v13, "notification_foreground"

    const-string v14, "notification_open"

    const-string v15, "notification_receive"

    const-string v16, "os_update"

    const-string v17, "session_start"

    const-string v18, "user_engagement"

    const-string v19, "ad_exposure"

    const-string v20, "adunit_exposure"

    const-string v21, "ad_query"

    const-string v22, "ad_activeview"

    const-string v23, "ad_impression"

    const-string v24, "ad_click"

    const-string v25, "ad_reward"

    const-string v26, "screen_view"

    const-string v27, "ga_extra_parameter"

    const-string v28, "session_start_with_rollout"

    const-string v29, "firebase_campaign"

    .line 4
    filled-new-array/range {v0 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setChipIconResource;->ICustomTabsCallback:[Ljava/lang/String;

    const-string v0, "ad_impression"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setChipIconResource;->onNavigationEvent:[Ljava/lang/String;

    const-string v1, "_ab"

    const-string v2, "_cd"

    const-string v3, "_ae"

    const-string v4, "_ui"

    const-string v5, "_ug"

    const-string v6, "_in"

    const-string v7, "_au"

    const-string v8, "_cmp"

    const-string v9, "_err"

    const-string v10, "_f"

    const-string v11, "_v"

    const-string v12, "_iap"

    const-string v13, "_nd"

    const-string v14, "_nf"

    const-string v15, "_no"

    const-string v16, "_nr"

    const-string v17, "_ou"

    const-string v18, "_s"

    const-string v19, "_e"

    const-string v20, "_xa"

    const-string v21, "_xu"

    const-string v22, "_aq"

    const-string v23, "_aa"

    const-string v24, "_ai"

    const-string v25, "_ac"

    const-string v26, "_ar"

    const-string v27, "_vs"

    const-string v28, "_ep"

    const-string v29, "_ssr"

    const-string v30, "_cmp"

    .line 6
    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setChipIconResource;->onPostMessage:[Ljava/lang/String;

    const-string v1, "purchase"

    const-string v2, "refund"

    const-string v3, "add_payment_info"

    const-string v4, "add_shipping_info"

    const-string v5, "add_to_cart"

    const-string v6, "add_to_wishlist"

    const-string v7, "begin_checkout"

    const-string v8, "remove_from_cart"

    const-string v9, "select_item"

    const-string v10, "select_promotion"

    const-string v11, "view_cart"

    const-string v12, "view_item"

    const-string v13, "view_item_list"

    const-string v14, "view_promotion"

    const-string v15, "ecommerce_purchase"

    const-string v16, "purchase_refund"

    const-string v17, "set_checkout_option"

    const-string v18, "checkout_progress"

    const-string v19, "select_content"

    const-string v20, "view_search_results"

    .line 7
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setChipIconResource;->onMessageChannelReady:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    sget-object v0, Lo/setChipIconResource;->ICustomTabsCallback:[Ljava/lang/String;

    sget-object v1, Lo/setChipIconResource;->onPostMessage:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lo/setDividerDrawableHorizontal;->onPostMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lo/setChipIconResource;->onPostMessage:[Ljava/lang/String;

    sget-object v1, Lo/setChipIconResource;->ICustomTabsCallback:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lo/setDividerDrawableHorizontal;->onPostMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
