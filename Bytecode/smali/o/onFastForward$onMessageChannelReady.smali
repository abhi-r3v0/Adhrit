.class public final Lo/onFastForward$onMessageChannelReady;
.super Ljava/lang/Object;

# interfaces
.implements Lo/sort;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onFastForward;
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

.field public static final expand_button_title:I = 0x7f1301d5

.field public static final search_menu_title:I = 0x7f1303e1

.field public static final status_bar_notification_info_overflow:I = 0x7f130451

.field public static final summary_collapsed_preference_list:I = 0x7f130461

.field public static final v7_preference_off:I = 0x7f1304cf

.field public static final v7_preference_on:I = 0x7f1304d0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)Lo/onChooseActivity;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1021
    new-instance p1, Lo/registerCallback;

    invoke-direct {p1}, Lo/registerCallback;-><init>()V

    return-object p1

    .line 1018
    :cond_0
    new-instance p1, Lo/onFastForward$ICustomTabsCallback;

    invoke-direct {p1}, Lo/onFastForward$ICustomTabsCallback;-><init>()V

    return-object p1

    .line 1012
    :cond_1
    new-instance p1, Lo/onFastForward$extraCallback;

    invoke-direct {p1}, Lo/onFastForward$extraCallback;-><init>()V

    return-object p1

    .line 1014
    :cond_2
    new-instance p1, Lo/onFastForward$onPostMessage;

    invoke-direct {p1}, Lo/onFastForward$onPostMessage;-><init>()V

    return-object p1

    .line 1016
    :cond_3
    new-instance p1, Lo/onFastForward$onNavigationEvent;

    invoke-direct {p1}, Lo/onFastForward$onNavigationEvent;-><init>()V

    return-object p1
.end method
