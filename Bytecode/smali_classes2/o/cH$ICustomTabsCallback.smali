.class public final Lo/cH$ICustomTabsCallback;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cH$ICustomTabsCallback$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cH$ICustomTabsCallback;",
        "Lo/cH$ICustomTabsCallback$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzi:Lo/cH$ICustomTabsCallback;

.field private static volatile zzj:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cH$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cH$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lo/cH$ICustomTabsCallback;

    invoke-direct {v0}, Lo/cH$ICustomTabsCallback;-><init>()V

    .line 76
    sput-object v0, Lo/cH$ICustomTabsCallback;->zzi:Lo/cH$ICustomTabsCallback;

    .line 77
    const-class v1, Lo/cH$ICustomTabsCallback;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    .line 2
    invoke-static {}, Lo/cH$ICustomTabsCallback;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$ICustomTabsCallback;->zzd:Lo/ay$1;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lo/cH$ICustomTabsCallback;->zze:Ljava/lang/String;

    return-void
.end method

.method private final ICustomTabsCallback(J)V
    .locals 1

    .line 41
    iget v0, p0, Lo/cH$ICustomTabsCallback;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/cH$ICustomTabsCallback;->zzc:I

    .line 42
    iput-wide p1, p0, Lo/cH$ICustomTabsCallback;->zzg:J

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lo/cH$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method private final ICustomTabsCallback$Stub$Proxy()V
    .locals 1

    .line 24
    invoke-static {}, Lo/cH$ICustomTabsCallback;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$ICustomTabsCallback;->zzd:Lo/ay$1;

    return-void
.end method

.method static synthetic ICustomTabsService()Lo/cH$ICustomTabsCallback;
    .locals 1

    .line 66
    sget-object v0, Lo/cH$ICustomTabsCallback;->zzi:Lo/cH$ICustomTabsCallback;

    return-object v0
.end method

.method private final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget v0, p0, Lo/cH$ICustomTabsCallback;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/cH$ICustomTabsCallback;->zzc:I

    .line 32
    iput-object p1, p0, Lo/cH$ICustomTabsCallback;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$ICustomTabsCallback;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lo/cH$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy()V

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$ICustomTabsCallback;ILo/cH$onNavigationEvent;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lo/cH$ICustomTabsCallback;->onMessageChannelReady(ILo/cH$onNavigationEvent;)V

    return-void
.end method

.method private final onMessageChannelReady(ILo/cH$onNavigationEvent;)V
    .locals 1

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-direct {p0}, Lo/cH$ICustomTabsCallback;->warmup()V

    .line 15
    iget-object v0, p0, Lo/cH$ICustomTabsCallback;->zzd:Lo/ay$1;

    invoke-interface {v0, p1, p2}, Lo/ay$1;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final onNavigationEvent(J)V
    .locals 1

    .line 36
    iget v0, p0, Lo/cH$ICustomTabsCallback;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/cH$ICustomTabsCallback;->zzc:I

    .line 37
    iput-wide p1, p0, Lo/cH$ICustomTabsCallback;->zzf:J

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$ICustomTabsCallback;J)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lo/cH$ICustomTabsCallback;->onNavigationEvent(J)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$ICustomTabsCallback;Ljava/lang/Iterable;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lo/cH$ICustomTabsCallback;->onPostMessage(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$ICustomTabsCallback;Lo/cH$onNavigationEvent;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lo/cH$ICustomTabsCallback;->onPostMessage(Lo/cH$onNavigationEvent;)V

    return-void
.end method

.method private final onPostMessage(I)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lo/cH$ICustomTabsCallback;->warmup()V

    .line 27
    iget-object v0, p0, Lo/cH$ICustomTabsCallback;->zzd:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final onPostMessage(Ljava/lang/Iterable;)V
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

    .line 21
    invoke-direct {p0}, Lo/cH$ICustomTabsCallback;->warmup()V

    .line 22
    iget-object v0, p0, Lo/cH$ICustomTabsCallback;->zzd:Lo/ay$1;

    invoke-static {p1, v0}, Lo/ab$a;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$ICustomTabsCallback;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lo/cH$ICustomTabsCallback;->onPostMessage(I)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$ICustomTabsCallback;J)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lo/cH$ICustomTabsCallback;->ICustomTabsCallback(J)V

    return-void
.end method

.method private final onPostMessage(Lo/cH$onNavigationEvent;)V
    .locals 1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-direct {p0}, Lo/cH$ICustomTabsCallback;->warmup()V

    .line 19
    iget-object v0, p0, Lo/cH$ICustomTabsCallback;->zzd:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onTransact()Lo/cH$ICustomTabsCallback$onNavigationEvent;
    .locals 1

    .line 46
    sget-object v0, Lo/cH$ICustomTabsCallback;->zzi:Lo/cH$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cH$ICustomTabsCallback$onNavigationEvent;

    return-object v0
.end method

.method private final warmup()V
    .locals 2

    .line 8
    iget-object v0, p0, Lo/cH$ICustomTabsCallback;->zzd:Lo/ay$1;

    .line 9
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$ICustomTabsCallback;->zzd:Lo/ay$1;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 47
    sget-object p2, Lo/cI;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 63
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 54
    :pswitch_2
    sget-object p1, Lo/cH$ICustomTabsCallback;->zzj:Lo/en;

    if-nez p1, :cond_1

    .line 56
    const-class p2, Lo/cH$ICustomTabsCallback;

    monitor-enter p2

    .line 57
    :try_start_0
    sget-object p1, Lo/cH$ICustomTabsCallback;->zzj:Lo/en;

    if-nez p1, :cond_0

    .line 59
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cH$ICustomTabsCallback;->zzi:Lo/cH$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 60
    sput-object p1, Lo/cH$ICustomTabsCallback;->zzj:Lo/en;

    .line 61
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

    .line 53
    :pswitch_3
    sget-object p1, Lo/cH$ICustomTabsCallback;->zzi:Lo/cH$ICustomTabsCallback;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 50
    const-class p3, Lo/cH$onNavigationEvent;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    .line 52
    sget-object p2, Lo/cH$ICustomTabsCallback;->zzi:Lo/cH$ICustomTabsCallback;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003"

    invoke-static {p2, p3, p1}, Lo/cH$ICustomTabsCallback;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_5
    new-instance p1, Lo/cH$ICustomTabsCallback$onNavigationEvent;

    invoke-direct {p1, p2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;-><init>(Lo/cI;)V

    return-object p1

    .line 48
    :pswitch_6
    new-instance p1, Lo/cH$ICustomTabsCallback;

    invoke-direct {p1}, Lo/cH$ICustomTabsCallback;-><init>()V

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

    .line 34
    iget v0, p0, Lo/cH$ICustomTabsCallback;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsCallback$Stub()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lo/cH$ICustomTabsCallback;->zzg:J

    return-wide v0
.end method

.method public final asBinder()I
    .locals 1

    .line 45
    iget v0, p0, Lo/cH$ICustomTabsCallback;->zzh:I

    return v0
.end method

.method public final asInterface()Z
    .locals 1

    .line 39
    iget v0, p0, Lo/cH$ICustomTabsCallback;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/cH$ICustomTabsCallback;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final extraCallback(I)Lo/cH$onNavigationEvent;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/cH$ICustomTabsCallback;->zzd:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/cH$onNavigationEvent;

    return-object p1
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lo/cH$ICustomTabsCallback;->zzf:J

    return-wide v0
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cH$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lo/cH$ICustomTabsCallback;->zzd:Lo/ay$1;

    return-object v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 6
    iget-object v0, p0, Lo/cH$ICustomTabsCallback;->zzd:Lo/ay$1;

    invoke-interface {v0}, Lo/ay$1;->size()I

    move-result v0

    return v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 44
    iget v0, p0, Lo/cH$ICustomTabsCallback;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
