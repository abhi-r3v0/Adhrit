.class public final Lo/cH$onNavigationEvent;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cH$onNavigationEvent$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cH$onNavigationEvent;",
        "Lo/cH$onNavigationEvent$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzj:Lo/cH$onNavigationEvent;

.field private static volatile zzk:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cH$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:F

.field private zzh:D

.field private zzi:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cH$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Lo/cH$onNavigationEvent;

    invoke-direct {v0}, Lo/cH$onNavigationEvent;-><init>()V

    .line 90
    sput-object v0, Lo/cH$onNavigationEvent;->zzj:Lo/cH$onNavigationEvent;

    .line 91
    const-class v1, Lo/cH$onNavigationEvent;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/cH$onNavigationEvent;->zzd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lo/cH$onNavigationEvent;->zze:Ljava/lang/String;

    .line 4
    invoke-static {}, Lo/cH$onNavigationEvent;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$onNavigationEvent;->zzi:Lo/ay$1;

    return-void
.end method

.method private final ICustomTabsCallback(D)V
    .locals 1

    .line 36
    iget v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    .line 37
    iput-wide p1, p0, Lo/cH$onNavigationEvent;->zzh:D

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    .line 16
    iput-object p1, p0, Lo/cH$onNavigationEvent;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$onNavigationEvent;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lo/cH$onNavigationEvent;->postMessage()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$onNavigationEvent;Lo/cH$onNavigationEvent;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lo/cH$onNavigationEvent;->onMessageChannelReady(Lo/cH$onNavigationEvent;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub$Proxy()Lo/cH$onNavigationEvent;
    .locals 1

    .line 78
    sget-object v0, Lo/cH$onNavigationEvent;->zzj:Lo/cH$onNavigationEvent;

    return-object v0
.end method

.method public static ICustomTabsService()Lo/cH$onNavigationEvent$ICustomTabsCallback;
    .locals 1

    .line 58
    sget-object v0, Lo/cH$onNavigationEvent;->zzj:Lo/cH$onNavigationEvent;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cH$onNavigationEvent$ICustomTabsCallback;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/cH$onNavigationEvent;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lo/cH$onNavigationEvent;->warmup()V

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$onNavigationEvent;D)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lo/cH$onNavigationEvent;->ICustomTabsCallback(D)V

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$onNavigationEvent;Ljava/lang/Iterable;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lo/cH$onNavigationEvent;->onMessageChannelReady(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final extraCommand()V
    .locals 1

    .line 56
    invoke-static {}, Lo/cH$onNavigationEvent;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$onNavigationEvent;->zzi:Lo/ay$1;

    return-void
.end method

.method private final mayLaunchUrl()V
    .locals 2

    .line 44
    iget-object v0, p0, Lo/cH$onNavigationEvent;->zzi:Lo/ay$1;

    .line 45
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$onNavigationEvent;->zzi:Lo/ay$1;

    :cond_0
    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lo/cH$onNavigationEvent;->mayLaunchUrl()V

    .line 54
    iget-object v0, p0, Lo/cH$onNavigationEvent;->zzi:Lo/ay$1;

    invoke-static {p1, v0}, Lo/ab$a;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    .line 10
    iput-object p1, p0, Lo/cH$onNavigationEvent;->zzd:Ljava/lang/String;

    return-void
.end method

.method private final onMessageChannelReady(Lo/cH$onNavigationEvent;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-direct {p0}, Lo/cH$onNavigationEvent;->mayLaunchUrl()V

    .line 51
    iget-object v0, p0, Lo/cH$onNavigationEvent;->zzi:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/cH$onNavigationEvent;J)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lo/cH$onNavigationEvent;->onNavigationEvent(J)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/cH$onNavigationEvent;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lo/cH$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method private final onNavigationEvent(J)V
    .locals 1

    .line 26
    iget v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    .line 27
    iput-wide p1, p0, Lo/cH$onNavigationEvent;->zzf:J

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$onNavigationEvent;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lo/cH$onNavigationEvent;->requestPostMessageChannel()V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$onNavigationEvent;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lo/cH$onNavigationEvent;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$onNavigationEvent;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lo/cH$onNavigationEvent;->extraCommand()V

    return-void
.end method

.method private final postMessage()V
    .locals 2

    .line 39
    iget v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lo/cH$onNavigationEvent;->zzh:D

    return-void
.end method

.method private final requestPostMessageChannel()V
    .locals 2

    .line 29
    iget v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lo/cH$onNavigationEvent;->zzf:J

    return-void
.end method

.method private final warmup()V
    .locals 1

    .line 18
    iget v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    .line 20
    sget-object v0, Lo/cH$onNavigationEvent;->zzj:Lo/cH$onNavigationEvent;

    .line 21
    iget-object v0, v0, Lo/cH$onNavigationEvent;->zze:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lo/cH$onNavigationEvent;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 59
    const-class p2, Lo/cH$onNavigationEvent;

    sget-object p3, Lo/cI;->ICustomTabsCallback:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 77
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 75
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_2
    sget-object p1, Lo/cH$onNavigationEvent;->zzk:Lo/en;

    if-nez p1, :cond_1

    .line 68
    monitor-enter p2

    .line 69
    :try_start_0
    sget-object p1, Lo/cH$onNavigationEvent;->zzk:Lo/en;

    if-nez p1, :cond_0

    .line 71
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cH$onNavigationEvent;->zzj:Lo/cH$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 72
    sput-object p1, Lo/cH$onNavigationEvent;->zzk:Lo/en;

    .line 73
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

    .line 65
    :pswitch_3
    sget-object p1, Lo/cH$onNavigationEvent;->zzj:Lo/cH$onNavigationEvent;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzc"

    aput-object v1, p1, p3

    const-string p3, "zzd"

    aput-object p3, p1, v0

    const/4 p3, 0x2

    const-string v0, "zze"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "zzf"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "zzg"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    const-string v0, "zzh"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    const-string v0, "zzi"

    aput-object v0, p1, p3

    const/4 p3, 0x7

    aput-object p2, p1, p3

    .line 64
    sget-object p2, Lo/cH$onNavigationEvent;->zzj:Lo/cH$onNavigationEvent;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b"

    invoke-static {p2, p3, p1}, Lo/cH$onNavigationEvent;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_5
    new-instance p1, Lo/cH$onNavigationEvent$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/cH$onNavigationEvent$ICustomTabsCallback;-><init>(Lo/cI;)V

    return-object p1

    .line 60
    :pswitch_6
    new-instance p1, Lo/cH$onNavigationEvent;

    invoke-direct {p1}, Lo/cH$onNavigationEvent;-><init>()V

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

.method public final ICustomTabsCallback()Z
    .locals 1

    .line 24
    iget v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsCallback$Stub()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lo/cH$onNavigationEvent;->zzf:J

    return-wide v0
.end method

.method public final asBinder()Z
    .locals 1

    .line 32
    iget v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asInterface()Z
    .locals 1

    .line 34
    iget v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/cH$onNavigationEvent;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final getInterfaceDescriptor()I
    .locals 1

    .line 43
    iget-object v0, p0, Lo/cH$onNavigationEvent;->zzi:Lo/ay$1;

    invoke-interface {v0}, Lo/ay$1;->size()I

    move-result v0

    return v0
.end method

.method public final newSession()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cH$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lo/cH$onNavigationEvent;->zzi:Lo/ay$1;

    return-object v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 12
    iget v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 6
    iget v0, p0, Lo/cH$onNavigationEvent;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/cH$onNavigationEvent;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final onRelationshipValidationResult()D
    .locals 2

    .line 35
    iget-wide v0, p0, Lo/cH$onNavigationEvent;->zzh:D

    return-wide v0
.end method

.method public final onTransact()F
    .locals 1

    .line 33
    iget v0, p0, Lo/cH$onNavigationEvent;->zzg:F

    return v0
.end method
