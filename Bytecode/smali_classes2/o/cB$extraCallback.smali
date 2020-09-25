.class public final Lo/cB$extraCallback;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cB$extraCallback$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cB$extraCallback;",
        "Lo/cB$extraCallback$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzi:Lo/cB$extraCallback;

.field private static volatile zzj:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cB$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cB$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cB$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Z

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lo/cB$extraCallback;

    invoke-direct {v0}, Lo/cB$extraCallback;-><init>()V

    .line 52
    sput-object v0, Lo/cB$extraCallback;->zzi:Lo/cB$extraCallback;

    .line 53
    const-class v1, Lo/cB$extraCallback;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    .line 2
    invoke-static {}, Lo/cB$extraCallback;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cB$extraCallback;->zze:Lo/ay$1;

    .line 3
    invoke-static {}, Lo/cB$extraCallback;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cB$extraCallback;->zzf:Lo/ay$1;

    return-void
.end method

.method private final ICustomTabsCallback(ILo/cB$onPostMessage;)V
    .locals 2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, p0, Lo/cB$extraCallback;->zze:Lo/ay$1;

    .line 13
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cB$extraCallback;->zze:Lo/ay$1;

    .line 16
    :cond_0
    iget-object v0, p0, Lo/cB$extraCallback;->zze:Lo/ay$1;

    invoke-interface {v0, p1, p2}, Lo/ay$1;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic asBinder()Lo/cB$extraCallback;
    .locals 1

    .line 48
    sget-object v0, Lo/cB$extraCallback;->zzi:Lo/cB$extraCallback;

    return-object v0
.end method

.method private final onMessageChannelReady(ILo/cB$onNavigationEvent;)V
    .locals 2

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object v0, p0, Lo/cB$extraCallback;->zzf:Lo/ay$1;

    .line 24
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cB$extraCallback;->zzf:Lo/ay$1;

    .line 27
    :cond_0
    iget-object v0, p0, Lo/cB$extraCallback;->zzf:Lo/ay$1;

    invoke-interface {v0, p1, p2}, Lo/ay$1;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic onPostMessage(Lo/cB$extraCallback;ILo/cB$onNavigationEvent;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/cB$extraCallback;->onMessageChannelReady(ILo/cB$onNavigationEvent;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cB$extraCallback;ILo/cB$onPostMessage;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lo/cB$extraCallback;->ICustomTabsCallback(ILo/cB$onPostMessage;)V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 29
    sget-object p2, Lo/f$a;->ICustomTabsCallback:[I

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
    sget-object p1, Lo/cB$extraCallback;->zzj:Lo/en;

    if-nez p1, :cond_1

    .line 38
    const-class p2, Lo/cB$extraCallback;

    monitor-enter p2

    .line 39
    :try_start_0
    sget-object p1, Lo/cB$extraCallback;->zzj:Lo/en;

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cB$extraCallback;->zzi:Lo/cB$extraCallback;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 42
    sput-object p1, Lo/cB$extraCallback;->zzj:Lo/en;

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
    sget-object p1, Lo/cB$extraCallback;->zzi:Lo/cB$extraCallback;

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

    .line 32
    const-class p3, Lo/cB$onPostMessage;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lo/cB$onNavigationEvent;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzh"

    aput-object p3, p1, p2

    .line 34
    sget-object p2, Lo/cB$extraCallback;->zzi:Lo/cB$extraCallback;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001\u0005\u1007\u0002"

    invoke-static {p2, p3, p1}, Lo/cB$extraCallback;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_5
    new-instance p1, Lo/cB$extraCallback$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/cB$extraCallback$ICustomTabsCallback;-><init>(Lo/f$a;)V

    return-object p1

    .line 30
    :pswitch_6
    new-instance p1, Lo/cB$extraCallback;

    invoke-direct {p1}, Lo/cB$extraCallback;-><init>()V

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

.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cB$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/cB$extraCallback;->zzf:Lo/ay$1;

    return-object v0
.end method

.method public final ICustomTabsCallback(I)Lo/cB$onPostMessage;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/cB$extraCallback;->zze:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/cB$onPostMessage;

    return-object p1
.end method

.method public final extraCallback()I
    .locals 1

    .line 8
    iget-object v0, p0, Lo/cB$extraCallback;->zze:Lo/ay$1;

    invoke-interface {v0}, Lo/ay$1;->size()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 6
    iget v0, p0, Lo/cB$extraCallback;->zzd:I

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 5
    iget v0, p0, Lo/cB$extraCallback;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

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
            "Lo/cB$onPostMessage;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lo/cB$extraCallback;->zze:Lo/ay$1;

    return-object v0
.end method

.method public final onPostMessage(I)Lo/cB$onNavigationEvent;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/cB$extraCallback;->zzf:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/cB$onNavigationEvent;

    return-object p1
.end method

.method public final onRelationshipValidationResult()I
    .locals 1

    .line 19
    iget-object v0, p0, Lo/cB$extraCallback;->zzf:Lo/ay$1;

    invoke-interface {v0}, Lo/ay$1;->size()I

    move-result v0

    return v0
.end method
