.class public final Lo/cB$ICustomTabsCallback;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cB$ICustomTabsCallback$onMessageChannelReady;,
        Lo/cB$ICustomTabsCallback$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cB$ICustomTabsCallback;",
        "Lo/cB$ICustomTabsCallback$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzi:Lo/cB$ICustomTabsCallback;

.field private static volatile zzj:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cB$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lo/cB$ICustomTabsCallback;

    invoke-direct {v0}, Lo/cB$ICustomTabsCallback;-><init>()V

    .line 40
    sput-object v0, Lo/cB$ICustomTabsCallback;->zzi:Lo/cB$ICustomTabsCallback;

    .line 41
    const-class v1, Lo/cB$ICustomTabsCallback;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/cB$ICustomTabsCallback;->zzf:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lo/cB$ICustomTabsCallback;->zzg:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lo/cB$ICustomTabsCallback;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsService()Lo/cB$ICustomTabsCallback;
    .locals 1

    .line 37
    sget-object v0, Lo/cB$ICustomTabsCallback;->zzi:Lo/cB$ICustomTabsCallback;

    return-object v0
.end method

.method static synthetic warmup()Lo/cB$ICustomTabsCallback;
    .locals 1

    .line 38
    sget-object v0, Lo/cB$ICustomTabsCallback;->zzi:Lo/cB$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 17
    sget-object p2, Lo/f$a;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 34
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_2
    sget-object p1, Lo/cB$ICustomTabsCallback;->zzj:Lo/en;

    if-nez p1, :cond_1

    .line 27
    const-class p2, Lo/cB$ICustomTabsCallback;

    monitor-enter p2

    .line 28
    :try_start_0
    sget-object p1, Lo/cB$ICustomTabsCallback;->zzj:Lo/en;

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cB$ICustomTabsCallback;->zzi:Lo/cB$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 31
    sput-object p1, Lo/cB$ICustomTabsCallback;->zzj:Lo/en;

    .line 32
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

    .line 24
    :pswitch_3
    sget-object p1, Lo/cB$ICustomTabsCallback;->zzi:Lo/cB$ICustomTabsCallback;

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

    .line 21
    invoke-static {}, Lo/cB$ICustomTabsCallback$onPostMessage;->onNavigationEvent()Lo/fI;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    .line 23
    sget-object p2, Lo/cB$ICustomTabsCallback;->zzi:Lo/cB$ICustomTabsCallback;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004"

    invoke-static {p2, p3, p1}, Lo/cB$ICustomTabsCallback;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_5
    new-instance p1, Lo/cB$ICustomTabsCallback$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/cB$ICustomTabsCallback$onMessageChannelReady;-><init>(Lo/f$a;)V

    return-object p1

    .line 18
    :pswitch_6
    new-instance p1, Lo/cB$ICustomTabsCallback;

    invoke-direct {p1}, Lo/cB$ICustomTabsCallback;-><init>()V

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

    .line 6
    iget v0, p0, Lo/cB$ICustomTabsCallback;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/cB$ICustomTabsCallback;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final asBinder()Z
    .locals 1

    .line 13
    iget v0, p0, Lo/cB$ICustomTabsCallback;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asInterface()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/cB$ICustomTabsCallback;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final extraCallback()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/cB$ICustomTabsCallback;->zze:Z

    return v0
.end method

.method public final onMessageChannelReady()Lo/cB$ICustomTabsCallback$onPostMessage;
    .locals 1

    .line 7
    iget v0, p0, Lo/cB$ICustomTabsCallback;->zzd:I

    invoke-static {v0}, Lo/cB$ICustomTabsCallback$onPostMessage;->onPostMessage(I)Lo/cB$ICustomTabsCallback$onPostMessage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    sget-object v0, Lo/cB$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/cB$ICustomTabsCallback$onPostMessage;

    :cond_0
    return-object v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 9
    iget v0, p0, Lo/cB$ICustomTabsCallback;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 11
    iget v0, p0, Lo/cB$ICustomTabsCallback;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 15
    iget v0, p0, Lo/cB$ICustomTabsCallback;->zzc:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/cB$ICustomTabsCallback;->zzg:Ljava/lang/String;

    return-object v0
.end method
