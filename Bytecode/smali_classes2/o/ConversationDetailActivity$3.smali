.class final Lo/ConversationDetailActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aI;


# static fields
.field private static final onPostMessage:Lo/ConversationDetailActivity$9;


# instance fields
.field private final onNavigationEvent:Lo/ConversationDetailActivity$9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lo/ConversationDetailActivity$4;

    invoke-direct {v0}, Lo/ConversationDetailActivity$4;-><init>()V

    sput-object v0, Lo/ConversationDetailActivity$3;->onPostMessage:Lo/ConversationDetailActivity$9;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    new-instance v0, Lo/onTick;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/ConversationDetailActivity$9;

    .line 3
    invoke-static {}, Lo/ax;->onPostMessage()Lo/ax;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lo/ConversationDetailActivity$3;->ICustomTabsCallback()Lo/ConversationDetailActivity$9;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lo/onTick;-><init>([Lo/ConversationDetailActivity$9;)V

    .line 4
    invoke-direct {p0, v0}, Lo/ConversationDetailActivity$3;-><init>(Lo/ConversationDetailActivity$9;)V

    return-void
.end method

.method private constructor <init>(Lo/ConversationDetailActivity$9;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 7
    invoke-static {p1, v0}, Lo/aw;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ConversationDetailActivity$9;

    iput-object p1, p0, Lo/ConversationDetailActivity$3;->onNavigationEvent:Lo/ConversationDetailActivity$9;

    return-void
.end method

.method private static ICustomTabsCallback()Lo/ConversationDetailActivity$9;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 54
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 55
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ConversationDetailActivity$9;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    sget-object v0, Lo/ConversationDetailActivity$3;->onPostMessage:Lo/ConversationDetailActivity$9;

    return-object v0
.end method

.method private static onNavigationEvent(Lo/InterstitialActivity;)Z
    .locals 1

    .line 53
    invoke-interface {p0}, Lo/InterstitialActivity;->onMessageChannelReady()I

    move-result p0

    sget v0, Lo/aH;->onMessageChannelReady:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Class;)Lo/C;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/C<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lo/aM;->onPostMessage(Ljava/lang/Class;)V

    .line 10
    iget-object v0, p0, Lo/ConversationDetailActivity$3;->onNavigationEvent:Lo/ConversationDetailActivity$9;

    invoke-interface {v0, p1}, Lo/ConversationDetailActivity$9;->onMessageChannelReady(Ljava/lang/Class;)Lo/InterstitialActivity;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Lo/InterstitialActivity;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    const-class v0, Lo/fU;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-static {}, Lo/aM;->ICustomTabsCallback()Lo/onShowCustomView;

    move-result-object p1

    .line 14
    invoke-static {}, Lo/ar;->onPostMessage()Lo/gg;

    move-result-object v0

    .line 15
    invoke-interface {v2}, Lo/InterstitialActivity;->extraCallback()Lo/aD;

    move-result-object v1

    .line 16
    invoke-static {p1, v0, v1}, Lo/InterstitialActivity$1;->extraCallback(Lo/onShowCustomView;Lo/gg;Lo/aD;)Lo/InterstitialActivity$1;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    invoke-static {}, Lo/aM;->extraCallback()Lo/onShowCustomView;

    move-result-object p1

    .line 18
    invoke-static {}, Lo/ar;->ICustomTabsCallback()Lo/gg;

    move-result-object v0

    .line 19
    invoke-interface {v2}, Lo/InterstitialActivity;->extraCallback()Lo/aD;

    move-result-object v1

    .line 20
    invoke-static {p1, v0, v1}, Lo/InterstitialActivity$1;->extraCallback(Lo/onShowCustomView;Lo/gg;Lo/aD;)Lo/InterstitialActivity$1;

    move-result-object p1

    return-object p1

    .line 22
    :cond_1
    const-class v0, Lo/fU;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {v2}, Lo/ConversationDetailActivity$3;->onNavigationEvent(Lo/InterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-static {}, Lo/aG;->onPostMessage()Lo/InterstitialActivity$2;

    move-result-object v3

    .line 26
    invoke-static {}, Lo/ConversationDetailActivity$19;->onMessageChannelReady()Lo/ConversationDetailActivity$19;

    move-result-object v4

    .line 27
    invoke-static {}, Lo/aM;->ICustomTabsCallback()Lo/onShowCustomView;

    move-result-object v5

    .line 28
    invoke-static {}, Lo/ar;->onPostMessage()Lo/gg;

    move-result-object v6

    .line 29
    invoke-static {}, Lo/ConversationDetailActivity$7;->onNavigationEvent()Lo/ConversationDetailActivity$5;

    move-result-object v7

    move-object v1, p1

    .line 30
    invoke-static/range {v1 .. v7}, Lo/aE;->onPostMessage(Ljava/lang/Class;Lo/InterstitialActivity;Lo/InterstitialActivity$2;Lo/ConversationDetailActivity$19;Lo/onShowCustomView;Lo/gg;Lo/ConversationDetailActivity$5;)Lo/aE;

    move-result-object p1

    return-object p1

    .line 32
    :cond_2
    invoke-static {}, Lo/aG;->onPostMessage()Lo/InterstitialActivity$2;

    move-result-object v3

    .line 33
    invoke-static {}, Lo/ConversationDetailActivity$19;->onMessageChannelReady()Lo/ConversationDetailActivity$19;

    move-result-object v4

    .line 34
    invoke-static {}, Lo/aM;->ICustomTabsCallback()Lo/onShowCustomView;

    move-result-object v5

    const/4 v6, 0x0

    .line 35
    invoke-static {}, Lo/ConversationDetailActivity$7;->onNavigationEvent()Lo/ConversationDetailActivity$5;

    move-result-object v7

    move-object v1, p1

    .line 36
    invoke-static/range {v1 .. v7}, Lo/aE;->onPostMessage(Ljava/lang/Class;Lo/InterstitialActivity;Lo/InterstitialActivity$2;Lo/ConversationDetailActivity$19;Lo/onShowCustomView;Lo/gg;Lo/ConversationDetailActivity$5;)Lo/aE;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3
    invoke-static {v2}, Lo/ConversationDetailActivity$3;->onNavigationEvent(Lo/InterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-static {}, Lo/aG;->extraCallback()Lo/InterstitialActivity$2;

    move-result-object v3

    .line 41
    invoke-static {}, Lo/ConversationDetailActivity$19;->ICustomTabsCallback()Lo/ConversationDetailActivity$19;

    move-result-object v4

    .line 42
    invoke-static {}, Lo/aM;->extraCallback()Lo/onShowCustomView;

    move-result-object v5

    .line 43
    invoke-static {}, Lo/ar;->ICustomTabsCallback()Lo/gg;

    move-result-object v6

    .line 44
    invoke-static {}, Lo/ConversationDetailActivity$7;->onPostMessage()Lo/ConversationDetailActivity$5;

    move-result-object v7

    move-object v1, p1

    .line 45
    invoke-static/range {v1 .. v7}, Lo/aE;->onPostMessage(Ljava/lang/Class;Lo/InterstitialActivity;Lo/InterstitialActivity$2;Lo/ConversationDetailActivity$19;Lo/onShowCustomView;Lo/gg;Lo/ConversationDetailActivity$5;)Lo/aE;

    move-result-object p1

    return-object p1

    .line 47
    :cond_4
    invoke-static {}, Lo/aG;->extraCallback()Lo/InterstitialActivity$2;

    move-result-object v3

    .line 48
    invoke-static {}, Lo/ConversationDetailActivity$19;->ICustomTabsCallback()Lo/ConversationDetailActivity$19;

    move-result-object v4

    .line 49
    invoke-static {}, Lo/aM;->onNavigationEvent()Lo/onShowCustomView;

    move-result-object v5

    const/4 v6, 0x0

    .line 50
    invoke-static {}, Lo/ConversationDetailActivity$7;->onPostMessage()Lo/ConversationDetailActivity$5;

    move-result-object v7

    move-object v1, p1

    .line 51
    invoke-static/range {v1 .. v7}, Lo/aE;->onPostMessage(Ljava/lang/Class;Lo/InterstitialActivity;Lo/InterstitialActivity$2;Lo/ConversationDetailActivity$19;Lo/onShowCustomView;Lo/gg;Lo/ConversationDetailActivity$5;)Lo/aE;

    move-result-object p1

    return-object p1
.end method
