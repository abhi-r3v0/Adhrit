.class public final Lo/setUserProperties$updateVisuals;
.super Lo/RealtimeSinceBootClock$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "updateVisuals"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setUserProperties$updateVisuals$extraCallback;,
        Lo/setUserProperties$updateVisuals$onPostMessage;,
        Lo/setUserProperties$updateVisuals$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$onMessageChannelReady<",
        "Lo/setUserProperties$updateVisuals;",
        "Lo/setUserProperties$updateVisuals$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lo/nativeToCircleFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nativeToCircleFilter<",
            "Lo/setUserProperties$updateVisuals;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzzr:Lo/setUserProperties$updateVisuals;


# instance fields
.field private zzbb:I

.field private zzsf:B

.field private zzzd:J

.field private zzze:J

.field private zzzf:Lo/setUserProperties$onTransact;

.field private zzzg:I

.field private zzzh:Ljava/lang/String;

.field private zzzi:Ljava/lang/String;

.field private zzzj:Lo/setImageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setImageRequest<",
            "Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private zzzk:Lo/setImageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setImageRequest<",
            "Lo/setTopInset;",
            ">;"
        }
    .end annotation
.end field

.field private zzzl:J

.field private zzzm:I

.field private zzzn:I

.field private zzzo:Lo/setUserProperties$asInterface;

.field private zzzp:Lo/setUserProperties$ICustomTabsService;

.field private zzzq:Lo/setUserProperties$ICustomTabsCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/setUserProperties$updateVisuals;

    invoke-direct {v0}, Lo/setUserProperties$updateVisuals;-><init>()V

    sput-object v0, Lo/setUserProperties$updateVisuals;->zzzr:Lo/setUserProperties$updateVisuals;

    const-class v1, Lo/setUserProperties$updateVisuals;

    invoke-static {v1, v0}, Lo/RealtimeSinceBootClock;->ICustomTabsCallback(Ljava/lang/Class;Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/RealtimeSinceBootClock$onMessageChannelReady;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lo/setUserProperties$updateVisuals;->zzsf:B

    const/4 v0, -0x1

    iput v0, p0, Lo/setUserProperties$updateVisuals;->zzzg:I

    const-string v0, ""

    iput-object v0, p0, Lo/setUserProperties$updateVisuals;->zzzh:Ljava/lang/String;

    iput-object v0, p0, Lo/setUserProperties$updateVisuals;->zzzi:Ljava/lang/String;

    invoke-static {}, Lo/setUserProperties$updateVisuals;->asBinder()Lo/setImageRequest;

    move-result-object v0

    iput-object v0, p0, Lo/setUserProperties$updateVisuals;->zzzj:Lo/setImageRequest;

    invoke-static {}, Lo/setUserProperties$updateVisuals;->asBinder()Lo/setImageRequest;

    move-result-object v0

    iput-object v0, p0, Lo/setUserProperties$updateVisuals;->zzzk:Lo/setImageRequest;

    return-void
.end method

.method static synthetic extraCallback()Lo/setUserProperties$updateVisuals;
    .locals 1

    sget-object v0, Lo/setUserProperties$updateVisuals;->zzzr:Lo/setUserProperties$updateVisuals;

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

    iput-byte p1, p0, Lo/setUserProperties$updateVisuals;->zzsf:B

    return-object v1

    :pswitch_1
    iget-byte p1, p0, Lo/setUserProperties$updateVisuals;->zzsf:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lo/setUserProperties$updateVisuals;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_2

    const-class p2, Lo/setUserProperties$updateVisuals;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/setUserProperties$updateVisuals;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_1

    new-instance p1, Lo/RealtimeSinceBootClock$onPostMessage;

    sget-object p3, Lo/setUserProperties$updateVisuals;->zzzr:Lo/setUserProperties$updateVisuals;

    invoke-direct {p1, p3}, Lo/RealtimeSinceBootClock$onPostMessage;-><init>(Lo/RealtimeSinceBootClock;)V

    sput-object p1, Lo/setUserProperties$updateVisuals;->zzbg:Lo/nativeToCircleFilter;

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
    sget-object p1, Lo/setUserProperties$updateVisuals;->zzzr:Lo/setUserProperties$updateVisuals;

    return-object p1

    :pswitch_4
    const/16 p1, 0x13

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzbb"

    aput-object p2, p1, p3

    const-string p2, "zzzf"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzzg"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    invoke-static {}, Lo/setUserProperties$updateVisuals$onNavigationEvent;->extraCallback()Lo/setHierarchy;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzzj"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzzd"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzzk"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzzh"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzzi"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzze"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzzm"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    invoke-static {}, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->ICustomTabsCallback()Lo/setHierarchy;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzzn"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    invoke-static {}, Lo/setUserProperties$updateVisuals$onPostMessage;->onMessageChannelReady()Lo/setHierarchy;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzzo"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzzp"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzzq"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzzl"

    aput-object p3, p1, p2

    sget-object p2, Lo/setUserProperties$updateVisuals;->zzzr:Lo/setUserProperties$updateVisuals;

    const-string p3, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u000f\u0000\u0002\u0002\u0001\u0409\u0002\u0002\u000c\u0003\u0003\u041b\u0004\u0002\u0000\u0005\u001c\u0006\u0008\u0004\u0007\u0008\u0005\u0008\u0002\u0001\t\u000c\u0007\n\u000c\u0008\u000b\t\t\u000c\t\n\r\t\u000b\u000e\u0002\u0006"

    invoke-static {p2, p3, p1}, Lo/setUserProperties$updateVisuals;->onMessageChannelReady(Lo/NativeBlurFilter;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/setUserProperties$updateVisuals$extraCallback;

    invoke-direct {p1, v1}, Lo/setUserProperties$updateVisuals$extraCallback;-><init>(Lo/setConversationBannerMessage;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/setUserProperties$updateVisuals;

    invoke-direct {p1}, Lo/setUserProperties$updateVisuals;-><init>()V

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
