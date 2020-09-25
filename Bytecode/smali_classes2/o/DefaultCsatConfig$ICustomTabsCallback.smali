.class public final Lo/DefaultCsatConfig$ICustomTabsCallback;
.super Lo/MarketingMessageStatus;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultCsatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DefaultCsatConfig$ICustomTabsCallback$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MarketingMessageStatus<",
        "Lo/DefaultCsatConfig$ICustomTabsCallback;",
        "Lo/DefaultCsatConfig$ICustomTabsCallback$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzj:Lo/DefaultCsatConfig$ICustomTabsCallback;

.field private static volatile zzk:Lo/uploadState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/uploadState<",
            "Lo/DefaultCsatConfig$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Lo/DefaultRefreshIntervals;

.field private zzi:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lo/DefaultCsatConfig$ICustomTabsCallback;

    invoke-direct {v0}, Lo/DefaultCsatConfig$ICustomTabsCallback;-><init>()V

    .line 41
    sput-object v0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzj:Lo/DefaultCsatConfig$ICustomTabsCallback;

    .line 42
    const-class v1, Lo/DefaultCsatConfig$ICustomTabsCallback;

    invoke-static {v1, v0}, Lo/MarketingMessageStatus;->onNavigationEvent(Ljava/lang/Class;Lo/MarketingMessageStatus;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/MarketingMessageStatus;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzi:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzd:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zze:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsService()Lo/uploadState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/uploadState<",
            "Lo/DefaultCsatConfig$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzj:Lo/DefaultCsatConfig$ICustomTabsCallback;

    .line 35
    sget v1, Lo/MarketingMessageStatus$onMessageChannelReady;->onTransact:I

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2, v2}, Lo/MarketingMessageStatus;->extraCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    check-cast v0, Lo/uploadState;

    return-object v0
.end method

.method static synthetic getInterfaceDescriptor()Lo/DefaultCsatConfig$ICustomTabsCallback;
    .locals 1

    .line 39
    sget-object v0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzj:Lo/DefaultCsatConfig$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback$Stub$Proxy()Lo/DefaultRefreshIntervals;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzh:Lo/DefaultRefreshIntervals;

    if-nez v0, :cond_0

    invoke-static {}, Lo/DefaultRefreshIntervals;->newSession()Lo/DefaultRefreshIntervals;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final asBinder()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final asInterface()Lo/getReadUpto;
    .locals 1

    .line 9
    iget v0, p0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzg:I

    invoke-static {v0}, Lo/getReadUpto;->onNavigationEvent(I)Lo/getReadUpto;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    sget-object v0, Lo/getReadUpto;->ICustomTabsCallback:Lo/getReadUpto;

    :cond_0
    return-object v0
.end method

.method protected final extraCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 13
    sget-object p3, Lo/setCsatExpiryInterval;->onPostMessage:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    .line 31
    iput-byte p1, p0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzi:B

    return-object v1

    .line 30
    :pswitch_1
    iget-byte p1, p0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzi:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_2
    sget-object p1, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzk:Lo/uploadState;

    if-nez p1, :cond_2

    .line 23
    const-class p2, Lo/DefaultCsatConfig$ICustomTabsCallback;

    monitor-enter p2

    .line 24
    :try_start_0
    sget-object p1, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzk:Lo/uploadState;

    if-nez p1, :cond_1

    .line 26
    new-instance p1, Lo/MarketingMessageStatus$onPostMessage;

    sget-object p3, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzj:Lo/DefaultCsatConfig$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/MarketingMessageStatus$onPostMessage;-><init>(Lo/MarketingMessageStatus;)V

    .line 27
    sput-object p1, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzk:Lo/uploadState;

    .line 28
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

    .line 20
    :pswitch_3
    sget-object p1, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzj:Lo/DefaultCsatConfig$ICustomTabsCallback;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzc"

    aput-object p2, p1, p3

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 17
    invoke-static {}, Lo/getReadUpto;->onMessageChannelReady()Lo/setMarketingId;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    .line 19
    sget-object p2, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzj:Lo/DefaultCsatConfig$ICustomTabsCallback;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0001\u0001\u1508\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u100c\u0003\u0005\u1009\u0004"

    invoke-static {p2, p3, p1}, Lo/DefaultCsatConfig$ICustomTabsCallback;->ICustomTabsCallback(Lo/access$502;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_5
    new-instance p1, Lo/DefaultCsatConfig$ICustomTabsCallback$onMessageChannelReady;

    invoke-direct {p1, v1}, Lo/DefaultCsatConfig$ICustomTabsCallback$onMessageChannelReady;-><init>(Lo/setCsatExpiryInterval;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lo/DefaultCsatConfig$ICustomTabsCallback;

    invoke-direct {p1}, Lo/DefaultCsatConfig$ICustomTabsCallback;-><init>()V

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

.method public final onTransact()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final warmup()Z
    .locals 1

    .line 11
    iget v0, p0, Lo/DefaultCsatConfig$ICustomTabsCallback;->zzc:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
