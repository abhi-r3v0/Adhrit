.class public final Lo/ArticleDetailActivity$2$1$1;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ArticleDetailActivity$2$1$1$extraCallback;,
        Lo/ArticleDetailActivity$2$1$1$onPostMessage;,
        Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;,
        Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/ArticleDetailActivity$2$1$1;",
        "Lo/ArticleDetailActivity$2$1$1$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/ArticleDetailActivity$2$1$1;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzky:Lo/ArticleDetailActivity$2$1$1;


# instance fields
.field private zzij:I

.field private zziz:Lo/ConversationDetailActivity$6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ConversationDetailActivity$6<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzkm:Ljava/lang/String;

.field private zzkn:I

.field private zzko:J

.field private zzkp:J

.field private zzkq:I

.field private zzkr:I

.field private zzks:Ljava/lang/String;

.field private zzkt:J

.field private zzku:J

.field private zzkv:J

.field private zzkw:J

.field private zzkx:Lo/ConversationDetailActivity$12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ConversationDetailActivity$12<",
            "Lo/ArticleListActivity$3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    new-instance v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-direct {v0}, Lo/ArticleDetailActivity$2$1$1;-><init>()V

    .line 119
    sput-object v0, Lo/ArticleDetailActivity$2$1$1;->zzky:Lo/ArticleDetailActivity$2$1$1;

    .line 120
    const-class v1, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v1, v0}, Lo/fU;->onMessageChannelReady(Ljava/lang/Class;Lo/fU;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    .line 3
    invoke-static {}, Lo/ConversationDetailActivity$6;->extraCallback()Lo/ConversationDetailActivity$6;

    move-result-object v0

    iput-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zziz:Lo/ConversationDetailActivity$6;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkm:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzks:Ljava/lang/String;

    .line 6
    invoke-static {}, Lo/ArticleDetailActivity$2$1$1;->INotificationSideChannel()Lo/ConversationDetailActivity$12;

    move-result-object v0

    iput-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkx:Lo/ConversationDetailActivity$12;

    return-void
.end method

.method private final ICustomTabsCallback(J)V
    .locals 1

    .line 26
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    .line 27
    iput-wide p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzkp:J

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    .line 11
    iput-object p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzkm:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ArticleDetailActivity$2$1$1;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lo/ArticleDetailActivity$2$1$1;->INotificationSideChannel$Stub$Proxy()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ArticleDetailActivity$2$1$1;J)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/ArticleDetailActivity$2$1$1;->onPostMessage(J)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ArticleDetailActivity$2$1$1;Ljava/lang/Iterable;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ArticleDetailActivity$2$1$1;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lo/ArticleDetailActivity$2$1$1;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method private final INotificationSideChannel$Stub$Proxy()V
    .locals 1

    .line 41
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    .line 43
    sget-object v0, Lo/ArticleDetailActivity$2$1$1;->zzky:Lo/ArticleDetailActivity$2$1$1;

    .line 44
    iget-object v0, v0, Lo/ArticleDetailActivity$2$1$1;->zzks:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzks:Ljava/lang/String;

    return-void
.end method

.method static synthetic IPostMessageService$Stub()Lo/ArticleDetailActivity$2$1$1;
    .locals 1

    .line 103
    sget-object v0, Lo/ArticleDetailActivity$2$1$1;->zzky:Lo/ArticleDetailActivity$2$1$1;

    return-object v0
.end method

.method private final extraCallback(I)V
    .locals 1

    .line 34
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    .line 35
    iput p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzkr:I

    return-void
.end method

.method private final extraCallback(J)V
    .locals 1

    .line 49
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    .line 50
    iput-wide p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzkt:J

    return-void
.end method

.method private final extraCallback(Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;)V
    .locals 0

    .line 29
    invoke-virtual {p1}, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzkq:I

    .line 30
    iget p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    return-void
.end method

.method static synthetic extraCallback(Lo/ArticleDetailActivity$2$1$1;J)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lo/ArticleDetailActivity$2$1$1;->extraCallback(J)V

    return-void
.end method

.method static synthetic extraCallback(Lo/ArticleDetailActivity$2$1$1;Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lo/ArticleDetailActivity$2$1$1;->extraCallback(Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;)V

    return-void
.end method

.method public static extraCommand()Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1

    .line 80
    sget-object v0, Lo/ArticleDetailActivity$2$1$1;->zzky:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/fU;->validateRelationship()Lo/fU$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/ArticleDetailActivity$2$1$1$extraCallback;

    return-object v0
.end method

.method private final onMessageChannelReady(J)V
    .locals 1

    .line 59
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    .line 60
    iput-wide p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzkv:J

    return-void
.end method

.method private final onMessageChannelReady(Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;)V
    .locals 0

    .line 16
    invoke-virtual {p1}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzkn:I

    .line 17
    iget p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/ArticleDetailActivity$2$1$1;J)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent(J)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/ArticleDetailActivity$2$1$1;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lo/ArticleDetailActivity$2$1$1;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/ArticleDetailActivity$2$1$1;)Ljava/util/Map;
    .locals 0

    .line 116
    invoke-direct {p0}, Lo/ArticleDetailActivity$2$1$1;->setDefaultImpl()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final onNavigationEvent(J)V
    .locals 1

    .line 21
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    .line 22
    iput-wide p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzko:J

    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/ArticleListActivity$3;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkx:Lo/ConversationDetailActivity$12;

    .line 75
    invoke-interface {v0}, Lo/ConversationDetailActivity$12;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-static {v0}, Lo/fU;->onPostMessage(Lo/ConversationDetailActivity$12;)Lo/ConversationDetailActivity$12;

    move-result-object v0

    iput-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkx:Lo/ConversationDetailActivity$12;

    .line 78
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkx:Lo/ConversationDetailActivity$12;

    invoke-static {p1, v0}, Lo/gb;->extraCallback(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/ArticleDetailActivity$2$1$1;I)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lo/ArticleDetailActivity$2$1$1;->extraCallback(I)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/ArticleDetailActivity$2$1$1;J)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lo/ArticleDetailActivity$2$1$1;->ICustomTabsCallback(J)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/ArticleDetailActivity$2$1$1;Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lo/ArticleDetailActivity$2$1$1;->onMessageChannelReady(Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;)V

    return-void
.end method

.method private final onPostMessage(J)V
    .locals 1

    .line 54
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    .line 55
    iput-wide p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzku:J

    return-void
.end method

.method private final onPostMessage(Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    .line 39
    iput-object p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzks:Ljava/lang/String;

    return-void
.end method

.method static synthetic onPostMessage(Lo/ArticleDetailActivity$2$1$1;J)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lo/ArticleDetailActivity$2$1$1;->onMessageChannelReady(J)V

    return-void
.end method

.method private final onRelationshipValidationResult(J)V
    .locals 1

    .line 64
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    .line 65
    iput-wide p1, p0, Lo/ArticleDetailActivity$2$1$1;->zzkw:J

    return-void
.end method

.method static synthetic onTransact(Lo/ArticleDetailActivity$2$1$1;J)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lo/ArticleDetailActivity$2$1$1;->onRelationshipValidationResult(J)V

    return-void
.end method

.method public static postMessage()Lo/ArticleDetailActivity$2$1$1;
    .locals 1

    .line 102
    sget-object v0, Lo/ArticleDetailActivity$2$1$1;->zzky:Lo/ArticleDetailActivity$2$1$1;

    return-object v0
.end method

.method private final setDefaultImpl()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zziz:Lo/ConversationDetailActivity$6;

    invoke-virtual {v0}, Lo/ConversationDetailActivity$6;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zziz:Lo/ConversationDetailActivity$6;

    invoke-virtual {v0}, Lo/ConversationDetailActivity$6;->onPostMessage()Lo/ConversationDetailActivity$6;

    move-result-object v0

    iput-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zziz:Lo/ConversationDetailActivity$6;

    .line 70
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zziz:Lo/ConversationDetailActivity$6;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 19
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    .line 47
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Z
    .locals 1

    .line 57
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsService()Z
    .locals 1

    .line 52
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkp:J

    return-wide v0
.end method

.method public final asInterface()Z
    .locals 1

    .line 32
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 81
    sget-object p2, Lo/ArticleDetailActivity$2;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 101
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 99
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_2
    sget-object p1, Lo/ArticleDetailActivity$2$1$1;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 92
    const-class p2, Lo/ArticleDetailActivity$2$1$1;

    monitor-enter p2

    .line 93
    :try_start_0
    sget-object p1, Lo/ArticleDetailActivity$2$1$1;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 95
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/ArticleDetailActivity$2$1$1;->zzky:Lo/ArticleDetailActivity$2$1$1;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 96
    sput-object p1, Lo/ArticleDetailActivity$2$1$1;->zzio:Lo/PictureAttachmentActivity$3;

    .line 97
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

    .line 89
    :pswitch_3
    sget-object p1, Lo/ArticleDetailActivity$2$1$1;->zzky:Lo/ArticleDetailActivity$2$1$1;

    return-object p1

    :pswitch_4
    const/16 p1, 0x12

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zzkm"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "zzkn"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 85
    invoke-static {}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->extraCallback()Lo/ConversationDetailActivity$11;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzko"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzkp"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzkr"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzks"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzkt"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzku"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzkv"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzkw"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzkq"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    .line 86
    invoke-static {}, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->onNavigationEvent()Lo/ConversationDetailActivity$11;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zziz"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    sget-object p3, Lo/ArticleDetailActivity$2$1$1$onPostMessage;->ICustomTabsCallback:Lo/onFinish;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzkx"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-class p3, Lo/ArticleListActivity$3;

    aput-object p3, p1, p2

    .line 88
    sget-object p2, Lo/ArticleDetailActivity$2$1$1;->zzky:Lo/ArticleDetailActivity$2$1$1;

    const-string p3, "\u0001\r\u0000\u0001\u0001\r\r\u0001\u0001\u0000\u0001\u1008\u0000\u0002\u100c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1004\u0005\u0006\u1008\u0006\u0007\u1002\u0007\u0008\u1002\u0008\t\u1002\t\n\u1002\n\u000b\u100c\u0004\u000c2\r\u001b"

    invoke-static {p2, p3, p1}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_5
    new-instance p1, Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-direct {p1, p3}, Lo/ArticleDetailActivity$2$1$1$extraCallback;-><init>(Lo/ArticleDetailActivity$2;)V

    return-object p1

    .line 82
    :pswitch_6
    new-instance p1, Lo/ArticleDetailActivity$2$1$1;

    invoke-direct {p1}, Lo/ArticleDetailActivity$2$1$1;-><init>()V

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

.method public final extraCallback()Z
    .locals 1

    .line 13
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getInterfaceDescriptor()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzku:J

    return-wide v0
.end method

.method public final mayLaunchUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ArticleListActivity$3;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkx:Lo/ConversationDetailActivity$12;

    return-object v0
.end method

.method public final newSession()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkv:J

    return-wide v0
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzko:J

    return-wide v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkm:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;
    .locals 1

    .line 14
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkn:I

    invoke-static {v0}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->extraCallback(I)Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    sget-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onMessageChannelReady:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    :cond_0
    return-object v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 24
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTransact()I
    .locals 1

    .line 33
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkr:I

    return v0
.end method

.method public final requestPostMessageChannel()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkw:J

    return-wide v0
.end method

.method public final updateVisuals()Z
    .locals 1

    .line 62
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzij:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final warmup()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lo/ArticleDetailActivity$2$1$1;->zzkt:J

    return-wide v0
.end method
