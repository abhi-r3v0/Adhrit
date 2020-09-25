.class public final Lo/cD$onNavigationEvent;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cD$onNavigationEvent$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cD$onNavigationEvent;",
        "Lo/cD$onNavigationEvent$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzm:Lo/cD$onNavigationEvent;

.field private static volatile zzn:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cD$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cD$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cD$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cB$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Ljava/lang/String;

.field private zzk:Z

.field private zzl:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cK$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lo/cD$onNavigationEvent;

    invoke-direct {v0}, Lo/cD$onNavigationEvent;-><init>()V

    .line 53
    sput-object v0, Lo/cD$onNavigationEvent;->zzm:Lo/cD$onNavigationEvent;

    .line 54
    const-class v1, Lo/cD$onNavigationEvent;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/cD$onNavigationEvent;->zze:Ljava/lang/String;

    .line 3
    invoke-static {}, Lo/cD$onNavigationEvent;->onItemLoaded()Lo/ay$1;

    move-result-object v1

    iput-object v1, p0, Lo/cD$onNavigationEvent;->zzg:Lo/ay$1;

    .line 4
    invoke-static {}, Lo/cD$onNavigationEvent;->onItemLoaded()Lo/ay$1;

    move-result-object v1

    iput-object v1, p0, Lo/cD$onNavigationEvent;->zzh:Lo/ay$1;

    .line 5
    invoke-static {}, Lo/cD$onNavigationEvent;->onItemLoaded()Lo/ay$1;

    move-result-object v1

    iput-object v1, p0, Lo/cD$onNavigationEvent;->zzi:Lo/ay$1;

    .line 6
    iput-object v0, p0, Lo/cD$onNavigationEvent;->zzj:Ljava/lang/String;

    .line 7
    invoke-static {}, Lo/cD$onNavigationEvent;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cD$onNavigationEvent;->zzl:Lo/ay$1;

    return-void
.end method

.method private final ICustomTabsCallback(ILo/cD$onPostMessage;)V
    .locals 2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget-object v0, p0, Lo/cD$onNavigationEvent;->zzh:Lo/ay$1;

    .line 19
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cD$onNavigationEvent;->zzh:Lo/ay$1;

    .line 22
    :cond_0
    iget-object v0, p0, Lo/cD$onNavigationEvent;->zzh:Lo/ay$1;

    invoke-interface {v0, p1, p2}, Lo/ay$1;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cD$onNavigationEvent;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/cD$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy()V

    return-void
.end method

.method public static ICustomTabsCallback$Stub()Lo/cD$onNavigationEvent$extraCallback;
    .locals 1

    .line 28
    sget-object v0, Lo/cD$onNavigationEvent;->zzm:Lo/cD$onNavigationEvent;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cD$onNavigationEvent$extraCallback;

    return-object v0
.end method

.method private final ICustomTabsCallback$Stub$Proxy()V
    .locals 1

    .line 25
    invoke-static {}, Lo/cD$onNavigationEvent;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cD$onNavigationEvent;->zzi:Lo/ay$1;

    return-void
.end method

.method static synthetic ICustomTabsService()Lo/cD$onNavigationEvent;
    .locals 1

    .line 49
    sget-object v0, Lo/cD$onNavigationEvent;->zzm:Lo/cD$onNavigationEvent;

    return-object v0
.end method

.method static synthetic onPostMessage(Lo/cD$onNavigationEvent;ILo/cD$onPostMessage;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/cD$onNavigationEvent;->ICustomTabsCallback(ILo/cD$onPostMessage;)V

    return-void
.end method

.method public static onRelationshipValidationResult()Lo/cD$onNavigationEvent;
    .locals 1

    .line 48
    sget-object v0, Lo/cD$onNavigationEvent;->zzm:Lo/cD$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 29
    sget-object p2, Lo/fS;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 47
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 45
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_2
    sget-object p1, Lo/cD$onNavigationEvent;->zzn:Lo/en;

    if-nez p1, :cond_1

    .line 38
    const-class p2, Lo/cD$onNavigationEvent;

    monitor-enter p2

    .line 39
    :try_start_0
    sget-object p1, Lo/cD$onNavigationEvent;->zzn:Lo/en;

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cD$onNavigationEvent;->zzm:Lo/cD$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 42
    sput-object p1, Lo/cD$onNavigationEvent;->zzn:Lo/en;

    .line 43
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

    .line 35
    :pswitch_3
    sget-object p1, Lo/cD$onNavigationEvent;->zzm:Lo/cD$onNavigationEvent;

    return-object p1

    :pswitch_4
    const/16 p1, 0xe

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

    .line 32
    const-class p3, Lo/cD$extraCallback;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lo/cD$onPostMessage;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lo/cB$extraCallback;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lo/cK$onMessageChannelReady;

    aput-object p3, p1, p2

    .line 34
    sget-object p2, Lo/cD$onNavigationEvent;->zzm:Lo/cD$onNavigationEvent;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0004\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\u0008\u1007\u0004\t\u001b"

    invoke-static {p2, p3, p1}, Lo/cD$onNavigationEvent;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_5
    new-instance p1, Lo/cD$onNavigationEvent$extraCallback;

    invoke-direct {p1, p2}, Lo/cD$onNavigationEvent$extraCallback;-><init>(Lo/fS;)V

    return-object p1

    .line 30
    :pswitch_6
    new-instance p1, Lo/cD$onNavigationEvent;

    invoke-direct {p1}, Lo/cD$onNavigationEvent;-><init>()V

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
    .locals 2

    .line 9
    iget v0, p0, Lo/cD$onNavigationEvent;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lo/cD$onNavigationEvent;->zzk:Z

    return v0
.end method

.method public final asInterface()I
    .locals 1

    .line 14
    iget-object v0, p0, Lo/cD$onNavigationEvent;->zzh:Lo/ay$1;

    invoke-interface {v0}, Lo/ay$1;->size()I

    move-result v0

    return v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/cD$onNavigationEvent;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lo/cD$onNavigationEvent;->zzd:J

    return-wide v0
.end method

.method public final onNavigationEvent(I)Lo/cD$onPostMessage;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/cD$onNavigationEvent;->zzh:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/cD$onPostMessage;

    return-object p1
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 11
    iget v0, p0, Lo/cD$onNavigationEvent;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cD$extraCallback;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/cD$onNavigationEvent;->zzg:Lo/ay$1;

    return-object v0
.end method

.method public final onTransact()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cB$extraCallback;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lo/cD$onNavigationEvent;->zzi:Lo/ay$1;

    return-object v0
.end method
