.class public final Lo/cB$onMessageChannelReady;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cB$onMessageChannelReady$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cB$onMessageChannelReady;",
        "Lo/cB$onMessageChannelReady$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzh:Lo/cB$onMessageChannelReady;

.field private static volatile zzi:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cB$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lo/cB$asBinder;

.field private zze:Lo/cB$ICustomTabsCallback;

.field private zzf:Z

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lo/cB$onMessageChannelReady;

    invoke-direct {v0}, Lo/cB$onMessageChannelReady;-><init>()V

    .line 39
    sput-object v0, Lo/cB$onMessageChannelReady;->zzh:Lo/cB$onMessageChannelReady;

    .line 40
    const-class v1, Lo/cB$onMessageChannelReady;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/cB$onMessageChannelReady;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cB$onMessageChannelReady;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lo/cB$onMessageChannelReady;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub()Lo/cB$onMessageChannelReady;
    .locals 1

    .line 36
    sget-object v0, Lo/cB$onMessageChannelReady;->zzh:Lo/cB$onMessageChannelReady;

    return-object v0
.end method

.method public static asBinder()Lo/cB$onMessageChannelReady;
    .locals 1

    .line 35
    sget-object v0, Lo/cB$onMessageChannelReady;->zzh:Lo/cB$onMessageChannelReady;

    return-object v0
.end method

.method private final onPostMessage(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget v0, p0, Lo/cB$onMessageChannelReady;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/cB$onMessageChannelReady;->zzc:I

    .line 14
    iput-object p1, p0, Lo/cB$onMessageChannelReady;->zzg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 16
    sget-object p2, Lo/f$a;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 32
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_2
    sget-object p1, Lo/cB$onMessageChannelReady;->zzi:Lo/en;

    if-nez p1, :cond_1

    .line 25
    const-class p2, Lo/cB$onMessageChannelReady;

    monitor-enter p2

    .line 26
    :try_start_0
    sget-object p1, Lo/cB$onMessageChannelReady;->zzi:Lo/en;

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cB$onMessageChannelReady;->zzh:Lo/cB$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 29
    sput-object p1, Lo/cB$onMessageChannelReady;->zzi:Lo/en;

    .line 30
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

    .line 22
    :pswitch_3
    sget-object p1, Lo/cB$onMessageChannelReady;->zzh:Lo/cB$onMessageChannelReady;

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

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    .line 21
    sget-object p2, Lo/cB$onMessageChannelReady;->zzh:Lo/cB$onMessageChannelReady;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

    invoke-static {p2, p3, p1}, Lo/cB$onMessageChannelReady;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lo/cB$onMessageChannelReady$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/cB$onMessageChannelReady$onMessageChannelReady;-><init>(Lo/f$a;)V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lo/cB$onMessageChannelReady;

    invoke-direct {p1}, Lo/cB$onMessageChannelReady;-><init>()V

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

    .line 6
    iget v0, p0, Lo/cB$onMessageChannelReady;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asInterface()Z
    .locals 1

    .line 10
    iget v0, p0, Lo/cB$onMessageChannelReady;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Z
    .locals 1

    .line 8
    iget v0, p0, Lo/cB$onMessageChannelReady;->zzc:I

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

    .line 4
    iget v0, p0, Lo/cB$onMessageChannelReady;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()Lo/cB$ICustomTabsCallback;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/cB$onMessageChannelReady;->zze:Lo/cB$ICustomTabsCallback;

    if-nez v0, :cond_0

    invoke-static {}, Lo/cB$ICustomTabsCallback;->ICustomTabsService()Lo/cB$ICustomTabsCallback;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final onPostMessage()Lo/cB$asBinder;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/cB$onMessageChannelReady;->zzd:Lo/cB$asBinder;

    if-nez v0, :cond_0

    invoke-static {}, Lo/cB$asBinder;->onRelationshipValidationResult()Lo/cB$asBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lo/cB$onMessageChannelReady;->zzf:Z

    return v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/cB$onMessageChannelReady;->zzg:Ljava/lang/String;

    return-object v0
.end method
