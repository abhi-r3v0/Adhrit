.class public final Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$database$core$view$Event$EventType:[I

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

.field public static final device_credential_handler_activity:I = 0x7f0e0065

.field public static final fingerprint_dialog_layout:I = 0x7f0e008b

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
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4077
    invoke-static {}, Lo/Utils$onNavigationEvent;->values()[Lo/Utils$onNavigationEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;->$SwitchMap$com$google$firebase$database$core$view$Event$EventType:[I

    :try_start_0
    sget-object v1, Lo/Utils$onNavigationEvent;->CHILD_ADDED:Lo/Utils$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;->$SwitchMap$com$google$firebase$database$core$view$Event$EventType:[I

    sget-object v1, Lo/Utils$onNavigationEvent;->CHILD_CHANGED:Lo/Utils$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;->$SwitchMap$com$google$firebase$database$core$view$Event$EventType:[I

    sget-object v1, Lo/Utils$onNavigationEvent;->CHILD_MOVED:Lo/Utils$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;->$SwitchMap$com$google$firebase$database$core$view$Event$EventType:[I

    sget-object v1, Lo/Utils$onNavigationEvent;->CHILD_REMOVED:Lo/Utils$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 1054
    iput-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public static extraCallback()V
    .locals 3

    const/4 v0, 0x0

    .line 2105
    sput-object v0, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    .line 3088
    sget-object v0, Lo/OperationCanceledException;->extraCallback:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 3089
    sget-object v0, Lo/OperationCanceledException;->extraCallback:Landroid/app/Application;

    const/4 v1, 0x0

    const-string v2, "com.dreamplug.auth"

    .line 3084
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2107
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 3091
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Have you called Authenticator.init(Context context) first?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
