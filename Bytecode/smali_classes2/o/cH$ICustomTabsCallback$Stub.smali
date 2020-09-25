.class public final Lo/cH$ICustomTabsCallback$Stub;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cH$ICustomTabsCallback$Stub$onPostMessage;,
        Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cH$ICustomTabsCallback$Stub;",
        "Lo/cH$ICustomTabsCallback$Stub$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzf:Lo/cH$ICustomTabsCallback$Stub;

.field private static volatile zzg:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cH$ICustomTabsCallback$Stub;",
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
            "Lo/cH$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lo/cH$ICustomTabsCallback$Stub;

    invoke-direct {v0}, Lo/cH$ICustomTabsCallback$Stub;-><init>()V

    .line 37
    sput-object v0, Lo/cH$ICustomTabsCallback$Stub;->zzf:Lo/cH$ICustomTabsCallback$Stub;

    .line 38
    const-class v1, Lo/cH$ICustomTabsCallback$Stub;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lo/cH$ICustomTabsCallback$Stub;->zzd:I

    .line 3
    invoke-static {}, Lo/cH$ICustomTabsCallback$Stub;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$ICustomTabsCallback$Stub;->zze:Lo/ay$1;

    return-void
.end method

.method private final ICustomTabsCallback(Lo/cH$onPostMessage;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$Stub;->zze:Lo/ay$1;

    .line 8
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$ICustomTabsCallback$Stub;->zze:Lo/ay$1;

    .line 11
    :cond_0
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$Stub;->zze:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$ICustomTabsCallback$Stub;Lo/cH$onPostMessage;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/cH$ICustomTabsCallback$Stub;->ICustomTabsCallback(Lo/cH$onPostMessage;)V

    return-void
.end method

.method public static onNavigationEvent()Lo/cH$ICustomTabsCallback$Stub$onPostMessage;
    .locals 1

    .line 13
    sget-object v0, Lo/cH$ICustomTabsCallback$Stub;->zzf:Lo/cH$ICustomTabsCallback$Stub;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cH$ICustomTabsCallback$Stub$onPostMessage;

    return-object v0
.end method

.method static synthetic onPostMessage()Lo/cH$ICustomTabsCallback$Stub;
    .locals 1

    .line 34
    sget-object v0, Lo/cH$ICustomTabsCallback$Stub;->zzf:Lo/cH$ICustomTabsCallback$Stub;

    return-object v0
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 14
    sget-object p2, Lo/cI;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 31
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_2
    sget-object p1, Lo/cH$ICustomTabsCallback$Stub;->zzg:Lo/en;

    if-nez p1, :cond_1

    .line 24
    const-class p2, Lo/cH$ICustomTabsCallback$Stub;

    monitor-enter p2

    .line 25
    :try_start_0
    sget-object p1, Lo/cH$ICustomTabsCallback$Stub;->zzg:Lo/en;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cH$ICustomTabsCallback$Stub;->zzf:Lo/cH$ICustomTabsCallback$Stub;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 28
    sput-object p1, Lo/cH$ICustomTabsCallback$Stub;->zzg:Lo/en;

    .line 29
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

    .line 21
    :pswitch_3
    sget-object p1, Lo/cH$ICustomTabsCallback$Stub;->zzf:Lo/cH$ICustomTabsCallback$Stub;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 18
    invoke-static {}, Lo/cH$ICustomTabsCallback$Stub$ICustomTabsCallback;->onNavigationEvent()Lo/fI;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lo/cH$onPostMessage;

    aput-object p3, p1, p2

    .line 20
    sget-object p2, Lo/cH$ICustomTabsCallback$Stub;->zzf:Lo/cH$ICustomTabsCallback$Stub;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b"

    invoke-static {p2, p3, p1}, Lo/cH$ICustomTabsCallback$Stub;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_5
    new-instance p1, Lo/cH$ICustomTabsCallback$Stub$onPostMessage;

    invoke-direct {p1, p2}, Lo/cH$ICustomTabsCallback$Stub$onPostMessage;-><init>(Lo/cI;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lo/cH$ICustomTabsCallback$Stub;

    invoke-direct {p1}, Lo/cH$ICustomTabsCallback$Stub;-><init>()V

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
