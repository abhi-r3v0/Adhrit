.class public final Lo/setUserProperties$onTransact;
.super Lo/RealtimeSinceBootClock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onTransact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setUserProperties$onTransact$onNavigationEvent;,
        Lo/setUserProperties$onTransact$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock<",
        "Lo/setUserProperties$onTransact;",
        "Lo/setUserProperties$onTransact$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lo/nativeToCircleFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nativeToCircleFilter<",
            "Lo/setUserProperties$onTransact;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzva:Lo/setUserProperties$onTransact;

.field private static final zzvb:Lo/RealtimeSinceBootClock$asInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RealtimeSinceBootClock$asInterface<",
            "Lo/executeUnreadCountCallback;",
            "Lo/setUserProperties$onTransact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbb:I

.field private zzsf:B

.field private zzty:I

.field private zzum:Ljava/lang/String;

.field private zzun:Ljava/lang/String;

.field private zzuo:Lo/setUserProperties$extraCallback;

.field private zzup:Lo/setUserProperties$asBinder;

.field private zzuq:Lo/setUserProperties$newSession;

.field private zzur:Lo/setUserProperties$ICustomTabsService$Stub$Proxy;

.field private zzus:Lo/setUserProperties$IPostMessageService;

.field private zzut:Lo/setUserProperties$postMessage;

.field private zzuu:Lo/setUserProperties$requestPostMessageChannel;

.field private zzuv:Lo/setUserProperties$IPostMessageService$Stub;

.field private zzuw:Lo/setUserProperties$onRelationshipValidationResult;

.field private zzux:Lo/setUserProperties$warmup;

.field private zzuy:Lo/setUserProperties$onMessageChannelReady;

.field private zzuz:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lo/setUserProperties$onTransact;

    invoke-direct {v0}, Lo/setUserProperties$onTransact;-><init>()V

    sput-object v0, Lo/setUserProperties$onTransact;->zzva:Lo/setUserProperties$onTransact;

    const-class v1, Lo/setUserProperties$onTransact;

    invoke-static {v1, v0}, Lo/RealtimeSinceBootClock;->ICustomTabsCallback(Ljava/lang/Class;Lo/RealtimeSinceBootClock;)V

    invoke-static {}, Lo/executeUnreadCountCallback;->extraCallback()Lo/executeUnreadCountCallback;

    move-result-object v2

    sget-object v4, Lo/setUserProperties$onTransact;->zzva:Lo/setUserProperties$onTransact;

    sget-object v7, Lo/getSDKVersionCode;->ICustomTabsService:Lo/getSDKVersionCode;

    const-class v8, Lo/setUserProperties$onTransact;

    const/4 v5, 0x0

    const v6, 0x3f3fd17

    move-object v3, v4

    invoke-static/range {v2 .. v8}, Lo/RealtimeSinceBootClock;->onMessageChannelReady(Lo/NativeBlurFilter;Ljava/lang/Object;Lo/NativeBlurFilter;Lo/setHierarchy;ILo/getSDKVersionCode;Ljava/lang/Class;)Lo/RealtimeSinceBootClock$asInterface;

    move-result-object v0

    sput-object v0, Lo/setUserProperties$onTransact;->zzvb:Lo/RealtimeSinceBootClock$asInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/RealtimeSinceBootClock;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lo/setUserProperties$onTransact;->zzsf:B

    const-string v0, ""

    iput-object v0, p0, Lo/setUserProperties$onTransact;->zzum:Ljava/lang/String;

    iput-object v0, p0, Lo/setUserProperties$onTransact;->zzun:Ljava/lang/String;

    return-void
.end method

.method static synthetic extraCallback()Lo/setUserProperties$onTransact;
    .locals 1

    sget-object v0, Lo/setUserProperties$onTransact;->zzva:Lo/setUserProperties$onTransact;

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

    iput-byte p1, p0, Lo/setUserProperties$onTransact;->zzsf:B

    return-object v1

    :pswitch_1
    iget-byte p1, p0, Lo/setUserProperties$onTransact;->zzsf:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lo/setUserProperties$onTransact;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_2

    const-class p2, Lo/setUserProperties$onTransact;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/setUserProperties$onTransact;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_1

    new-instance p1, Lo/RealtimeSinceBootClock$onPostMessage;

    sget-object p3, Lo/setUserProperties$onTransact;->zzva:Lo/setUserProperties$onTransact;

    invoke-direct {p1, p3}, Lo/RealtimeSinceBootClock$onPostMessage;-><init>(Lo/RealtimeSinceBootClock;)V

    sput-object p1, Lo/setUserProperties$onTransact;->zzbg:Lo/nativeToCircleFilter;

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
    sget-object p1, Lo/setUserProperties$onTransact;->zzva:Lo/setUserProperties$onTransact;

    return-object p1

    :pswitch_4
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzbb"

    aput-object p2, p1, p3

    const-string p2, "zzty"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    invoke-static {}, Lo/setUserProperties$onTransact$extraCallback;->onMessageChannelReady()Lo/setHierarchy;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzuo"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzup"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzuq"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzur"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzum"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzun"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzus"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzuw"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzut"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzux"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzuz"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzuu"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzuy"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzuv"

    aput-object p3, p1, p2

    sget-object p2, Lo/setUserProperties$onTransact;->zzva:Lo/setUserProperties$onTransact;

    const-string p3, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0010\u0000\u0000\u0001\u0001\u000c\u0000\u0002\u0409\u0003\u0003\t\u0004\u0004\t\u0005\u0005\t\u0006\u0006\u0008\u0001\u0007\u0008\u0002\u0008\t\u0007\t\t\u000b\n\t\u0008\u000b\t\u000c\u000c\u0002\u000e\r\t\t\u000e\t\r\u000f\t\n"

    invoke-static {p2, p3, p1}, Lo/setUserProperties$onTransact;->onMessageChannelReady(Lo/NativeBlurFilter;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/setUserProperties$onTransact$onNavigationEvent;

    invoke-direct {p1, v1}, Lo/setUserProperties$onTransact$onNavigationEvent;-><init>(Lo/setConversationBannerMessage;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/setUserProperties$onTransact;

    invoke-direct {p1}, Lo/setUserProperties$onTransact;-><init>()V

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
