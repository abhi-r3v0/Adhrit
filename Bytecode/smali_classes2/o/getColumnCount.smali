.class public final Lo/getColumnCount;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getColumnCount$extraCallback;,
        Lo/getColumnCount$onMessageChannelReady;,
        Lo/getColumnCount$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/getColumnCount;",
        "Lo/getColumnCount$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/getColumnCount;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmj:Lo/getColumnCount;


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

.field private zzkt:J

.field private zzkx:Lo/ConversationDetailActivity$12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ConversationDetailActivity$12<",
            "Lo/ArticleListActivity$3;",
            ">;"
        }
    .end annotation
.end field

.field private zzme:Ljava/lang/String;

.field private zzmf:Z

.field private zzmg:J

.field private zzmh:Lo/ConversationDetailActivity$6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ConversationDetailActivity$6<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzmi:Lo/ConversationDetailActivity$12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ConversationDetailActivity$12<",
            "Lo/getColumnCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 99
    new-instance v0, Lo/getColumnCount;

    invoke-direct {v0}, Lo/getColumnCount;-><init>()V

    .line 100
    sput-object v0, Lo/getColumnCount;->zzmj:Lo/getColumnCount;

    .line 101
    const-class v1, Lo/getColumnCount;

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

    iput-object v0, p0, Lo/getColumnCount;->zzmh:Lo/ConversationDetailActivity$6;

    .line 5
    invoke-static {}, Lo/ConversationDetailActivity$6;->extraCallback()Lo/ConversationDetailActivity$6;

    move-result-object v0

    iput-object v0, p0, Lo/getColumnCount;->zziz:Lo/ConversationDetailActivity$6;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lo/getColumnCount;->zzme:Ljava/lang/String;

    .line 7
    invoke-static {}, Lo/getColumnCount;->INotificationSideChannel()Lo/ConversationDetailActivity$12;

    move-result-object v0

    iput-object v0, p0, Lo/getColumnCount;->zzmi:Lo/ConversationDetailActivity$12;

    .line 8
    invoke-static {}, Lo/getColumnCount;->INotificationSideChannel()Lo/ConversationDetailActivity$12;

    move-result-object v0

    iput-object v0, p0, Lo/getColumnCount;->zzkx:Lo/ConversationDetailActivity$12;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getColumnCount;)Ljava/util/Map;
    .locals 0

    .line 93
    invoke-direct {p0}, Lo/getColumnCount;->getInterfaceDescriptor()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget v0, p0, Lo/getColumnCount;->zzij:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/getColumnCount;->zzij:I

    .line 13
    iput-object p1, p0, Lo/getColumnCount;->zzme:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getColumnCount;Ljava/lang/Iterable;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lo/getColumnCount;->onNavigationEvent(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getColumnCount;Lo/ArticleListActivity$3;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lo/getColumnCount;->extraCallback(Lo/ArticleListActivity$3;)V

    return-void
.end method

.method private final ICustomTabsCallback$Stub$Proxy()V
    .locals 2

    .line 35
    iget-object v0, p0, Lo/getColumnCount;->zzmi:Lo/ConversationDetailActivity$12;

    .line 36
    invoke-interface {v0}, Lo/ConversationDetailActivity$12;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-static {v0}, Lo/fU;->onPostMessage(Lo/ConversationDetailActivity$12;)Lo/ConversationDetailActivity$12;

    move-result-object v0

    iput-object v0, p0, Lo/getColumnCount;->zzmi:Lo/ConversationDetailActivity$12;

    :cond_0
    return-void
.end method

.method static synthetic ICustomTabsService()Lo/getColumnCount;
    .locals 1

    .line 89
    sget-object v0, Lo/getColumnCount;->zzmj:Lo/getColumnCount;

    return-object v0
.end method

.method public static asBinder()Lo/getColumnCount;
    .locals 1

    .line 88
    sget-object v0, Lo/getColumnCount;->zzmj:Lo/getColumnCount;

    return-object v0
.end method

.method private final extraCallback(J)V
    .locals 1

    .line 20
    iget v0, p0, Lo/getColumnCount;->zzij:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/getColumnCount;->zzij:I

    .line 21
    iput-wide p1, p0, Lo/getColumnCount;->zzmg:J

    return-void
.end method

.method private final extraCallback(Lo/ArticleListActivity$3;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-direct {p0}, Lo/getColumnCount;->warmup()V

    .line 63
    iget-object v0, p0, Lo/getColumnCount;->zzkx:Lo/ConversationDetailActivity$12;

    invoke-interface {v0, p1}, Lo/ConversationDetailActivity$12;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic extraCallback(Lo/getColumnCount;Ljava/lang/Iterable;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lo/getColumnCount;->onMessageChannelReady(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final getInterfaceDescriptor()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lo/getColumnCount;->zzmh:Lo/ConversationDetailActivity$6;

    invoke-virtual {v0}, Lo/ConversationDetailActivity$6;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lo/getColumnCount;->zzmh:Lo/ConversationDetailActivity$6;

    invoke-virtual {v0}, Lo/ConversationDetailActivity$6;->onPostMessage()Lo/ConversationDetailActivity$6;

    move-result-object v0

    iput-object v0, p0, Lo/getColumnCount;->zzmh:Lo/ConversationDetailActivity$6;

    .line 32
    :cond_0
    iget-object v0, p0, Lo/getColumnCount;->zzmh:Lo/ConversationDetailActivity$6;

    return-object v0
.end method

.method private final newSession()Ljava/util/Map;
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

    .line 51
    iget-object v0, p0, Lo/getColumnCount;->zziz:Lo/ConversationDetailActivity$6;

    invoke-virtual {v0}, Lo/ConversationDetailActivity$6;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lo/getColumnCount;->zziz:Lo/ConversationDetailActivity$6;

    invoke-virtual {v0}, Lo/ConversationDetailActivity$6;->onPostMessage()Lo/ConversationDetailActivity$6;

    move-result-object v0

    iput-object v0, p0, Lo/getColumnCount;->zziz:Lo/ConversationDetailActivity$6;

    .line 53
    :cond_0
    iget-object v0, p0, Lo/getColumnCount;->zziz:Lo/ConversationDetailActivity$6;

    return-object v0
.end method

.method private final onMessageChannelReady(J)V
    .locals 1

    .line 16
    iget v0, p0, Lo/getColumnCount;->zzij:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/getColumnCount;->zzij:I

    .line 17
    iput-wide p1, p0, Lo/getColumnCount;->zzkt:J

    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/getColumnCount;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lo/getColumnCount;->ICustomTabsCallback$Stub$Proxy()V

    .line 45
    iget-object v0, p0, Lo/getColumnCount;->zzmi:Lo/ConversationDetailActivity$12;

    invoke-static {p1, v0}, Lo/gb;->extraCallback(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/getColumnCount;J)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lo/getColumnCount;->onMessageChannelReady(J)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/getColumnCount;)Ljava/util/Map;
    .locals 0

    .line 96
    invoke-direct {p0}, Lo/getColumnCount;->newSession()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final onNavigationEvent(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/ArticleListActivity$3;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lo/getColumnCount;->warmup()V

    .line 66
    iget-object v0, p0, Lo/getColumnCount;->zzkx:Lo/ConversationDetailActivity$12;

    invoke-static {p1, v0}, Lo/gb;->extraCallback(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/getColumnCount;J)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lo/getColumnCount;->extraCallback(J)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/getColumnCount;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lo/getColumnCount;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method private final onPostMessage(Lo/getColumnCount;)V
    .locals 1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-direct {p0}, Lo/getColumnCount;->ICustomTabsCallback$Stub$Proxy()V

    .line 42
    iget-object v0, p0, Lo/getColumnCount;->zzmi:Lo/ConversationDetailActivity$12;

    invoke-interface {v0, p1}, Lo/ConversationDetailActivity$12;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic onPostMessage(Lo/getColumnCount;Lo/getColumnCount;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lo/getColumnCount;->onPostMessage(Lo/getColumnCount;)V

    return-void
.end method

.method public static onRelationshipValidationResult()Lo/getColumnCount$extraCallback;
    .locals 1

    .line 68
    sget-object v0, Lo/getColumnCount;->zzmj:Lo/getColumnCount;

    invoke-virtual {v0}, Lo/fU;->validateRelationship()Lo/fU$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/getColumnCount$extraCallback;

    return-object v0
.end method

.method private final warmup()V
    .locals 2

    .line 56
    iget-object v0, p0, Lo/getColumnCount;->zzkx:Lo/ConversationDetailActivity$12;

    .line 57
    invoke-interface {v0}, Lo/ConversationDetailActivity$12;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-static {v0}, Lo/fU;->onPostMessage(Lo/ConversationDetailActivity$12;)Lo/ConversationDetailActivity$12;

    move-result-object v0

    iput-object v0, p0, Lo/getColumnCount;->zzkx:Lo/ConversationDetailActivity$12;

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 24
    iget-object v0, p0, Lo/getColumnCount;->zzmh:Lo/ConversationDetailActivity$6;

    .line 25
    invoke-virtual {v0}, Lo/ConversationDetailActivity$6;->size()I

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getColumnCount;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lo/getColumnCount;->zzmi:Lo/ConversationDetailActivity$12;

    return-object v0
.end method

.method public final asInterface()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ArticleListActivity$3;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lo/getColumnCount;->zzkx:Lo/ConversationDetailActivity$12;

    return-object v0
.end method

.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 69
    const-class p2, Lo/getColumnCount;

    sget-object p3, Lo/E;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 87
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 85
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 76
    :pswitch_2
    sget-object p1, Lo/getColumnCount;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 78
    monitor-enter p2

    .line 79
    :try_start_0
    sget-object p1, Lo/getColumnCount;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 81
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/getColumnCount;->zzmj:Lo/getColumnCount;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 82
    sput-object p1, Lo/getColumnCount;->zzio:Lo/PictureAttachmentActivity$3;

    .line 83
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

    .line 75
    :pswitch_3
    sget-object p1, Lo/getColumnCount;->zzmj:Lo/getColumnCount;

    return-object p1

    :pswitch_4
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "zzij"

    aput-object v1, p1, v0

    const-string v0, "zzme"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    const-string v0, "zzmf"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "zzkt"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "zzmg"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    const-string v0, "zzmh"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    .line 72
    sget-object v0, Lo/getColumnCount$ICustomTabsCallback;->onNavigationEvent:Lo/onFinish;

    aput-object v0, p1, p3

    const/4 p3, 0x7

    const-string v0, "zzmi"

    aput-object v0, p1, p3

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const/16 p2, 0x9

    const-string p3, "zziz"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    sget-object p3, Lo/getColumnCount$onMessageChannelReady;->extraCallback:Lo/onFinish;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzkx"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lo/ArticleListActivity$3;

    aput-object p3, p1, p2

    .line 74
    sget-object p2, Lo/getColumnCount;->zzmj:Lo/getColumnCount;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0002\u0002\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0004\u1002\u0002\u0005\u1002\u0003\u00062\u0007\u001b\u00082\t\u001b"

    invoke-static {p2, p3, p1}, Lo/getColumnCount;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 71
    :pswitch_5
    new-instance p1, Lo/getColumnCount$extraCallback;

    invoke-direct {p1, v0}, Lo/getColumnCount$extraCallback;-><init>(Lo/E;)V

    return-object p1

    .line 70
    :pswitch_6
    new-instance p1, Lo/getColumnCount;

    invoke-direct {p1}, Lo/getColumnCount;-><init>()V

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

    .line 15
    iget v0, p0, Lo/getColumnCount;->zzij:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/getColumnCount;->zzme:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lo/getColumnCount;->zzmg:J

    return-wide v0
.end method

.method public final onPostMessage()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lo/getColumnCount;->zzmh:Lo/ConversationDetailActivity$6;

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final onTransact()Ljava/util/Map;
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

    .line 48
    iget-object v0, p0, Lo/getColumnCount;->zziz:Lo/ConversationDetailActivity$6;

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
