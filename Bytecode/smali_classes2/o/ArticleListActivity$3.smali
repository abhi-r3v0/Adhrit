.class public final Lo/ArticleListActivity$3;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ArticleListActivity$3$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/ArticleListActivity$3;",
        "Lo/ArticleListActivity$3$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/ArticleListActivity$3;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlu:Lo/ConversationDetailActivity$13;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ConversationDetailActivity$13<",
            "Ljava/lang/Integer;",
            "Lo/ArticleListActivity$4;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlv:Lo/ArticleListActivity$3;


# instance fields
.field private zzij:I

.field private zzjz:Ljava/lang/String;

.field private zzlt:Lo/ConversationDetailActivity$10;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lo/ArticleListActivity$2;

    invoke-direct {v0}, Lo/ArticleListActivity$2;-><init>()V

    sput-object v0, Lo/ArticleListActivity$3;->zzlu:Lo/ConversationDetailActivity$13;

    .line 49
    new-instance v0, Lo/ArticleListActivity$3;

    invoke-direct {v0}, Lo/ArticleListActivity$3;-><init>()V

    .line 50
    sput-object v0, Lo/ArticleListActivity$3;->zzlv:Lo/ArticleListActivity$3;

    .line 51
    const-class v1, Lo/ArticleListActivity$3;

    invoke-static {v1, v0}, Lo/fU;->onMessageChannelReady(Ljava/lang/Class;Lo/fU;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/ArticleListActivity$3;->zzjz:Ljava/lang/String;

    .line 3
    invoke-static {}, Lo/ArticleListActivity$3;->cancelAll()Lo/ConversationDetailActivity$10;

    move-result-object v0

    iput-object v0, p0, Lo/ArticleListActivity$3;->zzlt:Lo/ConversationDetailActivity$10;

    return-void
.end method

.method private final ICustomTabsCallback(Lo/ArticleListActivity$4;)V
    .locals 2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v0, p0, Lo/ArticleListActivity$3;->zzlt:Lo/ConversationDetailActivity$10;

    .line 14
    invoke-interface {v0}, Lo/ConversationDetailActivity$10;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_1

    .line 17
    invoke-interface {v0}, Lo/ConversationDetailActivity$10;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 20
    :goto_0
    invoke-interface {v0, v1}, Lo/ConversationDetailActivity$10;->onNavigationEvent(I)Lo/ConversationDetailActivity$10;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lo/ArticleListActivity$3;->zzlt:Lo/ConversationDetailActivity$10;

    .line 22
    :cond_1
    iget-object v0, p0, Lo/ArticleListActivity$3;->zzlt:Lo/ConversationDetailActivity$10;

    invoke-virtual {p1}, Lo/ArticleListActivity$4;->onMessageChannelReady()I

    move-result p1

    invoke-interface {v0, p1}, Lo/ConversationDetailActivity$10;->onMessageChannelReady(I)V

    return-void
.end method

.method private final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v0, p0, Lo/ArticleListActivity$3;->zzij:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ArticleListActivity$3;->zzij:I

    .line 7
    iput-object p1, p0, Lo/ArticleListActivity$3;->zzjz:Ljava/lang/String;

    return-void
.end method

.method static synthetic extraCallback(Lo/ArticleListActivity$3;Lo/ArticleListActivity$4;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lo/ArticleListActivity$3;->ICustomTabsCallback(Lo/ArticleListActivity$4;)V

    return-void
.end method

.method public static onNavigationEvent()Lo/ArticleListActivity$3$onMessageChannelReady;
    .locals 1

    .line 24
    sget-object v0, Lo/ArticleListActivity$3;->zzlv:Lo/ArticleListActivity$3;

    invoke-virtual {v0}, Lo/fU;->validateRelationship()Lo/fU$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/ArticleListActivity$3$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic onPostMessage()Lo/ArticleListActivity$3;
    .locals 1

    .line 45
    sget-object v0, Lo/ArticleListActivity$3;->zzlv:Lo/ArticleListActivity$3;

    return-object v0
.end method

.method static synthetic onPostMessage(Lo/ArticleListActivity$3;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lo/ArticleListActivity$3;->extraCallback(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/ArticleListActivity$4;
    .locals 2

    .line 10
    sget-object p1, Lo/ArticleListActivity$3;->zzlu:Lo/ConversationDetailActivity$13;

    iget-object v0, p0, Lo/ArticleListActivity$3;->zzlt:Lo/ConversationDetailActivity$10;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/ConversationDetailActivity$10;->extraCallback(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/ConversationDetailActivity$13;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ArticleListActivity$4;

    return-object p1
.end method

.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object p2, Lo/onMenuItemActionExpand;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 44
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 42
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_2
    sget-object p1, Lo/ArticleListActivity$3;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 35
    const-class p2, Lo/ArticleListActivity$3;

    monitor-enter p2

    .line 36
    :try_start_0
    sget-object p1, Lo/ArticleListActivity$3;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 38
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/ArticleListActivity$3;->zzlv:Lo/ArticleListActivity$3;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 39
    sput-object p1, Lo/ArticleListActivity$3;->zzio:Lo/PictureAttachmentActivity$3;

    .line 40
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

    .line 32
    :pswitch_3
    sget-object p1, Lo/ArticleListActivity$3;->zzlv:Lo/ArticleListActivity$3;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zzjz"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "zzlt"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 29
    invoke-static {}, Lo/ArticleListActivity$4;->ICustomTabsCallback()Lo/ConversationDetailActivity$11;

    move-result-object p3

    aput-object p3, p1, p2

    .line 31
    sget-object p2, Lo/ArticleListActivity$3;->zzlv:Lo/ArticleListActivity$3;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001e"

    invoke-static {p2, p3, p1}, Lo/ArticleListActivity$3;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_5
    new-instance p1, Lo/ArticleListActivity$3$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/ArticleListActivity$3$onMessageChannelReady;-><init>(Lo/ArticleListActivity$2;)V

    return-object p1

    .line 26
    :pswitch_6
    new-instance p1, Lo/ArticleListActivity$3;

    invoke-direct {p1}, Lo/ArticleListActivity$3;-><init>()V

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

.method public final onMessageChannelReady()I
    .locals 1

    .line 9
    iget-object v0, p0, Lo/ArticleListActivity$3;->zzlt:Lo/ConversationDetailActivity$10;

    invoke-interface {v0}, Lo/ConversationDetailActivity$10;->size()I

    move-result v0

    return v0
.end method
