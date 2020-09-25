.class public final Lo/cH$newSession;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "newSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cH$newSession$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cH$newSession;",
        "Lo/cH$newSession$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzj:Lo/cH$newSession;

.field private static volatile zzk:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cH$newSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:F

.field private zzi:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Lo/cH$newSession;

    invoke-direct {v0}, Lo/cH$newSession;-><init>()V

    .line 73
    sput-object v0, Lo/cH$newSession;->zzj:Lo/cH$newSession;

    .line 74
    const-class v1, Lo/cH$newSession;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/cH$newSession;->zze:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lo/cH$newSession;->zzf:Ljava/lang/String;

    return-void
.end method

.method private final ICustomTabsCallback(J)V
    .locals 1

    .line 7
    iget v0, p0, Lo/cH$newSession;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/cH$newSession;->zzc:I

    .line 8
    iput-wide p1, p0, Lo/cH$newSession;->zzd:J

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$newSession;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lo/cH$newSession;->getInterfaceDescriptor()V

    return-void
.end method

.method private final ICustomTabsService()V
    .locals 2

    .line 40
    iget v0, p0, Lo/cH$newSession;->zzc:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lo/cH$newSession;->zzc:I

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lo/cH$newSession;->zzi:D

    return-void
.end method

.method public static asInterface()Lo/cH$newSession$onPostMessage;
    .locals 1

    .line 43
    sget-object v0, Lo/cH$newSession;->zzj:Lo/cH$newSession;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cH$newSession$onPostMessage;

    return-object v0
.end method

.method private final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget v0, p0, Lo/cH$newSession;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/cH$newSession;->zzc:I

    .line 19
    iput-object p1, p0, Lo/cH$newSession;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$newSession;J)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lo/cH$newSession;->ICustomTabsCallback(J)V

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$newSession;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lo/cH$newSession;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method private final getInterfaceDescriptor()V
    .locals 1

    .line 21
    iget v0, p0, Lo/cH$newSession;->zzc:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lo/cH$newSession;->zzc:I

    .line 23
    sget-object v0, Lo/cH$newSession;->zzj:Lo/cH$newSession;

    .line 24
    iget-object v0, v0, Lo/cH$newSession;->zzf:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lo/cH$newSession;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic newSession()Lo/cH$newSession;
    .locals 1

    .line 63
    sget-object v0, Lo/cH$newSession;->zzj:Lo/cH$newSession;

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/cH$newSession;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lo/cH$newSession;->ICustomTabsService()V

    return-void
.end method

.method private final onNavigationEvent(J)V
    .locals 1

    .line 29
    iget v0, p0, Lo/cH$newSession;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/cH$newSession;->zzc:I

    .line 30
    iput-wide p1, p0, Lo/cH$newSession;->zzg:J

    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget v0, p0, Lo/cH$newSession;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/cH$newSession;->zzc:I

    .line 13
    iput-object p1, p0, Lo/cH$newSession;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$newSession;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lo/cH$newSession;->warmup()V

    return-void
.end method

.method private final onPostMessage(D)V
    .locals 1

    .line 37
    iget v0, p0, Lo/cH$newSession;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lo/cH$newSession;->zzc:I

    .line 38
    iput-wide p1, p0, Lo/cH$newSession;->zzi:D

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$newSession;D)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lo/cH$newSession;->onPostMessage(D)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$newSession;J)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lo/cH$newSession;->onNavigationEvent(J)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$newSession;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lo/cH$newSession;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method private final warmup()V
    .locals 2

    .line 32
    iget v0, p0, Lo/cH$newSession;->zzc:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lo/cH$newSession;->zzc:I

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lo/cH$newSession;->zzg:J

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 44
    sget-object p2, Lo/cI;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 60
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_2
    sget-object p1, Lo/cH$newSession;->zzk:Lo/en;

    if-nez p1, :cond_1

    .line 53
    const-class p2, Lo/cH$newSession;

    monitor-enter p2

    .line 54
    :try_start_0
    sget-object p1, Lo/cH$newSession;->zzk:Lo/en;

    if-nez p1, :cond_0

    .line 56
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cH$newSession;->zzj:Lo/cH$newSession;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 57
    sput-object p1, Lo/cH$newSession;->zzk:Lo/en;

    .line 58
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

    .line 50
    :pswitch_3
    sget-object p1, Lo/cH$newSession;->zzj:Lo/cH$newSession;

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

    .line 49
    sget-object p2, Lo/cH$newSession;->zzj:Lo/cH$newSession;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

    invoke-static {p2, p3, p1}, Lo/cH$newSession;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :pswitch_5
    new-instance p1, Lo/cH$newSession$onPostMessage;

    invoke-direct {p1, p2}, Lo/cH$newSession$onPostMessage;-><init>(Lo/cI;)V

    return-object p1

    .line 45
    :pswitch_6
    new-instance p1, Lo/cH$newSession;

    invoke-direct {p1}, Lo/cH$newSession;-><init>()V

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

.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/cH$newSession;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    .line 27
    iget v0, p0, Lo/cH$newSession;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lo/cH$newSession;->zzi:D

    return-wide v0
.end method

.method public final extraCallback()Z
    .locals 1

    .line 15
    iget v0, p0, Lo/cH$newSession;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()Z
    .locals 2

    .line 5
    iget v0, p0, Lo/cH$newSession;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/cH$newSession;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lo/cH$newSession;->zzd:J

    return-wide v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 35
    iget v0, p0, Lo/cH$newSession;->zzc:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTransact()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lo/cH$newSession;->zzg:J

    return-wide v0
.end method
