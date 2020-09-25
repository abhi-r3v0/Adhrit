.class public final Lo/cH$onMessageChannelReady;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cH$onMessageChannelReady$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cH$onMessageChannelReady;",
        "Lo/cH$onMessageChannelReady$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzf:Lo/cH$onMessageChannelReady;

.field private static volatile zzg:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cH$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lo/cH$onMessageChannelReady;

    invoke-direct {v0}, Lo/cH$onMessageChannelReady;-><init>()V

    .line 37
    sput-object v0, Lo/cH$onMessageChannelReady;->zzf:Lo/cH$onMessageChannelReady;

    .line 38
    const-class v1, Lo/cH$onMessageChannelReady;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$onMessageChannelReady;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lo/cH$onMessageChannelReady;->onNavigationEvent(J)V

    return-void
.end method

.method private final onMessageChannelReady(I)V
    .locals 1

    .line 5
    iget v0, p0, Lo/cH$onMessageChannelReady;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/cH$onMessageChannelReady;->zzc:I

    .line 6
    iput p1, p0, Lo/cH$onMessageChannelReady;->zzd:I

    return-void
.end method

.method public static onNavigationEvent()Lo/cH$onMessageChannelReady$onPostMessage;
    .locals 1

    .line 13
    sget-object v0, Lo/cH$onMessageChannelReady;->zzf:Lo/cH$onMessageChannelReady;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cH$onMessageChannelReady$onPostMessage;

    return-object v0
.end method

.method private final onNavigationEvent(J)V
    .locals 1

    .line 10
    iget v0, p0, Lo/cH$onMessageChannelReady;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/cH$onMessageChannelReady;->zzc:I

    .line 11
    iput-wide p1, p0, Lo/cH$onMessageChannelReady;->zze:J

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$onMessageChannelReady;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/cH$onMessageChannelReady;->onMessageChannelReady(I)V

    return-void
.end method

.method static synthetic onRelationshipValidationResult()Lo/cH$onMessageChannelReady;
    .locals 1

    .line 33
    sget-object v0, Lo/cH$onMessageChannelReady;->zzf:Lo/cH$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 4
    iget v0, p0, Lo/cH$onMessageChannelReady;->zzd:I

    return v0
.end method

.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 14
    sget-object p2, Lo/cI;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 30
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_2
    sget-object p1, Lo/cH$onMessageChannelReady;->zzg:Lo/en;

    if-nez p1, :cond_1

    .line 23
    const-class p2, Lo/cH$onMessageChannelReady;

    monitor-enter p2

    .line 24
    :try_start_0
    sget-object p1, Lo/cH$onMessageChannelReady;->zzg:Lo/en;

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cH$onMessageChannelReady;->zzf:Lo/cH$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 27
    sput-object p1, Lo/cH$onMessageChannelReady;->zzg:Lo/en;

    .line 28
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

    .line 20
    :pswitch_3
    sget-object p1, Lo/cH$onMessageChannelReady;->zzf:Lo/cH$onMessageChannelReady;

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

    .line 19
    sget-object p2, Lo/cH$onMessageChannelReady;->zzf:Lo/cH$onMessageChannelReady;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001"

    invoke-static {p2, p3, p1}, Lo/cH$onMessageChannelReady;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_5
    new-instance p1, Lo/cH$onMessageChannelReady$onPostMessage;

    invoke-direct {p1, p2}, Lo/cH$onMessageChannelReady$onPostMessage;-><init>(Lo/cI;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lo/cH$onMessageChannelReady;

    invoke-direct {p1}, Lo/cH$onMessageChannelReady;-><init>()V

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

.method public final extraCallback()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lo/cH$onMessageChannelReady;->zze:J

    return-wide v0
.end method

.method public final onMessageChannelReady()Z
    .locals 2

    .line 3
    iget v0, p0, Lo/cH$onMessageChannelReady;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 8
    iget v0, p0, Lo/cH$onMessageChannelReady;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
