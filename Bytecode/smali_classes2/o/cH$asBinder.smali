.class public final Lo/cH$asBinder;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cH$asBinder$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cH$asBinder;",
        "Lo/cH$asBinder$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzg:Lo/cH$asBinder;

.field private static volatile zzh:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cH$asBinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lo/fb;

.field private zzd:Lo/fb;

.field private zze:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cH$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cH$asInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Lo/cH$asBinder;

    invoke-direct {v0}, Lo/cH$asBinder;-><init>()V

    .line 88
    sput-object v0, Lo/cH$asBinder;->zzg:Lo/cH$asBinder;

    .line 89
    const-class v1, Lo/cH$asBinder;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    .line 2
    invoke-static {}, Lo/cH$asBinder;->onReceiveResult()Lo/fb;

    move-result-object v0

    iput-object v0, p0, Lo/cH$asBinder;->zzc:Lo/fb;

    .line 3
    invoke-static {}, Lo/cH$asBinder;->onReceiveResult()Lo/fb;

    move-result-object v0

    iput-object v0, p0, Lo/cH$asBinder;->zzd:Lo/fb;

    .line 4
    invoke-static {}, Lo/cH$asBinder;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$asBinder;->zze:Lo/ay$1;

    .line 5
    invoke-static {}, Lo/cH$asBinder;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$asBinder;->zzf:Lo/ay$1;

    return-void
.end method

.method private final ICustomTabsCallback(I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lo/cH$asBinder;->ICustomTabsCallback$Stub$Proxy()V

    .line 41
    iget-object v0, p0, Lo/cH$asBinder;->zze:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$asBinder;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lo/cH$asBinder;->warmup()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$asBinder;Ljava/lang/Iterable;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lo/cH$asBinder;->onMessageChannelReady(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static ICustomTabsCallback$Stub()Lo/cH$asBinder$onPostMessage;
    .locals 1

    .line 57
    sget-object v0, Lo/cH$asBinder;->zzg:Lo/cH$asBinder;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cH$asBinder$onPostMessage;

    return-object v0
.end method

.method private final ICustomTabsCallback$Stub$Proxy()V
    .locals 2

    .line 32
    iget-object v0, p0, Lo/cH$asBinder;->zze:Lo/ay$1;

    .line 33
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$asBinder;->zze:Lo/ay$1;

    :cond_0
    return-void
.end method

.method private final ICustomTabsService()V
    .locals 2

    .line 46
    iget-object v0, p0, Lo/cH$asBinder;->zzf:Lo/ay$1;

    .line 47
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$asBinder;->zzf:Lo/ay$1;

    :cond_0
    return-void
.end method

.method public static asBinder()Lo/cH$asBinder;
    .locals 1

    .line 77
    sget-object v0, Lo/cH$asBinder;->zzg:Lo/cH$asBinder;

    return-object v0
.end method

.method private final extraCallback(I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lo/cH$asBinder;->ICustomTabsService()V

    .line 55
    iget-object v0, p0, Lo/cH$asBinder;->zzf:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final extraCallback(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$asInterface;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lo/cH$asBinder;->ICustomTabsService()V

    .line 52
    iget-object v0, p0, Lo/cH$asBinder;->zzf:Lo/ay$1;

    invoke-static {p1, v0}, Lo/ab$a;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$asBinder;Ljava/lang/Iterable;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lo/cH$asBinder;->extraCallback(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final getInterfaceDescriptor()V
    .locals 1

    .line 27
    invoke-static {}, Lo/cH$asBinder;->onReceiveResult()Lo/fb;

    move-result-object v0

    iput-object v0, p0, Lo/cH$asBinder;->zzd:Lo/fb;

    return-void
.end method

.method static synthetic newSession()Lo/cH$asBinder;
    .locals 1

    .line 78
    sget-object v0, Lo/cH$asBinder;->zzg:Lo/cH$asBinder;

    return-object v0
.end method

.method private final onMessageChannelReady(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lo/cH$asBinder;->ICustomTabsCallback$Stub$Proxy()V

    .line 38
    iget-object v0, p0, Lo/cH$asBinder;->zze:Lo/ay$1;

    invoke-static {p1, v0}, Lo/ab$a;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/cH$asBinder;Ljava/lang/Iterable;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lo/cH$asBinder;->onNavigationEvent(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lo/cH$asBinder;->zzc:Lo/fb;

    .line 11
    invoke-interface {v0}, Lo/fb;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    invoke-static {v0}, Lo/fa;->extraCallback(Lo/fb;)Lo/fb;

    move-result-object v0

    iput-object v0, p0, Lo/cH$asBinder;->zzc:Lo/fb;

    .line 14
    :cond_0
    iget-object v0, p0, Lo/cH$asBinder;->zzc:Lo/fb;

    invoke-static {p1, v0}, Lo/ab$a;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$asBinder;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lo/cH$asBinder;->extraCallback(I)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$asBinder;Ljava/lang/Iterable;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lo/cH$asBinder;->onPostMessage(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final onPostMessage(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lo/cH$asBinder;->zzd:Lo/fb;

    .line 22
    invoke-interface {v0}, Lo/fb;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-static {v0}, Lo/fa;->extraCallback(Lo/fb;)Lo/fb;

    move-result-object v0

    iput-object v0, p0, Lo/cH$asBinder;->zzd:Lo/fb;

    .line 25
    :cond_0
    iget-object v0, p0, Lo/cH$asBinder;->zzd:Lo/fb;

    invoke-static {p1, v0}, Lo/ab$a;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$asBinder;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lo/cH$asBinder;->getInterfaceDescriptor()V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$asBinder;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lo/cH$asBinder;->ICustomTabsCallback(I)V

    return-void
.end method

.method private final warmup()V
    .locals 1

    .line 16
    invoke-static {}, Lo/cH$asBinder;->onReceiveResult()Lo/fb;

    move-result-object v0

    iput-object v0, p0, Lo/cH$asBinder;->zzc:Lo/fb;

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 58
    sget-object p2, Lo/cI;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 76
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 74
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_2
    sget-object p1, Lo/cH$asBinder;->zzh:Lo/en;

    if-nez p1, :cond_1

    .line 67
    const-class p2, Lo/cH$asBinder;

    monitor-enter p2

    .line 68
    :try_start_0
    sget-object p1, Lo/cH$asBinder;->zzh:Lo/en;

    if-nez p1, :cond_0

    .line 70
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cH$asBinder;->zzg:Lo/cH$asBinder;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 71
    sput-object p1, Lo/cH$asBinder;->zzh:Lo/en;

    .line 72
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

    .line 64
    :pswitch_3
    sget-object p1, Lo/cH$asBinder;->zzg:Lo/cH$asBinder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

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

    .line 61
    const-class p3, Lo/cH$onMessageChannelReady;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lo/cH$asInterface;

    aput-object p3, p1, p2

    .line 63
    sget-object p2, Lo/cH$asBinder;->zzg:Lo/cH$asBinder;

    const-string p3, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    invoke-static {p2, p3, p1}, Lo/cH$asBinder;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_5
    new-instance p1, Lo/cH$asBinder$onPostMessage;

    invoke-direct {p1, p2}, Lo/cH$asBinder$onPostMessage;-><init>(Lo/cI;)V

    return-object p1

    .line 59
    :pswitch_6
    new-instance p1, Lo/cH$asBinder;

    invoke-direct {p1}, Lo/cH$asBinder;-><init>()V

    return-object p1

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/cH$asBinder;->zzd:Lo/fb;

    return-object v0
.end method

.method public final asInterface()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cH$asInterface;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lo/cH$asBinder;->zzf:Lo/ay$1;

    return-object v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 19
    iget-object v0, p0, Lo/cH$asBinder;->zzd:Lo/fb;

    invoke-interface {v0}, Lo/fb;->size()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lo/cH$asBinder;->zzc:Lo/fb;

    return-object v0
.end method

.method public final onMessageChannelReady(I)Lo/cH$asInterface;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/cH$asBinder;->zzf:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/cH$asInterface;

    return-object p1
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cH$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/cH$asBinder;->zze:Lo/ay$1;

    return-object v0
.end method

.method public final onNavigationEvent(I)Lo/cH$onMessageChannelReady;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/cH$asBinder;->zze:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/cH$onMessageChannelReady;

    return-object p1
.end method

.method public final onPostMessage()I
    .locals 1

    .line 8
    iget-object v0, p0, Lo/cH$asBinder;->zzc:Lo/fb;

    invoke-interface {v0}, Lo/fb;->size()I

    move-result v0

    return v0
.end method

.method public final onRelationshipValidationResult()I
    .locals 1

    .line 44
    iget-object v0, p0, Lo/cH$asBinder;->zzf:Lo/ay$1;

    invoke-interface {v0}, Lo/ay$1;->size()I

    move-result v0

    return v0
.end method

.method public final onTransact()I
    .locals 1

    .line 30
    iget-object v0, p0, Lo/cH$asBinder;->zze:Lo/ay$1;

    invoke-interface {v0}, Lo/ay$1;->size()I

    move-result v0

    return v0
.end method
