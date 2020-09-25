.class public final Lo/onMenuItemActionCollapse;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onMenuItemActionCollapse$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/onMenuItemActionCollapse;",
        "Lo/onMenuItemActionCollapse$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/onMenuItemActionCollapse;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzls:Lo/onMenuItemActionCollapse;


# instance fields
.field private zzij:I

.field private zzln:Lo/ArticleDetailActivity;

.field private zzlo:Lo/getColumnCount;

.field private zzlp:Lo/ArticleDetailActivity$2$1$1;

.field private zzlq:Lo/onPageFinished;

.field private zzlr:Lo/ez;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lo/onMenuItemActionCollapse;

    invoke-direct {v0}, Lo/onMenuItemActionCollapse;-><init>()V

    .line 53
    sput-object v0, Lo/onMenuItemActionCollapse;->zzls:Lo/onMenuItemActionCollapse;

    .line 54
    const-class v1, Lo/onMenuItemActionCollapse;

    invoke-static {v1, v0}, Lo/fU;->onMessageChannelReady(Ljava/lang/Class;Lo/fU;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/onMenuItemActionCollapse;Lo/ArticleDetailActivity$2$1$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lo/onMenuItemActionCollapse;->onNavigationEvent(Lo/ArticleDetailActivity$2$1$1;)V

    return-void
.end method

.method private final ICustomTabsCallback(Lo/onPageFinished;)V
    .locals 0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iput-object p1, p0, Lo/onMenuItemActionCollapse;->zzlq:Lo/onPageFinished;

    .line 25
    iget p1, p0, Lo/onMenuItemActionCollapse;->zzij:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lo/onMenuItemActionCollapse;->zzij:I

    return-void
.end method

.method static synthetic asInterface()Lo/onMenuItemActionCollapse;
    .locals 1

    .line 47
    sget-object v0, Lo/onMenuItemActionCollapse;->zzls:Lo/onMenuItemActionCollapse;

    return-object v0
.end method

.method private final extraCallback(Lo/ArticleDetailActivity;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iput-object p1, p0, Lo/onMenuItemActionCollapse;->zzln:Lo/ArticleDetailActivity;

    .line 7
    iget p1, p0, Lo/onMenuItemActionCollapse;->zzij:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/onMenuItemActionCollapse;->zzij:I

    return-void
.end method

.method private final onMessageChannelReady(Lo/getColumnCount;)V
    .locals 0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lo/onMenuItemActionCollapse;->zzlo:Lo/getColumnCount;

    .line 13
    iget p1, p0, Lo/onMenuItemActionCollapse;->zzij:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo/onMenuItemActionCollapse;->zzij:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/onMenuItemActionCollapse;Lo/getColumnCount;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lo/onMenuItemActionCollapse;->onMessageChannelReady(Lo/getColumnCount;)V

    return-void
.end method

.method private final onNavigationEvent(Lo/ArticleDetailActivity$2$1$1;)V
    .locals 0

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iput-object p1, p0, Lo/onMenuItemActionCollapse;->zzlp:Lo/ArticleDetailActivity$2$1$1;

    .line 19
    iget p1, p0, Lo/onMenuItemActionCollapse;->zzij:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lo/onMenuItemActionCollapse;->zzij:I

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/onMenuItemActionCollapse;Lo/ArticleDetailActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lo/onMenuItemActionCollapse;->extraCallback(Lo/ArticleDetailActivity;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/onMenuItemActionCollapse;Lo/onPageFinished;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lo/onMenuItemActionCollapse;->ICustomTabsCallback(Lo/onPageFinished;)V

    return-void
.end method

.method public static onRelationshipValidationResult()Lo/onMenuItemActionCollapse$onPostMessage;
    .locals 1

    .line 27
    sget-object v0, Lo/onMenuItemActionCollapse;->zzls:Lo/onMenuItemActionCollapse;

    invoke-virtual {v0}, Lo/fU;->validateRelationship()Lo/fU$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/onMenuItemActionCollapse$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getColumnCount;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/onMenuItemActionCollapse;->zzlo:Lo/getColumnCount;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getColumnCount;->asBinder()Lo/getColumnCount;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()Lo/onPageFinished;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/onMenuItemActionCollapse;->zzlq:Lo/onPageFinished;

    if-nez v0, :cond_0

    invoke-static {}, Lo/onPageFinished;->asInterface()Lo/onPageFinished;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final asBinder()Lo/ArticleDetailActivity$2$1$1;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/onMenuItemActionCollapse;->zzlp:Lo/ArticleDetailActivity$2$1$1;

    if-nez v0, :cond_0

    invoke-static {}, Lo/ArticleDetailActivity$2$1$1;->postMessage()Lo/ArticleDetailActivity$2$1$1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 28
    sget-object p2, Lo/ArticleListActivity;->onMessageChannelReady:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 46
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 44
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_2
    sget-object p1, Lo/onMenuItemActionCollapse;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 37
    const-class p2, Lo/onMenuItemActionCollapse;

    monitor-enter p2

    .line 38
    :try_start_0
    sget-object p1, Lo/onMenuItemActionCollapse;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/onMenuItemActionCollapse;->zzls:Lo/onMenuItemActionCollapse;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 41
    sput-object p1, Lo/onMenuItemActionCollapse;->zzio:Lo/PictureAttachmentActivity$3;

    .line 42
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

    .line 34
    :pswitch_3
    sget-object p1, Lo/onMenuItemActionCollapse;->zzls:Lo/onMenuItemActionCollapse;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zzln"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "zzlo"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzlp"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzlq"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzlr"

    aput-object p3, p1, p2

    .line 33
    sget-object p2, Lo/onMenuItemActionCollapse;->zzls:Lo/onMenuItemActionCollapse;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004"

    invoke-static {p2, p3, p1}, Lo/onMenuItemActionCollapse;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_5
    new-instance p1, Lo/onMenuItemActionCollapse$onPostMessage;

    invoke-direct {p1, p3}, Lo/onMenuItemActionCollapse$onPostMessage;-><init>(Lo/ArticleListActivity;)V

    return-object p1

    .line 29
    :pswitch_6
    new-instance p1, Lo/onMenuItemActionCollapse;

    invoke-direct {p1}, Lo/onMenuItemActionCollapse;-><init>()V

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

.method public final extraCallback()Lo/ArticleDetailActivity;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/onMenuItemActionCollapse;->zzln:Lo/ArticleDetailActivity;

    if-nez v0, :cond_0

    invoke-static {}, Lo/ArticleDetailActivity;->onTransact()Lo/ArticleDetailActivity;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final onMessageChannelReady()Z
    .locals 2

    .line 3
    iget v0, p0, Lo/onMenuItemActionCollapse;->zzij:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 15
    iget v0, p0, Lo/onMenuItemActionCollapse;->zzij:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 9
    iget v0, p0, Lo/onMenuItemActionCollapse;->zzij:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTransact()Z
    .locals 1

    .line 21
    iget v0, p0, Lo/onMenuItemActionCollapse;->zzij:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
