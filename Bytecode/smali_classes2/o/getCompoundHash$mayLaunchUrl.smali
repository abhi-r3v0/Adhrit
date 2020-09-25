.class final Lo/getCompoundHash$mayLaunchUrl;
.super Lo/getMinKey$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "mayLaunchUrl"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/getCompoundHash;

.field onPostMessage:Lo/getRight$ICustomTabsCallback;


# direct methods
.method private constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lo/getCompoundHash$mayLaunchUrl;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-direct {p0}, Lo/getMinKey$onMessageChannelReady;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCompoundHash;B)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lo/getCompoundHash$mayLaunchUrl;-><init>(Lo/getCompoundHash;)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/getMinKey$onPostMessage;)Lo/getMinKey$onTransact;
    .locals 2

    .line 3130
    iget-object v0, p0, Lo/getCompoundHash$mayLaunchUrl;->onMessageChannelReady:Lo/getCompoundHash;

    iget-object v0, v0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {v0}, Lo/unionWith;->onPostMessage()V

    .line 3136
    iget-object v0, p0, Lo/getCompoundHash$mayLaunchUrl;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->notify(Lo/getCompoundHash;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3137
    new-instance v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    iget-object v1, p0, Lo/getCompoundHash$mayLaunchUrl;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-direct {v0, v1, p1, p0}, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;-><init>(Lo/getCompoundHash;Lo/getMinKey$onPostMessage;Lo/getCompoundHash$mayLaunchUrl;)V

    return-object v0

    .line 3511
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Channel is terminated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback()Lo/saveTrackedQueryKeys;
    .locals 1

    .line 1298
    iget-object v0, p0, Lo/getCompoundHash$mayLaunchUrl;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->mayLaunchUrl(Lo/getCompoundHash;)Lo/saveTrackedQueryKeys;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Lo/setTransactionSuccessful;Lo/getMinKey$ICustomTabsCallback$Stub;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1145
    iget-object v0, p0, Lo/getCompoundHash$mayLaunchUrl;->onMessageChannelReady:Lo/getCompoundHash;

    const-string v1, "updateBalancingState()"

    invoke-static {v0, v1}, Lo/getCompoundHash;->onPostMessage(Lo/getCompoundHash;Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lo/getCompoundHash$mayLaunchUrl;->onMessageChannelReady:Lo/getCompoundHash;

    iget-object v0, v0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v1, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;

    invoke-direct {v1, p0, p2, p1}, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;-><init>(Lo/getCompoundHash$mayLaunchUrl;Lo/getMinKey$ICustomTabsCallback$Stub;Lo/setTransactionSuccessful;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "newPicker"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "newState"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage()Lo/unionWith;
    .locals 1

    .line 1288
    iget-object v0, p0, Lo/getCompoundHash$mayLaunchUrl;->onMessageChannelReady:Lo/getCompoundHash;

    iget-object v0, v0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    return-object v0
.end method
