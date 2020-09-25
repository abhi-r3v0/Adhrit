.class public final Lo/ArticleDetailActivity;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ArticleDetailActivity$onNavigationEvent;,
        Lo/ArticleDetailActivity$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/ArticleDetailActivity;",
        "Lo/ArticleDetailActivity$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/ArticleDetailActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzja:Lo/ArticleDetailActivity;


# instance fields
.field private zzij:I

.field private zzit:Ljava/lang/String;

.field private zziu:Ljava/lang/String;

.field private zziv:Lo/d$a;

.field private zziw:Lo/dA;

.field private zzix:Lo/ga;

.field private zziy:I

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lo/ArticleDetailActivity;

    invoke-direct {v0}, Lo/ArticleDetailActivity;-><init>()V

    .line 61
    sput-object v0, Lo/ArticleDetailActivity;->zzja:Lo/ArticleDetailActivity;

    .line 62
    const-class v1, Lo/ArticleDetailActivity;

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

    iput-object v0, p0, Lo/ArticleDetailActivity;->zziz:Lo/ConversationDetailActivity$6;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lo/ArticleDetailActivity;->zzit:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lo/ArticleDetailActivity;->zziu:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ArticleDetailActivity;Lo/onCreateLoader;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lo/ArticleDetailActivity;->onMessageChannelReady(Lo/onCreateLoader;)V

    return-void
.end method

.method public static ICustomTabsCallback$Stub()Lo/ArticleDetailActivity$onNavigationEvent;
    .locals 1

    .line 32
    sget-object v0, Lo/ArticleDetailActivity;->zzja:Lo/ArticleDetailActivity;

    invoke-virtual {v0}, Lo/fU;->validateRelationship()Lo/fU$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/ArticleDetailActivity$onNavigationEvent;

    return-object v0
.end method

.method static synthetic asInterface()Lo/ArticleDetailActivity;
    .locals 1

    .line 54
    sget-object v0, Lo/ArticleDetailActivity;->zzja:Lo/ArticleDetailActivity;

    return-object v0
.end method

.method private final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Lo/ArticleDetailActivity;->zzij:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ArticleDetailActivity;->zzij:I

    .line 10
    iput-object p1, p0, Lo/ArticleDetailActivity;->zzit:Ljava/lang/String;

    return-void
.end method

.method static synthetic extraCallback(Lo/ArticleDetailActivity;Lo/d$a;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/ArticleDetailActivity;->extraCallback(Lo/d$a;)V

    return-void
.end method

.method private final extraCallback(Lo/d$a;)V
    .locals 0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iput-object p1, p0, Lo/ArticleDetailActivity;->zziv:Lo/d$a;

    .line 21
    iget p1, p0, Lo/ArticleDetailActivity;->zzij:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lo/ArticleDetailActivity;->zzij:I

    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget v0, p0, Lo/ArticleDetailActivity;->zzij:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/ArticleDetailActivity;->zzij:I

    .line 15
    iput-object p1, p0, Lo/ArticleDetailActivity;->zziu:Ljava/lang/String;

    return-void
.end method

.method private final onMessageChannelReady(Lo/onCreateLoader;)V
    .locals 0

    .line 24
    invoke-virtual {p1}, Lo/onCreateLoader;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/ArticleDetailActivity;->zziy:I

    .line 25
    iget p1, p0, Lo/ArticleDetailActivity;->zzij:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lo/ArticleDetailActivity;->zzij:I

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/ArticleDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lo/ArticleDetailActivity;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/ArticleDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 59
    invoke-direct {p0}, Lo/ArticleDetailActivity;->onRelationshipValidationResult()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/ArticleDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lo/ArticleDetailActivity;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method private final onRelationshipValidationResult()Ljava/util/Map;
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

    .line 28
    iget-object v0, p0, Lo/ArticleDetailActivity;->zziz:Lo/ConversationDetailActivity$6;

    invoke-virtual {v0}, Lo/ConversationDetailActivity$6;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lo/ArticleDetailActivity;->zziz:Lo/ConversationDetailActivity$6;

    invoke-virtual {v0}, Lo/ConversationDetailActivity$6;->onPostMessage()Lo/ConversationDetailActivity$6;

    move-result-object v0

    iput-object v0, p0, Lo/ArticleDetailActivity;->zziz:Lo/ConversationDetailActivity$6;

    .line 30
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity;->zziz:Lo/ConversationDetailActivity$6;

    return-object v0
.end method

.method public static onTransact()Lo/ArticleDetailActivity;
    .locals 1

    .line 53
    sget-object v0, Lo/ArticleDetailActivity;->zzja:Lo/ArticleDetailActivity;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/d$a;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/ArticleDetailActivity;->zziv:Lo/d$a;

    if-nez v0, :cond_0

    invoke-static {}, Lo/d$a;->onMessageChannelReady()Lo/d$a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 33
    sget-object p2, Lo/h;->onNavigationEvent:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 52
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 50
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_2
    sget-object p1, Lo/ArticleDetailActivity;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 43
    const-class p2, Lo/ArticleDetailActivity;

    monitor-enter p2

    .line 44
    :try_start_0
    sget-object p1, Lo/ArticleDetailActivity;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/ArticleDetailActivity;->zzja:Lo/ArticleDetailActivity;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 47
    sput-object p1, Lo/ArticleDetailActivity;->zzio:Lo/PictureAttachmentActivity$3;

    .line 48
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

    .line 40
    :pswitch_3
    sget-object p1, Lo/ArticleDetailActivity;->zzja:Lo/ArticleDetailActivity;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zzit"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "zziu"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zziv"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zziw"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zziy"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 37
    invoke-static {}, Lo/onCreateLoader;->extraCallback()Lo/ConversationDetailActivity$11;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zziz"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    sget-object p3, Lo/ArticleDetailActivity$onPostMessage;->onPostMessage:Lo/onFinish;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzix"

    aput-object p3, p1, p2

    .line 39
    sget-object p2, Lo/ArticleDetailActivity;->zzja:Lo/ArticleDetailActivity;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0001\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u100c\u0005\u00062\u0007\u1009\u0004"

    invoke-static {p2, p3, p1}, Lo/ArticleDetailActivity;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_5
    new-instance p1, Lo/ArticleDetailActivity$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/ArticleDetailActivity$onNavigationEvent;-><init>(Lo/h;)V

    return-object p1

    .line 34
    :pswitch_6
    new-instance p1, Lo/ArticleDetailActivity;

    invoke-direct {p1}, Lo/ArticleDetailActivity;-><init>()V

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

    .line 23
    iget v0, p0, Lo/ArticleDetailActivity;->zzij:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 17
    iget v0, p0, Lo/ArticleDetailActivity;->zzij:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 7
    iget v0, p0, Lo/ArticleDetailActivity;->zzij:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 12
    iget v0, p0, Lo/ArticleDetailActivity;->zzij:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
