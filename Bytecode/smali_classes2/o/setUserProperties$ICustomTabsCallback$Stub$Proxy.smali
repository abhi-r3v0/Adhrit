.class public final Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;
.super Lo/RealtimeSinceBootClock$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$extraCallback;,
        Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$onMessageChannelReady<",
        "Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;",
        "Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lo/nativeToCircleFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nativeToCircleFilter<",
            "Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzyv:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;


# instance fields
.field private zzbb:I

.field private zzsf:B

.field private zzxw:J

.field private zzxx:J

.field private zzxy:J

.field private zzxz:Ljava/lang/String;

.field private zzya:I

.field private zzyb:Ljava/lang/String;

.field private zzyc:I

.field private zzyd:Z

.field private zzye:Lo/setImageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setImageRequest<",
            "Lo/setUserProperties$extraCommand;",
            ">;"
        }
    .end annotation
.end field

.field private zzyf:Lo/setTopInset;

.field private zzyg:Lo/setUserProperties$ICustomTabsCallback;

.field private zzyh:Lo/setTopInset;

.field private zzyi:Ljava/lang/String;

.field private zzyj:Ljava/lang/String;

.field private zzyk:Lo/setUserProperties$onNavigationEvent;

.field private zzyl:Ljava/lang/String;

.field private zzym:J

.field private zzyn:Lo/setUserProperties$getInterfaceDescriptor;

.field private zzyo:Lo/setTopInset;

.field private zzyp:Ljava/lang/String;

.field private zzyq:I

.field private zzyr:Lo/setGlobalLegacyVisibilityHandlingEnabled;

.field private zzys:J

.field private zzyt:Lo/setUserProperties$mayLaunchUrl;

.field private zzyu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v0}, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;-><init>()V

    sput-object v0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyv:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;

    const-class v1, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;

    invoke-static {v1, v0}, Lo/RealtimeSinceBootClock;->ICustomTabsCallback(Ljava/lang/Class;Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lo/RealtimeSinceBootClock$onMessageChannelReady;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzsf:B

    const-string v0, ""

    iput-object v0, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzxz:Ljava/lang/String;

    iput-object v0, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyb:Ljava/lang/String;

    invoke-static {}, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->asBinder()Lo/setImageRequest;

    move-result-object v1

    iput-object v1, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzye:Lo/setImageRequest;

    sget-object v1, Lo/setTopInset;->extraCallback:Lo/setTopInset;

    iput-object v1, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyf:Lo/setTopInset;

    sget-object v1, Lo/setTopInset;->extraCallback:Lo/setTopInset;

    iput-object v1, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyh:Lo/setTopInset;

    iput-object v0, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyi:Ljava/lang/String;

    iput-object v0, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyj:Ljava/lang/String;

    iput-object v0, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyl:Ljava/lang/String;

    const-wide/32 v1, 0x2bf20

    iput-wide v1, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzym:J

    sget-object v1, Lo/setTopInset;->extraCallback:Lo/setTopInset;

    iput-object v1, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyo:Lo/setTopInset;

    iput-object v0, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyp:Ljava/lang/String;

    invoke-static {}, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->asInterface()Lo/setGlobalLegacyVisibilityHandlingEnabled;

    move-result-object v0

    iput-object v0, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyr:Lo/setGlobalLegacyVisibilityHandlingEnabled;

    return-void
.end method

.method static synthetic extraCallback()Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;
    .locals 1

    sget-object v0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyv:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;

    return-object v0
.end method


# virtual methods
.method protected final onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p3, Lo/setConversationBannerMessage;->onMessageChannelReady:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    iput-byte p1, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzsf:B

    return-object v1

    :pswitch_1
    iget-byte p1, p0, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzsf:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_2

    const-class p2, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_1

    new-instance p1, Lo/RealtimeSinceBootClock$onPostMessage;

    sget-object p3, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyv:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {p1, p3}, Lo/RealtimeSinceBootClock$onPostMessage;-><init>(Lo/RealtimeSinceBootClock;)V

    sput-object p1, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzbg:Lo/nativeToCircleFilter;

    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyv:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;

    return-object p1

    :pswitch_4
    const/16 p1, 0x1c

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzbb"

    aput-object p2, p1, p3

    const-string p2, "zzxw"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzxz"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzye"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lo/setUserProperties$extraCommand;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzyf"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzyh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzyk"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzyi"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzyg"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzyd"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzya"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzyc"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzyj"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzyl"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzym"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzyn"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzxx"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzyo"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzyq"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    invoke-static {}, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$onMessageChannelReady;->ICustomTabsCallback()Lo/setHierarchy;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzyr"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzxy"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzys"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "zzyt"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "zzyp"

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "zzyu"

    aput-object p3, p1, p2

    const/16 p2, 0x1b

    const-string p3, "zzyb"

    aput-object p3, p1, p2

    sget-object p2, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->zzyv:Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;

    const-string p3, "\u0001\u0019\u0000\u0001\u0001\u001a\u001a\u001b\u0000\u0002\u0000\u0001\u0002\u0000\u0002\u0008\u0003\u0003\u001b\u0004\n\u0008\u0006\n\n\u0007\t\r\u0008\u0008\u000b\t\t\t\n\u0007\u0007\u000b\u0004\u0004\u000c\u0004\u0006\r\u0008\u000c\u000e\u0008\u000e\u000f\u0010\u000f\u0010\t\u0010\u0011\u0002\u0001\u0012\n\u0011\u0013\u000c\u0013\u0014\u0016\u0015\u0002\u0002\u0016\u0002\u0014\u0017\t\u0015\u0018\u0008\u0012\u0019\u0007\u0016\u001a\u0008\u0005"

    invoke-static {p2, p3, p1}, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady(Lo/NativeBlurFilter;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$extraCallback;

    invoke-direct {p1, v1}, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$extraCallback;-><init>(Lo/setConversationBannerMessage;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {p1}, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
