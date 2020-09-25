.class public final Lo/cB$onNavigationEvent;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cB$onNavigationEvent$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cB$onNavigationEvent;",
        "Lo/cB$onNavigationEvent$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzl:Lo/cB$onNavigationEvent;

.field private static volatile zzm:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cB$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cB$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Z

.field private zzh:Lo/cB$ICustomTabsCallback;

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lo/cB$onNavigationEvent;

    invoke-direct {v0}, Lo/cB$onNavigationEvent;-><init>()V

    .line 53
    sput-object v0, Lo/cB$onNavigationEvent;->zzl:Lo/cB$onNavigationEvent;

    .line 54
    const-class v1, Lo/cB$onNavigationEvent;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/cB$onNavigationEvent;->zze:Ljava/lang/String;

    .line 3
    invoke-static {}, Lo/cB$onNavigationEvent;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cB$onNavigationEvent;->zzf:Lo/ay$1;

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub$Proxy()Lo/cB$onNavigationEvent;
    .locals 1

    .line 49
    sget-object v0, Lo/cB$onNavigationEvent;->zzl:Lo/cB$onNavigationEvent;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/cB$onNavigationEvent;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lo/cB$onNavigationEvent;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static newSession()Lo/cB$onNavigationEvent$extraCallback;
    .locals 1

    .line 29
    sget-object v0, Lo/cB$onNavigationEvent;->zzl:Lo/cB$onNavigationEvent;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cB$onNavigationEvent$extraCallback;

    return-object v0
.end method

.method private final onNavigationEvent(ILo/cB$onMessageChannelReady;)V
    .locals 2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v0, p0, Lo/cB$onNavigationEvent;->zzf:Lo/ay$1;

    .line 18
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cB$onNavigationEvent;->zzf:Lo/ay$1;

    .line 21
    :cond_0
    iget-object v0, p0, Lo/cB$onNavigationEvent;->zzf:Lo/ay$1;

    invoke-interface {v0, p1, p2}, Lo/ay$1;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cB$onNavigationEvent;ILo/cB$onMessageChannelReady;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lo/cB$onNavigationEvent;->onNavigationEvent(ILo/cB$onMessageChannelReady;)V

    return-void
.end method

.method private final onPostMessage(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Lo/cB$onNavigationEvent;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/cB$onNavigationEvent;->zzc:I

    .line 10
    iput-object p1, p0, Lo/cB$onNavigationEvent;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 6
    iget v0, p0, Lo/cB$onNavigationEvent;->zzd:I

    return v0
.end method

.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 30
    sget-object p2, Lo/f$a;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 48
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 46
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_2
    sget-object p1, Lo/cB$onNavigationEvent;->zzm:Lo/en;

    if-nez p1, :cond_1

    .line 39
    const-class p2, Lo/cB$onNavigationEvent;

    monitor-enter p2

    .line 40
    :try_start_0
    sget-object p1, Lo/cB$onNavigationEvent;->zzm:Lo/en;

    if-nez p1, :cond_0

    .line 42
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cB$onNavigationEvent;->zzl:Lo/cB$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 43
    sput-object p1, Lo/cB$onNavigationEvent;->zzm:Lo/en;

    .line 44
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

    .line 36
    :pswitch_3
    sget-object p1, Lo/cB$onNavigationEvent;->zzl:Lo/cB$onNavigationEvent;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

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

    .line 33
    const-class p3, Lo/cB$onMessageChannelReady;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzk"

    aput-object p3, p1, p2

    .line 35
    sget-object p2, Lo/cB$onNavigationEvent;->zzl:Lo/cB$onNavigationEvent;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u001b\u0004\u1007\u0002\u0005\u1009\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006"

    invoke-static {p2, p3, p1}, Lo/cB$onNavigationEvent;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_5
    new-instance p1, Lo/cB$onNavigationEvent$extraCallback;

    invoke-direct {p1, p2}, Lo/cB$onNavigationEvent$extraCallback;-><init>(Lo/f$a;)V

    return-object p1

    .line 31
    :pswitch_6
    new-instance p1, Lo/cB$onNavigationEvent;

    invoke-direct {p1}, Lo/cB$onNavigationEvent;-><init>()V

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

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    .line 27
    iget v0, p0, Lo/cB$onNavigationEvent;->zzc:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lo/cB$onNavigationEvent;->zzi:Z

    return v0
.end method

.method public final asInterface()Lo/cB$ICustomTabsCallback;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/cB$onNavigationEvent;->zzh:Lo/cB$ICustomTabsCallback;

    if-nez v0, :cond_0

    invoke-static {}, Lo/cB$ICustomTabsCallback;->ICustomTabsService()Lo/cB$ICustomTabsCallback;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final extraCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cB$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lo/cB$onNavigationEvent;->zzf:Lo/ay$1;

    return-object v0
.end method

.method public final extraCallback(I)Lo/cB$onMessageChannelReady;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/cB$onNavigationEvent;->zzf:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/cB$onMessageChannelReady;

    return-object p1
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/cB$onNavigationEvent;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 5
    iget v0, p0, Lo/cB$onNavigationEvent;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 13
    iget-object v0, p0, Lo/cB$onNavigationEvent;->zzf:Lo/ay$1;

    invoke-interface {v0}, Lo/ay$1;->size()I

    move-result v0

    return v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 23
    iget v0, p0, Lo/cB$onNavigationEvent;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTransact()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lo/cB$onNavigationEvent;->zzj:Z

    return v0
.end method

.method public final warmup()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lo/cB$onNavigationEvent;->zzk:Z

    return v0
.end method
