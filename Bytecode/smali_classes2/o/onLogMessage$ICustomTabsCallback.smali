.class final Lo/onLogMessage$ICustomTabsCallback;
.super Lo/onLogMessage$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onLogMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final onPostMessage:Lo/emptyMap;


# direct methods
.method constructor <init>(Lo/emptyMap;)V
    .locals 1

    const/4 v0, 0x0

    .line 321
    invoke-direct {p0, v0}, Lo/onLogMessage$extraCallback;-><init>(B)V

    if-eqz p1, :cond_0

    .line 322
    check-cast p1, Lo/emptyMap;

    iput-object p1, p0, Lo/onLogMessage$ICustomTabsCallback;->onPostMessage:Lo/emptyMap;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "status"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/onLogMessage$extraCallback;)Z
    .locals 4

    .line 332
    instance-of v0, p1, Lo/onLogMessage$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/onLogMessage$ICustomTabsCallback;->onPostMessage:Lo/emptyMap;

    check-cast p1, Lo/onLogMessage$ICustomTabsCallback;

    iget-object v2, p1, Lo/onLogMessage$ICustomTabsCallback;->onPostMessage:Lo/emptyMap;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_0

    .line 3052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 332
    iget-object v0, p0, Lo/onLogMessage$ICustomTabsCallback;->onPostMessage:Lo/emptyMap;

    .line 3516
    sget-object v2, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v0, v0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 333
    iget-object p1, p1, Lo/onLogMessage$ICustomTabsCallback;->onPostMessage:Lo/emptyMap;

    .line 4516
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object p1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v0, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    :cond_4
    return v3

    :cond_5
    return v1
.end method

.method public final extraCallback()Lo/getMinKey$ICustomTabsCallback;
    .locals 2

    .line 327
    iget-object v0, p0, Lo/onLogMessage$ICustomTabsCallback;->onPostMessage:Lo/emptyMap;

    .line 2516
    sget-object v1, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v0, v0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 327
    invoke-static {}, Lo/getMinKey$ICustomTabsCallback;->extraCallback()Lo/getMinKey$ICustomTabsCallback;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lo/onLogMessage$ICustomTabsCallback;->onPostMessage:Lo/emptyMap;

    invoke-static {v0}, Lo/getMinKey$ICustomTabsCallback;->extraCallback(Lo/emptyMap;)Lo/getMinKey$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 338
    const-class v0, Lo/onLogMessage$ICustomTabsCallback;

    .line 5119
    new-instance v1, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 338
    iget-object v0, p0, Lo/onLogMessage$ICustomTabsCallback;->onPostMessage:Lo/emptyMap;

    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
