.class public final Lo/preferLastSpan$extraCallback;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/preferLastSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# static fields
.field public static final abc_fade_in:I = 0x7f010000

.field public static final abc_fade_out:I = 0x7f010001

.field public static final abc_grow_fade_in_from_bottom:I = 0x7f010002

.field public static final abc_popup_enter:I = 0x7f010003

.field public static final abc_popup_exit:I = 0x7f010004

.field public static final abc_shrink_fade_out_from_bottom:I = 0x7f010005

.field public static final abc_slide_in_bottom:I = 0x7f010006

.field public static final abc_slide_in_top:I = 0x7f010007

.field public static final abc_slide_out_bottom:I = 0x7f010008

.field public static final abc_slide_out_top:I = 0x7f010009

.field public static final abc_tooltip_enter:I = 0x7f01000a

.field public static final abc_tooltip_exit:I = 0x7f01000b

.field public static final btn_checkbox_to_checked_box_inner_merged_animation:I = 0x7f01000c

.field public static final btn_checkbox_to_checked_box_outer_merged_animation:I = 0x7f01000d

.field public static final btn_checkbox_to_checked_icon_null_animation:I = 0x7f01000e

.field public static final btn_checkbox_to_unchecked_box_inner_merged_animation:I = 0x7f01000f

.field public static final btn_checkbox_to_unchecked_check_path_merged_animation:I = 0x7f010010

.field public static final btn_checkbox_to_unchecked_icon_null_animation:I = 0x7f010011

.field public static final btn_radio_to_off_mtrl_dot_group_animation:I = 0x7f010012

.field public static final btn_radio_to_off_mtrl_ring_outer_animation:I = 0x7f010013

.field public static final btn_radio_to_off_mtrl_ring_outer_path_animation:I = 0x7f010014

.field public static final btn_radio_to_on_mtrl_dot_group_animation:I = 0x7f010015

.field public static final btn_radio_to_on_mtrl_ring_outer_animation:I = 0x7f010016

.field public static final btn_radio_to_on_mtrl_ring_outer_path_animation:I = 0x7f010017

.field public static final design_bottom_sheet_slide_in:I = 0x7f01001d

.field public static final design_bottom_sheet_slide_out:I = 0x7f01001e

.field public static final design_snackbar_in:I = 0x7f01001f

.field public static final design_snackbar_out:I = 0x7f010020

.field public static final fragment_close_enter:I = 0x7f010027

.field public static final fragment_close_exit:I = 0x7f010028

.field public static final fragment_fade_enter:I = 0x7f01002d

.field public static final fragment_fade_exit:I = 0x7f01002e

.field public static final fragment_fast_out_extra_slow_in:I = 0x7f01002f

.field public static final fragment_open_enter:I = 0x7f010030

.field public static final fragment_open_exit:I = 0x7f010031

.field public static final mtrl_bottom_sheet_slide_in:I = 0x7f01003a

.field public static final mtrl_bottom_sheet_slide_out:I = 0x7f01003b

.field public static final mtrl_card_lowers_interpolator:I = 0x7f01003c

.field private static onMessageChannelReady:Landroid/content/Context; = null

.field private static onNavigationEvent:Ljava/lang/Boolean; = null

.field public static final slide_in_up:I = 0x7f010047

.field public static final slide_out_down:I = 0x7f010048


# instance fields
.field private final arg$1:Lo/getEndedAt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getEndedAt;)V
    .locals 0

    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/preferLastSpan$extraCallback;->arg$1:Lo/getEndedAt;

    return-void
.end method

.method public static lambdaFactory$(Lo/getEndedAt;)Ljava/lang/Runnable;
    .locals 1

    .line 5000
    new-instance v0, Lo/preferLastSpan$extraCallback;

    invoke-direct {v0, p0}, Lo/preferLastSpan$extraCallback;-><init>(Lo/getEndedAt;)V

    return-object v0
.end method

.method public static declared-synchronized onPostMessage(Landroid/content/Context;)Z
    .locals 4

    const-class v0, Lo/preferLastSpan$extraCallback;

    monitor-enter v0

    .line 1002
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1003
    sget-object v2, Lo/preferLastSpan$extraCallback;->onMessageChannelReady:Landroid/content/Context;

    if-eqz v2, :cond_0

    sget-object v2, Lo/preferLastSpan$extraCallback;->onNavigationEvent:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Lo/preferLastSpan$extraCallback;->onMessageChannelReady:Landroid/content/Context;

    if-ne v2, v1, :cond_0

    .line 1004
    sget-object p0, Lo/preferLastSpan$extraCallback;->onNavigationEvent:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    const/4 v2, 0x0

    .line 1005
    :try_start_1
    sput-object v2, Lo/preferLastSpan$extraCallback;->onNavigationEvent:Ljava/lang/Boolean;

    .line 2016
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 1007
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lo/preferLastSpan$extraCallback;->onNavigationEvent:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1009
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    .line 1010
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 1011
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lo/preferLastSpan$extraCallback;->onNavigationEvent:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1014
    :catch_0
    :try_start_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lo/preferLastSpan$extraCallback;->onNavigationEvent:Ljava/lang/Boolean;

    .line 1015
    :goto_1
    sput-object v1, Lo/preferLastSpan$extraCallback;->onMessageChannelReady:Landroid/content/Context;

    .line 1016
    sget-object p0, Lo/preferLastSpan$extraCallback;->onNavigationEvent:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 4000
    iget-object v0, p0, Lo/preferLastSpan$extraCallback;->arg$1:Lo/getEndedAt;

    invoke-static {v0}, Lo/getEndedAt;->lambda$terminate$5(Lo/getEndedAt;)V

    return-void
.end method
