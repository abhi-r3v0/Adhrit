.class final Lo/initRequest;
.super Lo/onResponse;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/initRequest$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/onResponse$ICustomTabsCallback;

.field private final onPostMessage:Lo/onResponse$onMessageChannelReady;


# direct methods
.method synthetic constructor <init>(Lo/onResponse$onMessageChannelReady;Lo/onResponse$ICustomTabsCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/onResponse;-><init>()V

    .line 2
    iput-object p1, p0, Lo/initRequest;->onPostMessage:Lo/onResponse$onMessageChannelReady;

    .line 3
    iput-object p2, p0, Lo/initRequest;->extraCallback:Lo/onResponse$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lo/onResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    iget-object v1, p0, Lo/initRequest;->onPostMessage:Lo/onResponse$onMessageChannelReady;

    if-nez v1, :cond_1

    move-object v1, p1

    check-cast v1, Lo/initRequest;

    .line 3
    iget-object v1, v1, Lo/initRequest;->onPostMessage:Lo/onResponse$onMessageChannelReady;

    if-nez v1, :cond_3

    goto :goto_0

    .line 4
    :cond_1
    move-object v3, p1

    check-cast v3, Lo/initRequest;

    .line 5
    iget-object v3, v3, Lo/initRequest;->onPostMessage:Lo/onResponse$onMessageChannelReady;

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lo/initRequest;->extraCallback:Lo/onResponse$ICustomTabsCallback;

    if-nez v1, :cond_2

    .line 7
    check-cast p1, Lo/initRequest;

    .line 8
    iget-object p1, p1, Lo/initRequest;->extraCallback:Lo/onResponse$ICustomTabsCallback;

    if-nez p1, :cond_3

    goto :goto_1

    .line 9
    :cond_2
    check-cast p1, Lo/initRequest;

    .line 10
    iget-object p1, p1, Lo/initRequest;->extraCallback:Lo/onResponse$ICustomTabsCallback;

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lo/initRequest;->onPostMessage:Lo/onResponse$onMessageChannelReady;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 2
    iget-object v2, p0, Lo/initRequest;->extraCallback:Lo/onResponse$ICustomTabsCallback;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady()Lo/onResponse$ICustomTabsCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/initRequest;->extraCallback:Lo/onResponse$ICustomTabsCallback;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/onResponse$onMessageChannelReady;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/initRequest;->onPostMessage:Lo/onResponse$onMessageChannelReady;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkConnectionInfo{networkType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/initRequest;->onPostMessage:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mobileSubtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/initRequest;->extraCallback:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
