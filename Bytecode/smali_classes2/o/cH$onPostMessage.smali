.class public final Lo/cH$onPostMessage;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cH$onPostMessage$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cH$onPostMessage;",
        "Lo/cH$onPostMessage$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzf:Lo/cH$onPostMessage;

.field private static volatile zzg:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cH$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lo/cH$onPostMessage;

    invoke-direct {v0}, Lo/cH$onPostMessage;-><init>()V

    .line 35
    sput-object v0, Lo/cH$onPostMessage;->zzf:Lo/cH$onPostMessage;

    .line 36
    const-class v1, Lo/cH$onPostMessage;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/cH$onPostMessage;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static extraCallback()Lo/cH$onPostMessage$onNavigationEvent;
    .locals 1

    .line 11
    sget-object v0, Lo/cH$onPostMessage;->zzf:Lo/cH$onPostMessage;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cH$onPostMessage$onNavigationEvent;

    return-object v0
.end method

.method private final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v0, p0, Lo/cH$onPostMessage;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/cH$onPostMessage;->zzc:I

    .line 6
    iput-object p1, p0, Lo/cH$onPostMessage;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$onPostMessage;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lo/cH$onPostMessage;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onPostMessage()Lo/cH$onPostMessage;
    .locals 1

    .line 31
    sget-object v0, Lo/cH$onPostMessage;->zzf:Lo/cH$onPostMessage;

    return-object v0
.end method

.method private final onPostMessage(J)V
    .locals 1

    .line 8
    iget v0, p0, Lo/cH$onPostMessage;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/cH$onPostMessage;->zzc:I

    .line 9
    iput-wide p1, p0, Lo/cH$onPostMessage;->zze:J

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$onPostMessage;J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lo/cH$onPostMessage;->onPostMessage(J)V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 12
    sget-object p2, Lo/cI;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 30
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 28
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_2
    sget-object p1, Lo/cH$onPostMessage;->zzg:Lo/en;

    if-nez p1, :cond_1

    .line 21
    const-class p2, Lo/cH$onPostMessage;

    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lo/cH$onPostMessage;->zzg:Lo/en;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cH$onPostMessage;->zzf:Lo/cH$onPostMessage;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 25
    sput-object p1, Lo/cH$onPostMessage;->zzg:Lo/en;

    .line 26
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

    .line 18
    :pswitch_3
    sget-object p1, Lo/cH$onPostMessage;->zzf:Lo/cH$onPostMessage;

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

    .line 17
    sget-object p2, Lo/cH$onPostMessage;->zzf:Lo/cH$onPostMessage;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001"

    invoke-static {p2, p3, p1}, Lo/cH$onPostMessage;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lo/cH$onPostMessage$onNavigationEvent;

    invoke-direct {p1, p2}, Lo/cH$onPostMessage$onNavigationEvent;-><init>(Lo/cI;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lo/cH$onPostMessage;

    invoke-direct {p1}, Lo/cH$onPostMessage;-><init>()V

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
