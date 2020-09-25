.class public final Lo/cK$onMessageChannelReady;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cK$onMessageChannelReady$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cK$onMessageChannelReady;",
        "Lo/cK$onMessageChannelReady$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzd:Lo/cK$onMessageChannelReady;

.field private static volatile zze:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cK$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cK$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lo/cK$onMessageChannelReady;

    invoke-direct {v0}, Lo/cK$onMessageChannelReady;-><init>()V

    .line 25
    sput-object v0, Lo/cK$onMessageChannelReady;->zzd:Lo/cK$onMessageChannelReady;

    .line 26
    const-class v1, Lo/cK$onMessageChannelReady;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    .line 2
    invoke-static {}, Lo/cK$onMessageChannelReady;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cK$onMessageChannelReady;->zzc:Lo/ay$1;

    return-void
.end method

.method static synthetic onPostMessage()Lo/cK$onMessageChannelReady;
    .locals 1

    .line 23
    sget-object v0, Lo/cK$onMessageChannelReady;->zzd:Lo/cK$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lo/cL;->onNavigationEvent:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lo/cK$onMessageChannelReady;->zze:Lo/en;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lo/cK$onMessageChannelReady;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lo/cK$onMessageChannelReady;->zze:Lo/en;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cK$onMessageChannelReady;->zzd:Lo/cK$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 17
    sput-object p1, Lo/cK$onMessageChannelReady;->zze:Lo/en;

    .line 18
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

    .line 10
    :pswitch_3
    sget-object p1, Lo/cK$onMessageChannelReady;->zzd:Lo/cK$onMessageChannelReady;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    .line 7
    const-class p2, Lo/cK$onPostMessage;

    aput-object p2, p1, p3

    .line 9
    sget-object p2, Lo/cK$onMessageChannelReady;->zzd:Lo/cK$onMessageChannelReady;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lo/cK$onMessageChannelReady;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lo/cK$onMessageChannelReady$extraCallback;

    invoke-direct {p1, p2}, Lo/cK$onMessageChannelReady$extraCallback;-><init>(Lo/cL;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lo/cK$onMessageChannelReady;

    invoke-direct {p1}, Lo/cK$onMessageChannelReady;-><init>()V

    return-object p1

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
