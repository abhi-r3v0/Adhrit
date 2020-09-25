.class public final Lo/OrderPaymentJsonAdapter$onMessageChannelReady;
.super Ljava/lang/Object;

# interfaces
.implements Lo/optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OrderPaymentJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/optional;

.field public static final common_google_play_services_enable_button:I = 0x7f130108

.field public static final common_google_play_services_enable_text:I = 0x7f130109

.field public static final common_google_play_services_enable_title:I = 0x7f13010a

.field public static final common_google_play_services_install_button:I = 0x7f13010b

.field public static final common_google_play_services_install_text:I = 0x7f13010c

.field public static final common_google_play_services_install_title:I = 0x7f13010d

.field public static final common_google_play_services_notification_channel_name:I = 0x7f13010e

.field public static final common_google_play_services_notification_ticker:I = 0x7f13010f

.field public static final common_google_play_services_unsupported_text:I = 0x7f130111

.field public static final common_google_play_services_update_button:I = 0x7f130112

.field public static final common_google_play_services_update_text:I = 0x7f130113

.field public static final common_google_play_services_update_title:I = 0x7f130114

.field public static final common_google_play_services_updating_text:I = 0x7f130115

.field public static final common_google_play_services_wear_update_text:I = 0x7f130116

.field public static final common_open_on_phone:I = 0x7f130117

.field public static final common_signin_button_text:I = 0x7f130118

.field public static final common_signin_button_text_long:I = 0x7f130119


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;

    invoke-direct {v0}, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:Lo/optional;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 2000
    invoke-static {p1}, Lo/setCustomKey;->onPostMessage(Landroid/os/IBinder;)Lo/recordException;

    move-result-object p1

    return-object p1
.end method
