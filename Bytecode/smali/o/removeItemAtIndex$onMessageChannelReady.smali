.class public final Lo/removeItemAtIndex$onMessageChannelReady;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeItemAtIndex;
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

.field public static final search_menu_title:I = 0x7f1303e1

.field public static final status_bar_notification_info_overflow:I = 0x7f130451

.field public static final two_string_append:I = 0x7f130499

.field public static final valid_digits:I = 0x7f1304d1


# instance fields
.field private final arg$1:Lo/getEndedAt;

.field private final arg$2:Lo/removeBackgroundStateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getEndedAt;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/removeItemAtIndex$onMessageChannelReady;->arg$1:Lo/getEndedAt;

    iput-object p2, p0, Lo/removeItemAtIndex$onMessageChannelReady;->arg$2:Lo/removeBackgroundStateChangeListener;

    return-void
.end method

.method public static lambdaFactory$(Lo/getEndedAt;Lo/removeBackgroundStateChangeListener;)Ljava/lang/Runnable;
    .locals 1

    .line 4000
    new-instance v0, Lo/removeItemAtIndex$onMessageChannelReady;

    invoke-direct {v0, p0, p1}, Lo/removeItemAtIndex$onMessageChannelReady;-><init>(Lo/getEndedAt;Lo/removeBackgroundStateChangeListener;)V

    return-object v0
.end method

.method public static onMessageChannelReady([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1013
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 3000
    iget-object v0, p0, Lo/removeItemAtIndex$onMessageChannelReady;->arg$1:Lo/getEndedAt;

    iget-object v1, p0, Lo/removeItemAtIndex$onMessageChannelReady;->arg$2:Lo/removeBackgroundStateChangeListener;

    invoke-static {v0, v1}, Lo/getEndedAt;->lambda$waitForPendingWrites$13(Lo/getEndedAt;Lo/removeBackgroundStateChangeListener;)V

    return-void
.end method
