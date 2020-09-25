.class public final Lo/toStringMap$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/toStringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation


# static fields
.field public static final abc_config_activityDefaultDur:I = 0x7f0c0000

.field public static final abc_config_activityShortDur:I = 0x7f0c0001

.field public static final app_bar_elevation_anim_duration:I = 0x7f0c0002

.field public static final bottom_sheet_slide_duration:I = 0x7f0c0003

.field public static final cancel_button_image_alpha:I = 0x7f0c0004

.field public static final config_tooltipAnimTime:I = 0x7f0c0005

.field public static final design_snackbar_text_max_lines:I = 0x7f0c0006

.field public static final design_tab_indicator_anim_duration_ms:I = 0x7f0c0007

.field public static final hide_password_duration:I = 0x7f0c000f

.field public static final mtrl_badge_max_character_count:I = 0x7f0c0011

.field public static final mtrl_btn_anim_delay_ms:I = 0x7f0c0012

.field public static final mtrl_btn_anim_duration_ms:I = 0x7f0c0013

.field public static final mtrl_calendar_header_orientation:I = 0x7f0c0014

.field public static final mtrl_calendar_selection_text_lines:I = 0x7f0c0015

.field public static final mtrl_calendar_year_selector_span:I = 0x7f0c0016

.field public static final mtrl_card_anim_delay_ms:I = 0x7f0c0017

.field public static final mtrl_card_anim_duration_ms:I = 0x7f0c0018

.field public static final mtrl_chip_anim_duration:I = 0x7f0c0019

.field public static final mtrl_tab_indicator_anim_duration_ms:I = 0x7f0c001a

.field public static final show_password_duration:I = 0x7f0c001b

.field public static final status_bar_notification_info_maxnum:I = 0x7f0c001c


# instance fields
.field private final arg$1:Lo/eventToJson;

.field private final arg$2:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/eventToJson;Ljava/lang/Runnable;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/toStringMap$ICustomTabsCallback$Stub;->arg$1:Lo/eventToJson;

    iput-object p2, p0, Lo/toStringMap$ICustomTabsCallback$Stub;->arg$2:Ljava/lang/Runnable;

    return-void
.end method

.method public static detectVersion()Ljava/lang/String;
    .locals 1

    .line 3031
    :try_start_0
    sget-object v0, Lo/fireEvent;->onMessageChannelReady:Lo/fireEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static lambdaFactory$(Lo/eventToJson;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/toStringMap$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0, p1}, Lo/toStringMap$ICustomTabsCallback$Stub;-><init>(Lo/eventToJson;Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/toStringMap$ICustomTabsCallback$Stub;->arg$1:Lo/eventToJson;

    iget-object v1, p0, Lo/toStringMap$ICustomTabsCallback$Stub;->arg$2:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo/eventToJson;->lambda$execute$0(Lo/eventToJson;Ljava/lang/Runnable;)V

    return-void
.end method
