.class public final Lo/cB$onPostMessage;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cB$onPostMessage$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cB$onPostMessage;",
        "Lo/cB$onPostMessage$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzj:Lo/cB$onPostMessage;

.field private static volatile zzk:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cB$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lo/cB$onMessageChannelReady;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lo/cB$onPostMessage;

    invoke-direct {v0}, Lo/cB$onPostMessage;-><init>()V

    .line 39
    sput-object v0, Lo/cB$onPostMessage;->zzj:Lo/cB$onPostMessage;

    .line 40
    const-class v1, Lo/cB$onPostMessage;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/cB$onPostMessage;->zze:Ljava/lang/String;

    return-void
.end method

.method private final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget v0, p0, Lo/cB$onPostMessage;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/cB$onPostMessage;->zzc:I

    .line 9
    iput-object p1, p0, Lo/cB$onPostMessage;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cB$onPostMessage;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lo/cB$onPostMessage;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static onRelationshipValidationResult()Lo/cB$onPostMessage$onPostMessage;
    .locals 1

    .line 16
    sget-object v0, Lo/cB$onPostMessage;->zzj:Lo/cB$onPostMessage;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cB$onPostMessage$onPostMessage;

    return-object v0
.end method

.method static synthetic onTransact()Lo/cB$onPostMessage;
    .locals 1

    .line 36
    sget-object v0, Lo/cB$onPostMessage;->zzj:Lo/cB$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 5
    iget v0, p0, Lo/cB$onPostMessage;->zzd:I

    return v0
.end method

.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 17
    sget-object p2, Lo/f$a;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 35
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 33
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_2
    sget-object p1, Lo/cB$onPostMessage;->zzk:Lo/en;

    if-nez p1, :cond_1

    .line 26
    const-class p2, Lo/cB$onPostMessage;

    monitor-enter p2

    .line 27
    :try_start_0
    sget-object p1, Lo/cB$onPostMessage;->zzk:Lo/en;

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cB$onPostMessage;->zzj:Lo/cB$onPostMessage;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 30
    sput-object p1, Lo/cB$onPostMessage;->zzk:Lo/en;

    .line 31
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

    .line 23
    :pswitch_3
    sget-object p1, Lo/cB$onPostMessage;->zzj:Lo/cB$onPostMessage;

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

    .line 22
    sget-object p2, Lo/cB$onPostMessage;->zzj:Lo/cB$onPostMessage;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005"

    invoke-static {p2, p3, p1}, Lo/cB$onPostMessage;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_5
    new-instance p1, Lo/cB$onPostMessage$onPostMessage;

    invoke-direct {p1, p2}, Lo/cB$onPostMessage$onPostMessage;-><init>(Lo/f$a;)V

    return-object p1

    .line 18
    :pswitch_6
    new-instance p1, Lo/cB$onPostMessage;

    invoke-direct {p1}, Lo/cB$onPostMessage;-><init>()V

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

    .line 13
    iget-boolean v0, p0, Lo/cB$onPostMessage;->zzh:Z

    return v0
.end method

.method public final asBinder()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/cB$onPostMessage;->zzi:Z

    return v0
.end method

.method public final asInterface()Z
    .locals 1

    .line 14
    iget v0, p0, Lo/cB$onPostMessage;->zzc:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lo/cB$onPostMessage;->zzg:Z

    return v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/cB$onPostMessage;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/cB$onMessageChannelReady;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/cB$onPostMessage;->zzf:Lo/cB$onMessageChannelReady;

    if-nez v0, :cond_0

    invoke-static {}, Lo/cB$onMessageChannelReady;->asBinder()Lo/cB$onMessageChannelReady;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final onPostMessage()Z
    .locals 2

    .line 4
    iget v0, p0, Lo/cB$onPostMessage;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
