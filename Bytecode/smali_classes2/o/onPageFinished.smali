.class public final Lo/onPageFinished;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onPageFinished$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/onPageFinished;",
        "Lo/onPageFinished$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/onPageFinished;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzke:Lo/onPageFinished;


# instance fields
.field private zzij:I

.field private zzjz:Ljava/lang/String;

.field private zzka:Lo/shouldOverrideUrlLoading;

.field private zzkb:Lo/ConversationDetailActivity$12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ConversationDetailActivity$12<",
            "Lo/l;",
            ">;"
        }
    .end annotation
.end field

.field private zzkc:Lo/ConversationDetailActivity$12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ConversationDetailActivity$12<",
            "Lo/bc;",
            ">;"
        }
    .end annotation
.end field

.field private zzkd:Lo/ConversationDetailActivity$12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ConversationDetailActivity$12<",
            "Lo/ArticleDetailActivity$1$1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lo/onPageFinished;

    invoke-direct {v0}, Lo/onPageFinished;-><init>()V

    .line 63
    sput-object v0, Lo/onPageFinished;->zzke:Lo/onPageFinished;

    .line 64
    const-class v1, Lo/onPageFinished;

    invoke-static {v1, v0}, Lo/fU;->onMessageChannelReady(Ljava/lang/Class;Lo/fU;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/onPageFinished;->zzjz:Ljava/lang/String;

    .line 3
    invoke-static {}, Lo/onPageFinished;->INotificationSideChannel()Lo/ConversationDetailActivity$12;

    move-result-object v0

    iput-object v0, p0, Lo/onPageFinished;->zzkb:Lo/ConversationDetailActivity$12;

    .line 4
    invoke-static {}, Lo/onPageFinished;->INotificationSideChannel()Lo/ConversationDetailActivity$12;

    move-result-object v0

    iput-object v0, p0, Lo/onPageFinished;->zzkc:Lo/ConversationDetailActivity$12;

    .line 5
    invoke-static {}, Lo/onPageFinished;->INotificationSideChannel()Lo/ConversationDetailActivity$12;

    move-result-object v0

    iput-object v0, p0, Lo/onPageFinished;->zzkd:Lo/ConversationDetailActivity$12;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Lo/onPageFinished;->zzij:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/onPageFinished;->zzij:I

    .line 10
    iput-object p1, p0, Lo/onPageFinished;->zzjz:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/onPageFinished;Lo/bc;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lo/onPageFinished;->onMessageChannelReady(Lo/bc;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub()Lo/onPageFinished;
    .locals 1

    .line 57
    sget-object v0, Lo/onPageFinished;->zzke:Lo/onPageFinished;

    return-object v0
.end method

.method public static asInterface()Lo/onPageFinished;
    .locals 1

    .line 56
    sget-object v0, Lo/onPageFinished;->zzke:Lo/onPageFinished;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/onPageFinished;Lo/l;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lo/onPageFinished;->onPostMessage(Lo/l;)V

    return-void
.end method

.method private final onMessageChannelReady(Lo/bc;)V
    .locals 2

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v0, p0, Lo/onPageFinished;->zzkc:Lo/ConversationDetailActivity$12;

    .line 31
    invoke-interface {v0}, Lo/ConversationDetailActivity$12;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-static {v0}, Lo/fU;->onPostMessage(Lo/ConversationDetailActivity$12;)Lo/ConversationDetailActivity$12;

    move-result-object v0

    iput-object v0, p0, Lo/onPageFinished;->zzkc:Lo/ConversationDetailActivity$12;

    .line 34
    :cond_0
    iget-object v0, p0, Lo/onPageFinished;->zzkc:Lo/ConversationDetailActivity$12;

    invoke-interface {v0, p1}, Lo/ConversationDetailActivity$12;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/onPageFinished;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lo/onPageFinished;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/onPageFinished;Lo/shouldOverrideUrlLoading;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lo/onPageFinished;->onPostMessage(Lo/shouldOverrideUrlLoading;)V

    return-void
.end method

.method private final onPostMessage(Lo/l;)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iget-object v0, p0, Lo/onPageFinished;->zzkb:Lo/ConversationDetailActivity$12;

    .line 22
    invoke-interface {v0}, Lo/ConversationDetailActivity$12;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-static {v0}, Lo/fU;->onPostMessage(Lo/ConversationDetailActivity$12;)Lo/ConversationDetailActivity$12;

    move-result-object v0

    iput-object v0, p0, Lo/onPageFinished;->zzkb:Lo/ConversationDetailActivity$12;

    .line 25
    :cond_0
    iget-object v0, p0, Lo/onPageFinished;->zzkb:Lo/ConversationDetailActivity$12;

    invoke-interface {v0, p1}, Lo/ConversationDetailActivity$12;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final onPostMessage(Lo/shouldOverrideUrlLoading;)V
    .locals 0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iput-object p1, p0, Lo/onPageFinished;->zzka:Lo/shouldOverrideUrlLoading;

    .line 16
    iget p1, p0, Lo/onPageFinished;->zzij:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo/onPageFinished;->zzij:I

    return-void
.end method

.method public static onTransact()Lo/onPageFinished$onPostMessage;
    .locals 1

    .line 36
    sget-object v0, Lo/onPageFinished;->zzke:Lo/onPageFinished;

    invoke-virtual {v0}, Lo/fU;->validateRelationship()Lo/fU$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/onPageFinished$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/shouldOverrideUrlLoading;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/onPageFinished;->zzka:Lo/shouldOverrideUrlLoading;

    if-nez v0, :cond_0

    invoke-static {}, Lo/shouldOverrideUrlLoading;->onMessageChannelReady()Lo/shouldOverrideUrlLoading;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 18
    iget-object v0, p0, Lo/onPageFinished;->zzkb:Lo/ConversationDetailActivity$12;

    invoke-interface {v0}, Lo/ConversationDetailActivity$12;->size()I

    move-result v0

    return v0
.end method

.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 37
    sget-object p2, Lo/shouldInterceptRequest;->onPostMessage:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 55
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 53
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 44
    :pswitch_2
    sget-object p1, Lo/onPageFinished;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 46
    const-class p2, Lo/onPageFinished;

    monitor-enter p2

    .line 47
    :try_start_0
    sget-object p1, Lo/onPageFinished;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/onPageFinished;->zzke:Lo/onPageFinished;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 50
    sput-object p1, Lo/onPageFinished;->zzio:Lo/PictureAttachmentActivity$3;

    .line 51
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

    .line 43
    :pswitch_3
    sget-object p1, Lo/onPageFinished;->zzke:Lo/onPageFinished;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zzjz"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "zzkb"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 40
    const-class p3, Lo/l;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzka"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzkc"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lo/bc;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzkd"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lo/ArticleDetailActivity$1$1;

    aput-object p3, p1, p2

    .line 42
    sget-object p2, Lo/onPageFinished;->zzke:Lo/onPageFinished;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0003\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1009\u0001\u0004\u001b\u0005\u001b"

    invoke-static {p2, p3, p1}, Lo/onPageFinished;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_5
    new-instance p1, Lo/onPageFinished$onPostMessage;

    invoke-direct {p1, p3}, Lo/onPageFinished$onPostMessage;-><init>(Lo/shouldInterceptRequest;)V

    return-object p1

    .line 38
    :pswitch_6
    new-instance p1, Lo/onPageFinished;

    invoke-direct {p1}, Lo/onPageFinished;-><init>()V

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

.method public final onMessageChannelReady()Z
    .locals 1

    .line 12
    iget v0, p0, Lo/onPageFinished;->zzij:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 27
    iget-object v0, p0, Lo/onPageFinished;->zzkc:Lo/ConversationDetailActivity$12;

    invoke-interface {v0}, Lo/ConversationDetailActivity$12;->size()I

    move-result v0

    return v0
.end method

.method public final onPostMessage()Z
    .locals 2

    .line 7
    iget v0, p0, Lo/onPageFinished;->zzij:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
