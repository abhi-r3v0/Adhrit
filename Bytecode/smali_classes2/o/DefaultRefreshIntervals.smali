.class public final Lo/DefaultRefreshIntervals;
.super Lo/MarketingMessageStatus;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DefaultRefreshIntervals$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MarketingMessageStatus<",
        "Lo/DefaultRefreshIntervals;",
        "Lo/DefaultRefreshIntervals$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzk:Lo/DefaultRefreshIntervals;

.field private static volatile zzl:Lo/uploadState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/uploadState<",
            "Lo/DefaultRefreshIntervals;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/Object;

.field private zzf:I

.field private zzg:Ljava/lang/Object;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Lo/setTaggedItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lo/DefaultRefreshIntervals;

    invoke-direct {v0}, Lo/DefaultRefreshIntervals;-><init>()V

    .line 40
    sput-object v0, Lo/DefaultRefreshIntervals;->zzk:Lo/DefaultRefreshIntervals;

    .line 41
    const-class v1, Lo/DefaultRefreshIntervals;

    invoke-static {v1, v0}, Lo/MarketingMessageStatus;->onNavigationEvent(Ljava/lang/Class;Lo/MarketingMessageStatus;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/MarketingMessageStatus;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo/DefaultRefreshIntervals;->zzd:I

    .line 3
    iput v0, p0, Lo/DefaultRefreshIntervals;->zzf:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lo/DefaultRefreshIntervals;->zzh:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lo/DefaultRefreshIntervals;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic getInterfaceDescriptor()Lo/DefaultRefreshIntervals;
    .locals 1

    .line 38
    sget-object v0, Lo/DefaultRefreshIntervals;->zzk:Lo/DefaultRefreshIntervals;

    return-object v0
.end method

.method public static newSession()Lo/DefaultRefreshIntervals;
    .locals 1

    .line 37
    sget-object v0, Lo/DefaultRefreshIntervals;->zzk:Lo/DefaultRefreshIntervals;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;
    .locals 2

    .line 15
    iget v0, p0, Lo/DefaultRefreshIntervals;->zzf:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lo/DefaultRefreshIntervals;->zzg:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final ICustomTabsService()Lo/setTaggedItemType;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/DefaultRefreshIntervals;->zzj:Lo/setTaggedItemType;

    if-nez v0, :cond_0

    invoke-static {}, Lo/setTaggedItemType;->asBinder()Lo/setTaggedItemType;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final asBinder()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/DefaultRefreshIntervals;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final asInterface()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/DefaultRefreshIntervals;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method protected final extraCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 18
    sget-object p2, Lo/DefaultUserAuthConfig;->onPostMessage:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 34
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_2
    sget-object p1, Lo/DefaultRefreshIntervals;->zzl:Lo/uploadState;

    if-nez p1, :cond_1

    .line 27
    const-class p2, Lo/DefaultRefreshIntervals;

    monitor-enter p2

    .line 28
    :try_start_0
    sget-object p1, Lo/DefaultRefreshIntervals;->zzl:Lo/uploadState;

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Lo/MarketingMessageStatus$onPostMessage;

    sget-object p3, Lo/DefaultRefreshIntervals;->zzk:Lo/DefaultRefreshIntervals;

    invoke-direct {p1, p3}, Lo/MarketingMessageStatus$onPostMessage;-><init>(Lo/MarketingMessageStatus;)V

    .line 31
    sput-object p1, Lo/DefaultRefreshIntervals;->zzl:Lo/uploadState;

    .line 32
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

    .line 24
    :pswitch_3
    sget-object p1, Lo/DefaultRefreshIntervals;->zzk:Lo/DefaultRefreshIntervals;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzc"

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

    .line 23
    sget-object p2, Lo/DefaultRefreshIntervals;->zzk:Lo/DefaultRefreshIntervals;

    const-string p3, "\u0001\u0005\u0002\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u103b\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1009\u0003\u0005\u103b\u0001"

    invoke-static {p2, p3, p1}, Lo/DefaultRefreshIntervals;->ICustomTabsCallback(Lo/access$502;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_5
    new-instance p1, Lo/DefaultRefreshIntervals$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/DefaultRefreshIntervals$ICustomTabsCallback;-><init>(Lo/DefaultUserAuthConfig;)V

    return-object p1

    .line 19
    :pswitch_6
    new-instance p1, Lo/DefaultRefreshIntervals;

    invoke-direct {p1}, Lo/DefaultRefreshIntervals;-><init>()V

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
    .locals 2

    .line 8
    iget v0, p0, Lo/DefaultRefreshIntervals;->zzd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lo/DefaultRefreshIntervals;->zze:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
