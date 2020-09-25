.class public final Lo/extraCallback$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Lo/isFromUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0006\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/lifecycle/CloseableCoroutineScope;",
        "Ljava/io/Closeable;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlin/coroutines/CoroutineContext;)V",
        "coroutineContext",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "close",
        "",
        "lifecycle-viewmodel-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final abc_action_bar_title_item:I = 0x7f0e0000

.field public static final abc_action_bar_up_container:I = 0x7f0e0001

.field public static final abc_action_menu_item_layout:I = 0x7f0e0002

.field public static final abc_action_menu_layout:I = 0x7f0e0003

.field public static final abc_action_mode_bar:I = 0x7f0e0004

.field public static final abc_action_mode_close_item_material:I = 0x7f0e0005

.field public static final abc_activity_chooser_view:I = 0x7f0e0006

.field public static final abc_activity_chooser_view_list_item:I = 0x7f0e0007

.field public static final abc_alert_dialog_button_bar_material:I = 0x7f0e0008

.field public static final abc_alert_dialog_material:I = 0x7f0e0009

.field public static final abc_alert_dialog_title_material:I = 0x7f0e000a

.field public static final abc_cascading_menu_item_layout:I = 0x7f0e000b

.field public static final abc_dialog_title_material:I = 0x7f0e000c

.field public static final abc_expanded_menu_layout:I = 0x7f0e000d

.field public static final abc_list_menu_item_checkbox:I = 0x7f0e000e

.field public static final abc_list_menu_item_icon:I = 0x7f0e000f

.field public static final abc_list_menu_item_layout:I = 0x7f0e0010

.field public static final abc_list_menu_item_radio:I = 0x7f0e0011

.field public static final abc_popup_menu_header_item_layout:I = 0x7f0e0012

.field public static final abc_popup_menu_item_layout:I = 0x7f0e0013

.field public static final abc_screen_content_include:I = 0x7f0e0014

.field public static final abc_screen_simple:I = 0x7f0e0015

.field public static final abc_screen_simple_overlay_action_mode:I = 0x7f0e0016

.field public static final abc_screen_toolbar:I = 0x7f0e0017

.field public static final abc_search_dropdown_item_icons_2line:I = 0x7f0e0018

.field public static final abc_search_view:I = 0x7f0e0019

.field public static final abc_select_dialog_material:I = 0x7f0e001a

.field public static final abc_tooltip:I = 0x7f0e001b

.field public static final custom_dialog:I = 0x7f0e0053

.field public static final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final notification_action:I = 0x7f0e02d1

.field public static final notification_action_tombstone:I = 0x7f0e02d2

.field public static final notification_template_custom_big:I = 0x7f0e02d9

.field public static final notification_template_icon_group:I = 0x7f0e02da

.field public static final notification_template_part_chronometer:I = 0x7f0e02de

.field public static final notification_template_part_time:I = 0x7f0e02df

.field public static final select_dialog_item_material:I = 0x7f0e0307

.field public static final select_dialog_multichoice_material:I = 0x7f0e0308

.field public static final select_dialog_singlechoice_material:I = 0x7f0e0309

.field public static final support_simple_spinner_dropdown_item:I = 0x7f0e031b


# instance fields
.field private final onPostMessage:Lo/isZombied;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 7000
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The requesting app is unavailable (e.g. unpublished, nonexistent version code)."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "The requested pack is not available."

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    const/4 v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "The request is invalid."

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    const/4 v4, -0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "The requested download is not found."

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    const/4 v5, -0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "The Asset Delivery API is not available."

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    const/4 v6, -0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Network error. Unable to obtain the asset pack details."

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    const/4 v7, -0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Download not permitted under current device circumstances (e.g. in background)."

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    const/16 v8, -0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Asset pack download failed due to insufficient storage."

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    const/16 v9, -0xb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "The Play Store app is either not installed or not the official version."

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    const/16 v10, -0xc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "Tried to show the cellular data confirmation but no asset packs are waiting for Wi-Fi."

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    const/16 v11, -0xd

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "The app is not owned by any user on this device. An app is \"owned\" if it has been acquired from Play."

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->extraCallback:Ljava/util/Map;

    const/16 v12, -0x64

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "Unknown error downloading an asset pack."

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v13, "APP_UNAVAILABLE"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v1, "PACK_UNAVAILABLE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v1, "INVALID_REQUEST"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v1, "DOWNLOAD_NOT_FOUND"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v1, "API_NOT_AVAILABLE"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v1, "NETWORK_ERROR"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v1, "ACCESS_DENIED"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v1, "INSUFFICIENT_STORAGE"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v1, "PLAY_STORE_NOT_FOUND"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v1, "NETWORK_UNRESTRICTED"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v1, "APP_NOT_OWNED"

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/extraCallback$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v1, "INTERNAL_ERROR"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/isZombied;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5046
    iput-object p1, p0, Lo/extraCallback$ICustomTabsCallback$Stub;->onPostMessage:Lo/isZombied;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 2046
    iget-object v0, p0, Lo/extraCallback$ICustomTabsCallback$Stub;->onPostMessage:Lo/isZombied;

    .line 4563
    sget-object v1, Lo/assertValidTrackedQuery;->onNavigationEvent:Lo/assertValidTrackedQuery$onNavigationEvent;

    check-cast v1, Lo/isZombied$extraCallback;

    invoke-interface {v0, v1}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/assertValidTrackedQuery;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/assertValidTrackedQuery;->onNavigationEvent(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage()Lo/isZombied;
    .locals 1

    .line 1046
    iget-object v0, p0, Lo/extraCallback$ICustomTabsCallback$Stub;->onPostMessage:Lo/isZombied;

    return-object v0
.end method
