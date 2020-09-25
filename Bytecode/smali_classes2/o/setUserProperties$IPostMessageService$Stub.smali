.class public final Lo/setUserProperties$IPostMessageService$Stub;
.super Lo/RealtimeSinceBootClock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setUserProperties$IPostMessageService$Stub$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock<",
        "Lo/setUserProperties$IPostMessageService$Stub;",
        "Lo/setUserProperties$IPostMessageService$Stub$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lo/nativeToCircleFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nativeToCircleFilter<",
            "Lo/setUserProperties$IPostMessageService$Stub;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbik:Lo/setUserProperties$IPostMessageService$Stub;


# instance fields
.field private zzbb:I

.field private zzbie:Ljava/lang/String;

.field private zzbif:Ljava/lang/String;

.field private zzbig:Ljava/lang/String;

.field private zzbih:Ljava/lang/String;

.field private zzbii:Ljava/lang/String;

.field private zzbij:Ljava/lang/String;

.field private zztz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/setUserProperties$IPostMessageService$Stub;

    invoke-direct {v0}, Lo/setUserProperties$IPostMessageService$Stub;-><init>()V

    sput-object v0, Lo/setUserProperties$IPostMessageService$Stub;->zzbik:Lo/setUserProperties$IPostMessageService$Stub;

    const-class v1, Lo/setUserProperties$IPostMessageService$Stub;

    invoke-static {v1, v0}, Lo/RealtimeSinceBootClock;->ICustomTabsCallback(Ljava/lang/Class;Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/RealtimeSinceBootClock;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lo/setUserProperties$IPostMessageService$Stub;->zztz:Ljava/lang/String;

    iput-object v0, p0, Lo/setUserProperties$IPostMessageService$Stub;->zzbie:Ljava/lang/String;

    iput-object v0, p0, Lo/setUserProperties$IPostMessageService$Stub;->zzbif:Ljava/lang/String;

    iput-object v0, p0, Lo/setUserProperties$IPostMessageService$Stub;->zzbig:Ljava/lang/String;

    iput-object v0, p0, Lo/setUserProperties$IPostMessageService$Stub;->zzbih:Ljava/lang/String;

    iput-object v0, p0, Lo/setUserProperties$IPostMessageService$Stub;->zzbii:Ljava/lang/String;

    iput-object v0, p0, Lo/setUserProperties$IPostMessageService$Stub;->zzbij:Ljava/lang/String;

    return-void
.end method

.method static synthetic extraCallback()Lo/setUserProperties$IPostMessageService$Stub;
    .locals 1

    sget-object v0, Lo/setUserProperties$IPostMessageService$Stub;->zzbik:Lo/setUserProperties$IPostMessageService$Stub;

    return-object v0
.end method


# virtual methods
.method protected final onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/setConversationBannerMessage;->onMessageChannelReady:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lo/setUserProperties$IPostMessageService$Stub;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_1

    const-class p2, Lo/setUserProperties$IPostMessageService$Stub;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/setUserProperties$IPostMessageService$Stub;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_0

    new-instance p1, Lo/RealtimeSinceBootClock$onPostMessage;

    sget-object p3, Lo/setUserProperties$IPostMessageService$Stub;->zzbik:Lo/setUserProperties$IPostMessageService$Stub;

    invoke-direct {p1, p3}, Lo/RealtimeSinceBootClock$onPostMessage;-><init>(Lo/RealtimeSinceBootClock;)V

    sput-object p1, Lo/setUserProperties$IPostMessageService$Stub;->zzbg:Lo/nativeToCircleFilter;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lo/setUserProperties$IPostMessageService$Stub;->zzbik:Lo/setUserProperties$IPostMessageService$Stub;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbb"

    aput-object v0, p1, p2

    const-string p2, "zztz"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbie"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbif"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbig"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbih"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzbii"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzbij"

    aput-object p3, p1, p2

    sget-object p2, Lo/setUserProperties$IPostMessageService$Stub;->zzbik:Lo/setUserProperties$IPostMessageService$Stub;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0008\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u0008\u0002\u0004\u0008\u0003\u0005\u0008\u0004\u0006\u0008\u0005\u0007\u0008\u0006"

    invoke-static {p2, p3, p1}, Lo/setUserProperties$IPostMessageService$Stub;->onMessageChannelReady(Lo/NativeBlurFilter;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/setUserProperties$IPostMessageService$Stub$onNavigationEvent;

    invoke-direct {p1, p2}, Lo/setUserProperties$IPostMessageService$Stub$onNavigationEvent;-><init>(Lo/setConversationBannerMessage;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/setUserProperties$IPostMessageService$Stub;

    invoke-direct {p1}, Lo/setUserProperties$IPostMessageService$Stub;-><init>()V

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
