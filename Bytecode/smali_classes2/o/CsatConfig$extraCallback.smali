.class public final Lo/CsatConfig$extraCallback;
.super Lo/MarketingMessageStatus;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CsatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CsatConfig$extraCallback$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MarketingMessageStatus<",
        "Lo/CsatConfig$extraCallback;",
        "Lo/CsatConfig$extraCallback$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzk:Lo/CsatConfig$extraCallback;

.field private static volatile zzl:Lo/uploadState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/uploadState<",
            "Lo/CsatConfig$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Ljava/lang/String;

.field private zzd:J

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lo/CsatConfig$extraCallback;

    invoke-direct {v0}, Lo/CsatConfig$extraCallback;-><init>()V

    .line 39
    sput-object v0, Lo/CsatConfig$extraCallback;->zzk:Lo/CsatConfig$extraCallback;

    .line 40
    const-class v1, Lo/CsatConfig$extraCallback;

    invoke-static {v1, v0}, Lo/MarketingMessageStatus;->onNavigationEvent(Ljava/lang/Class;Lo/MarketingMessageStatus;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/MarketingMessageStatus;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/CsatConfig$extraCallback;->zzc:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lo/CsatConfig$extraCallback;->zze:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lo/CsatConfig$extraCallback;->zzf:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lo/CsatConfig$extraCallback;->zzg:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lo/CsatConfig$extraCallback;->zzh:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lo/CsatConfig$extraCallback;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsCallback$Stub$Proxy()Lo/uploadState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/uploadState<",
            "Lo/CsatConfig$extraCallback;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lo/CsatConfig$extraCallback;->zzk:Lo/CsatConfig$extraCallback;

    .line 33
    sget v1, Lo/MarketingMessageStatus$onMessageChannelReady;->onTransact:I

    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2, v2}, Lo/MarketingMessageStatus;->extraCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Lo/uploadState;

    return-object v0
.end method

.method static synthetic getInterfaceDescriptor()Lo/CsatConfig$extraCallback;
    .locals 1

    .line 37
    sget-object v0, Lo/CsatConfig$extraCallback;->zzk:Lo/CsatConfig$extraCallback;

    return-object v0
.end method


# virtual methods
.method public final asBinder()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/CsatConfig$extraCallback;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final asInterface()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lo/CsatConfig$extraCallback;->zzd:J

    return-wide v0
.end method

.method protected final extraCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 13
    sget-object p2, Lo/getCsatExpiryInterval;->onNavigationEvent:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 29
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_2
    sget-object p1, Lo/CsatConfig$extraCallback;->zzl:Lo/uploadState;

    if-nez p1, :cond_1

    .line 22
    const-class p2, Lo/CsatConfig$extraCallback;

    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lo/CsatConfig$extraCallback;->zzl:Lo/uploadState;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lo/MarketingMessageStatus$onPostMessage;

    sget-object p3, Lo/CsatConfig$extraCallback;->zzk:Lo/CsatConfig$extraCallback;

    invoke-direct {p1, p3}, Lo/MarketingMessageStatus$onPostMessage;-><init>(Lo/MarketingMessageStatus;)V

    .line 26
    sput-object p1, Lo/CsatConfig$extraCallback;->zzl:Lo/uploadState;

    .line 27
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

    .line 19
    :pswitch_3
    sget-object p1, Lo/CsatConfig$extraCallback;->zzk:Lo/CsatConfig$extraCallback;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

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

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    .line 18
    sget-object p2, Lo/CsatConfig$extraCallback;->zzk:Lo/CsatConfig$extraCallback;

    const-string p3, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u0208\u0002\u0002\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u0208\u0007\u0002\u0008\u0208"

    invoke-static {p2, p3, p1}, Lo/CsatConfig$extraCallback;->ICustomTabsCallback(Lo/access$502;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_5
    new-instance p1, Lo/CsatConfig$extraCallback$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/CsatConfig$extraCallback$ICustomTabsCallback;-><init>(Lo/getCsatExpiryInterval;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lo/CsatConfig$extraCallback;

    invoke-direct {p1}, Lo/CsatConfig$extraCallback;-><init>()V

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

.method public final newSession()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/CsatConfig$extraCallback;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/CsatConfig$extraCallback;->zze:Ljava/lang/String;

    return-object v0
.end method
