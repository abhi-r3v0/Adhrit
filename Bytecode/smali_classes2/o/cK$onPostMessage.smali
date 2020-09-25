.class public final Lo/cK$onPostMessage;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cK$onPostMessage$onPostMessage;,
        Lo/cK$onPostMessage$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cK$onPostMessage;",
        "Lo/cK$onPostMessage$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzk:Lo/cK$onPostMessage;

.field private static volatile zzl:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cK$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Z

.field private zzg:J

.field private zzh:D

.field private zzi:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cK$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lo/cK$onPostMessage;

    invoke-direct {v0}, Lo/cK$onPostMessage;-><init>()V

    .line 28
    sput-object v0, Lo/cK$onPostMessage;->zzk:Lo/cK$onPostMessage;

    .line 29
    const-class v1, Lo/cK$onPostMessage;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/cK$onPostMessage;->zze:Ljava/lang/String;

    .line 3
    invoke-static {}, Lo/cK$onPostMessage;->onItemLoaded()Lo/ay$1;

    move-result-object v1

    iput-object v1, p0, Lo/cK$onPostMessage;->zzi:Lo/ay$1;

    .line 4
    iput-object v0, p0, Lo/cK$onPostMessage;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic onPostMessage()Lo/cK$onPostMessage;
    .locals 1

    .line 26
    sget-object v0, Lo/cK$onPostMessage;->zzk:Lo/cK$onPostMessage;

    return-object v0
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 6
    const-class p2, Lo/cK$onPostMessage;

    sget-object p3, Lo/cL;->onNavigationEvent:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 23
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lo/cK$onPostMessage;->zzl:Lo/en;

    if-nez p1, :cond_1

    .line 16
    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lo/cK$onPostMessage;->zzl:Lo/en;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cK$onPostMessage;->zzk:Lo/cK$onPostMessage;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 20
    sput-object p1, Lo/cK$onPostMessage;->zzl:Lo/en;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p1, Lo/cK$onPostMessage;->zzk:Lo/cK$onPostMessage;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzc"

    aput-object v1, p1, p3

    const-string p3, "zzd"

    aput-object p3, p1, v0

    const/4 p3, 0x2

    .line 10
    invoke-static {}, Lo/cK$onPostMessage$onNavigationEvent;->onMessageChannelReady()Lo/fI;

    move-result-object v0

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "zze"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "zzf"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    const-string v0, "zzg"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    const-string v0, "zzh"

    aput-object v0, p1, p3

    const/4 p3, 0x7

    const-string v0, "zzi"

    aput-object v0, p1, p3

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const/16 p2, 0x9

    const-string p3, "zzj"

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lo/cK$onPostMessage;->zzk:Lo/cK$onPostMessage;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u1002\u0003\u0005\u1000\u0004\u0006\u001b\u0007\u1008\u0005"

    invoke-static {p2, p3, p1}, Lo/cK$onPostMessage;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lo/cK$onPostMessage$onPostMessage;

    invoke-direct {p1, p3}, Lo/cK$onPostMessage$onPostMessage;-><init>(Lo/cL;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lo/cK$onPostMessage;

    invoke-direct {p1}, Lo/cK$onPostMessage;-><init>()V

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
