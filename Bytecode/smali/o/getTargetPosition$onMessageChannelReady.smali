.class public final Lo/getTargetPosition$onMessageChannelReady;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ak$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTargetPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final abc_action_bar_home_description:I = 0x7f130007

.field public static final abc_action_bar_up_description:I = 0x7f130008

.field public static final abc_action_menu_overflow_description:I = 0x7f130009

.field public static final abc_action_mode_done:I = 0x7f13000a

.field public static final abc_activity_chooser_view_see_all:I = 0x7f13000b

.field public static final abc_activitychooserview_choose_application:I = 0x7f13000c

.field public static final abc_capital_off:I = 0x7f13000d

.field public static final abc_capital_on:I = 0x7f13000e

.field public static final abc_menu_alt_shortcut_label:I = 0x7f13000f

.field public static final abc_menu_ctrl_shortcut_label:I = 0x7f130010

.field public static final abc_menu_delete_shortcut_label:I = 0x7f130011

.field public static final abc_menu_enter_shortcut_label:I = 0x7f130012

.field public static final abc_menu_function_shortcut_label:I = 0x7f130013

.field public static final abc_menu_meta_shortcut_label:I = 0x7f130014

.field public static final abc_menu_shift_shortcut_label:I = 0x7f130015

.field public static final abc_menu_space_shortcut_label:I = 0x7f130016

.field public static final abc_menu_sym_shortcut_label:I = 0x7f130017

.field public static final abc_prepend_shortcut_label:I = 0x7f130018

.field public static final abc_search_hint:I = 0x7f130019

.field public static final abc_searchview_description_clear:I = 0x7f13001a

.field public static final abc_searchview_description_query:I = 0x7f13001b

.field public static final abc_searchview_description_search:I = 0x7f13001c

.field public static final abc_searchview_description_submit:I = 0x7f13001d

.field public static final abc_searchview_description_voice:I = 0x7f13001e

.field public static final abc_shareactionprovider_share_with:I = 0x7f13001f

.field public static final abc_shareactionprovider_share_with_application:I = 0x7f130020

.field public static final abc_toolbar_collapse_description:I = 0x7f130021

.field public static final common_google_play_services_enable_button:I = 0x7f130108

.field public static final common_google_play_services_enable_text:I = 0x7f130109

.field public static final common_google_play_services_enable_title:I = 0x7f13010a

.field public static final common_google_play_services_install_button:I = 0x7f13010b

.field public static final common_google_play_services_install_text:I = 0x7f13010c

.field public static final common_google_play_services_install_title:I = 0x7f13010d

.field public static final common_google_play_services_notification_channel_name:I = 0x7f13010e

.field public static final common_google_play_services_notification_ticker:I = 0x7f13010f

.field public static final common_google_play_services_unknown_issue:I = 0x7f130110

.field public static final common_google_play_services_unsupported_text:I = 0x7f130111

.field public static final common_google_play_services_update_button:I = 0x7f130112

.field public static final common_google_play_services_update_text:I = 0x7f130113

.field public static final common_google_play_services_update_title:I = 0x7f130114

.field public static final common_google_play_services_updating_text:I = 0x7f130115

.field public static final common_google_play_services_wear_update_text:I = 0x7f130116

.field public static final common_open_on_phone:I = 0x7f130117

.field public static final common_signin_button_text:I = 0x7f130118

.field public static final common_signin_button_text_long:I = 0x7f130119

.field public static final etag:I = 0x7f1301ac

.field public static final fcm_fallback_notification_channel_label:I = 0x7f1301e2

.field public static final notification_message:I = 0x7f130329

.field public static final notification_title:I = 0x7f13032e

.field public static final onPostMessage:Lo/getTargetPosition$onMessageChannelReady;

.field public static final search_menu_title:I = 0x7f1303e1

.field public static final status_bar_notification_info_overflow:I = 0x7f130451

.field public static final two_string_append:I = 0x7f130499

.field public static final valid_digits:I = 0x7f1304d1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/getTargetPosition$onMessageChannelReady;

    invoke-direct {v0}, Lo/getTargetPosition$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/getTargetPosition$onMessageChannelReady;->onPostMessage:Lo/getTargetPosition$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 2000
    check-cast p1, Landroid/database/Cursor;

    .line 2431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2433
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2434
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 2435
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2436
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2439
    :cond_0
    new-array p1, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2441
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 2442
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 2443
    array-length v5, v4

    invoke-static {v4, v1, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2444
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method
