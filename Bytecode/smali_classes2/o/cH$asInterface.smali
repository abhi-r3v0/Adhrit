.class public final Lo/cH$asInterface;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cH$asInterface$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cH$asInterface;",
        "Lo/cH$asInterface$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzf:Lo/cH$asInterface;

.field private static volatile zzg:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cH$asInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lo/fb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lo/cH$asInterface;

    invoke-direct {v0}, Lo/cH$asInterface;-><init>()V

    .line 43
    sput-object v0, Lo/cH$asInterface;->zzf:Lo/cH$asInterface;

    .line 44
    const-class v1, Lo/cH$asInterface;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    .line 2
    invoke-static {}, Lo/cH$asInterface;->onReceiveResult()Lo/fb;

    move-result-object v0

    iput-object v0, p0, Lo/cH$asInterface;->zze:Lo/fb;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/Iterable;)V
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

    .line 13
    iget-object v0, p0, Lo/cH$asInterface;->zze:Lo/fb;

    .line 14
    invoke-interface {v0}, Lo/fb;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    invoke-static {v0}, Lo/fa;->extraCallback(Lo/fb;)Lo/fb;

    move-result-object v0

    iput-object v0, p0, Lo/cH$asInterface;->zze:Lo/fb;

    .line 17
    :cond_0
    iget-object v0, p0, Lo/cH$asInterface;->zze:Lo/fb;

    invoke-static {p1, v0}, Lo/ab$a;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$asInterface;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lo/cH$asInterface;->onMessageChannelReady(I)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$asInterface;Ljava/lang/Iterable;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lo/cH$asInterface;->ICustomTabsCallback(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic asInterface()Lo/cH$asInterface;
    .locals 1

    .line 39
    sget-object v0, Lo/cH$asInterface;->zzf:Lo/cH$asInterface;

    return-object v0
.end method

.method public static onMessageChannelReady()Lo/cH$asInterface$onMessageChannelReady;
    .locals 1

    .line 19
    sget-object v0, Lo/cH$asInterface;->zzf:Lo/cH$asInterface;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cH$asInterface$onMessageChannelReady;

    return-object v0
.end method

.method private final onMessageChannelReady(I)V
    .locals 1

    .line 6
    iget v0, p0, Lo/cH$asInterface;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/cH$asInterface;->zzc:I

    .line 7
    iput p1, p0, Lo/cH$asInterface;->zzd:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)J
    .locals 2

    .line 11
    iget-object v0, p0, Lo/cH$asInterface;->zze:Lo/fb;

    invoke-interface {v0, p1}, Lo/fb;->ICustomTabsCallback(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object p2, Lo/cI;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 36
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_2
    sget-object p1, Lo/cH$asInterface;->zzg:Lo/en;

    if-nez p1, :cond_1

    .line 29
    const-class p2, Lo/cH$asInterface;

    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lo/cH$asInterface;->zzg:Lo/en;

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cH$asInterface;->zzf:Lo/cH$asInterface;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 33
    sput-object p1, Lo/cH$asInterface;->zzg:Lo/en;

    .line 34
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

    .line 26
    :pswitch_3
    sget-object p1, Lo/cH$asInterface;->zzf:Lo/cH$asInterface;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 25
    sget-object p2, Lo/cH$asInterface;->zzf:Lo/cH$asInterface;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    invoke-static {p2, p3, p1}, Lo/cH$asInterface;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_5
    new-instance p1, Lo/cH$asInterface$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/cH$asInterface$onMessageChannelReady;-><init>(Lo/cI;)V

    return-object p1

    .line 21
    :pswitch_6
    new-instance p1, Lo/cH$asInterface;

    invoke-direct {p1}, Lo/cH$asInterface;-><init>()V

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

    .line 4
    iget v0, p0, Lo/cH$asInterface;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 10
    iget-object v0, p0, Lo/cH$asInterface;->zze:Lo/fb;

    invoke-interface {v0}, Lo/fb;->size()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/cH$asInterface;->zze:Lo/fb;

    return-object v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 5
    iget v0, p0, Lo/cH$asInterface;->zzd:I

    return v0
.end method
