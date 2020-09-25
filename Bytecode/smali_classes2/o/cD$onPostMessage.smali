.class public final Lo/cD$onPostMessage;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cD$onPostMessage$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cD$onPostMessage;",
        "Lo/cD$onPostMessage$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzh:Lo/cD$onPostMessage;

.field private static volatile zzi:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cD$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private zzf:Z

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lo/cD$onPostMessage;

    invoke-direct {v0}, Lo/cD$onPostMessage;-><init>()V

    .line 35
    sput-object v0, Lo/cD$onPostMessage;->zzh:Lo/cD$onPostMessage;

    .line 36
    const-class v1, Lo/cD$onPostMessage;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/cD$onPostMessage;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic asBinder()Lo/cD$onPostMessage;
    .locals 1

    .line 32
    sget-object v0, Lo/cD$onPostMessage;->zzh:Lo/cD$onPostMessage;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/cD$onPostMessage;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lo/cD$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v0, p0, Lo/cD$onPostMessage;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/cD$onPostMessage;->zzc:I

    .line 7
    iput-object p1, p0, Lo/cD$onPostMessage;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 12
    iget v0, p0, Lo/cD$onPostMessage;->zzg:I

    return v0
.end method

.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 13
    sget-object p2, Lo/fS;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 29
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_2
    sget-object p1, Lo/cD$onPostMessage;->zzi:Lo/en;

    if-nez p1, :cond_1

    .line 22
    const-class p2, Lo/cD$onPostMessage;

    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lo/cD$onPostMessage;->zzi:Lo/en;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cD$onPostMessage;->zzh:Lo/cD$onPostMessage;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 26
    sput-object p1, Lo/cD$onPostMessage;->zzi:Lo/en;

    .line 27
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

    .line 19
    :pswitch_3
    sget-object p1, Lo/cD$onPostMessage;->zzh:Lo/cD$onPostMessage;

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

    .line 18
    sget-object p2, Lo/cD$onPostMessage;->zzh:Lo/cD$onPostMessage;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1004\u0003"

    invoke-static {p2, p3, p1}, Lo/cD$onPostMessage;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_5
    new-instance p1, Lo/cD$onPostMessage$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/cD$onPostMessage$ICustomTabsCallback;-><init>(Lo/fS;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lo/cD$onPostMessage;

    invoke-direct {p1}, Lo/cD$onPostMessage;-><init>()V

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

.method public final extraCallback()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lo/cD$onPostMessage;->zze:Z

    return v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 11
    iget v0, p0, Lo/cD$onPostMessage;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/cD$onPostMessage;->zzf:Z

    return v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/cD$onPostMessage;->zzd:Ljava/lang/String;

    return-object v0
.end method
