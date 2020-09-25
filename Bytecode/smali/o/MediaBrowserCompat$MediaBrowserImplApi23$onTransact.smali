.class public final Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onTransact"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/auth/internals/AuthScheduler;",
        "",
        "()V",
        "ACCESS_TOKEN",
        "",
        "FLEXTIME",
        "",
        "schedule",
        "",
        "authData",
        "Lcom/dreamplug/auth/data/AuthData;",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
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

.field public static final accessibility_fingerprint_dialog_help_area:I = 0x7f130022

.field public static final confirm_device_credential_password:I = 0x7f130123

.field public static final default_error_msg:I = 0x7f130151

.field public static final fingerprint_dialog_touch_sensor:I = 0x7f1301ea

.field public static final fingerprint_error_hw_not_available:I = 0x7f1301eb

.field public static final fingerprint_error_hw_not_present:I = 0x7f1301ec

.field public static final fingerprint_error_lockout:I = 0x7f1301ed

.field public static final fingerprint_error_no_fingerprints:I = 0x7f1301ee

.field public static final fingerprint_error_user_canceled:I = 0x7f1301ef

.field public static final fingerprint_not_recognized:I = 0x7f1301f0

.field public static final generic_error_user_canceled:I = 0x7f130261

.field public static final search_menu_title:I = 0x7f1303e1

.field public static final status_bar_notification_info_overflow:I = 0x7f130451


# instance fields
.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->onMessageChannelReady:Ljava/lang/String;

    .line 1054
    iput-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public static extraCallback(Lo/checkCompatWrapper;)V
    .locals 8

    .line 2012
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p0, :cond_2

    .line 2013
    invoke-interface {p0}, Lo/checkCompatWrapper;->getExpiryTimeStamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 2015
    invoke-interface {p0}, Lo/checkCompatWrapper;->getExpiryTimeStamp()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1b7740

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    move-wide v2, v0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    .line 2022
    invoke-interface {p0}, Lo/checkCompatWrapper;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string v5, "Access token"

    invoke-direct {v4, v5, p0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v4, v1, p0

    .line 2042
    new-instance v4, Lo/PlaybackStateCompat$Builder$onPostMessage;

    invoke-direct {v4}, Lo/PlaybackStateCompat$Builder$onPostMessage;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-gtz v5, :cond_1

    .line 2043
    aget-object v6, v1, p0

    .line 4027
    iget-object v7, v6, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 2044
    check-cast v7, Ljava/lang/String;

    .line 4028
    iget-object v6, v6, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 2044
    invoke-virtual {v4, v7, v6}, Lo/PlaybackStateCompat$Builder$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/PlaybackStateCompat$Builder$onPostMessage;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4843
    :cond_1
    new-instance p0, Lo/PlaybackStateCompat$Builder;

    iget-object v1, v4, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    invoke-direct {p0, v1}, Lo/PlaybackStateCompat$Builder;-><init>(Ljava/util/Map;)V

    .line 4846
    invoke-static {p0}, Lo/PlaybackStateCompat$Builder;->onNavigationEvent(Lo/PlaybackStateCompat$Builder;)[B

    const-string v1, "dataBuilder.build()"

    .line 2046
    invoke-static {p0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2025
    new-instance v1, Lo/getErrorCode$onMessageChannelReady;

    invoke-direct {v1}, Lo/getErrorCode$onMessageChannelReady;-><init>()V

    .line 2026
    sget-object v4, Lo/addCustomAction;->onPostMessage:Lo/addCustomAction;

    .line 5326
    iput-object v4, v1, Lo/getErrorCode$onMessageChannelReady;->onNavigationEvent:Lo/addCustomAction;

    .line 5339
    iput-boolean v0, v1, Lo/getErrorCode$onMessageChannelReady;->onPostMessage:Z

    .line 5453
    new-instance v0, Lo/getErrorCode;

    invoke-direct {v0, v1}, Lo/getErrorCode;-><init>(Lo/getErrorCode$onMessageChannelReady;)V

    const-string v1, "Constraints.Builder()\n  \u2026                 .build()"

    .line 2028
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2047
    new-instance v1, Lo/setBufferedPosition$extraCallback;

    const-class v4, Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;

    invoke-direct {v1, v4}, Lo/setBufferedPosition$extraCallback;-><init>(Ljava/lang/Class;)V

    .line 6197
    iget-object v4, v1, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    iput-object p0, v4, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    .line 6198
    invoke-virtual {v1}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->ICustomTabsCallback()Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;

    move-result-object p0

    .line 2032
    check-cast p0, Lo/setBufferedPosition$extraCallback;

    .line 2033
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v1}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;

    move-result-object p0

    check-cast p0, Lo/setBufferedPosition$extraCallback;

    .line 7185
    iget-object v1, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    iput-object v0, v1, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 7186
    invoke-virtual {p0}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->ICustomTabsCallback()Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;

    move-result-object p0

    .line 2034
    check-cast p0, Lo/setBufferedPosition$extraCallback;

    .line 7209
    iget-object v0, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/Set;

    const-string v1, "auth refresh job"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7210
    invoke-virtual {p0}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->ICustomTabsCallback()Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;

    move-result-object p0

    .line 2035
    check-cast p0, Lo/setBufferedPosition$extraCallback;

    .line 2036
    invoke-virtual {p0}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onMessageChannelReady()Lo/PlaybackStateCompat$CustomAction$1;

    move-result-object p0

    const-string v0, "OneTimeWorkRequestBuilde\u2026                 .build()"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2030
    check-cast p0, Lo/setBufferedPosition;

    .line 2037
    sget-object v0, Lo/OperationCanceledException;->extraCallback:Landroid/app/Application;

    check-cast v0, Landroid/content/Context;

    .line 8184
    invoke-static {v0}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object v0

    .line 2038
    sget-object v1, Lo/PlaybackStateCompat$Actions;->onPostMessage:Lo/PlaybackStateCompat$Actions;

    .line 8354
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v2, "auth refresh"

    .line 8351
    invoke-virtual {v0, v2, v1, p0}, Lo/setErrorMessage;->extraCallback(Ljava/lang/String;Lo/PlaybackStateCompat$Actions;Ljava/util/List;)Lo/setActions;

    :cond_2
    return-void
.end method
