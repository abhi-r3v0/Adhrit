.class final Lo/onConversionFailure;
.super Lo/setBrandDomain;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onConversionFailure$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/setBrandDomain$onPostMessage;

.field private final onMessageChannelReady:Lo/saveProperties;


# direct methods
.method synthetic constructor <init>(Lo/setBrandDomain$onPostMessage;Lo/saveProperties;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/setBrandDomain;-><init>()V

    .line 2
    iput-object p1, p0, Lo/onConversionFailure;->extraCallback:Lo/setBrandDomain$onPostMessage;

    .line 3
    iput-object p2, p0, Lo/onConversionFailure;->onMessageChannelReady:Lo/saveProperties;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setBrandDomain$onPostMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/onConversionFailure;->extraCallback:Lo/setBrandDomain$onPostMessage;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lo/setBrandDomain;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    iget-object v1, p0, Lo/onConversionFailure;->extraCallback:Lo/setBrandDomain$onPostMessage;

    if-nez v1, :cond_1

    move-object v1, p1

    check-cast v1, Lo/onConversionFailure;

    .line 3
    iget-object v1, v1, Lo/onConversionFailure;->extraCallback:Lo/setBrandDomain$onPostMessage;

    if-nez v1, :cond_3

    goto :goto_0

    .line 4
    :cond_1
    move-object v3, p1

    check-cast v3, Lo/onConversionFailure;

    .line 5
    iget-object v3, v3, Lo/onConversionFailure;->extraCallback:Lo/setBrandDomain$onPostMessage;

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lo/onConversionFailure;->onMessageChannelReady:Lo/saveProperties;

    if-nez v1, :cond_2

    .line 7
    check-cast p1, Lo/onConversionFailure;

    .line 8
    iget-object p1, p1, Lo/onConversionFailure;->onMessageChannelReady:Lo/saveProperties;

    if-nez p1, :cond_3

    goto :goto_1

    .line 9
    :cond_2
    check-cast p1, Lo/onConversionFailure;

    .line 10
    iget-object p1, p1, Lo/onConversionFailure;->onMessageChannelReady:Lo/saveProperties;

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
    iget-object v0, p0, Lo/onConversionFailure;->extraCallback:Lo/setBrandDomain$onPostMessage;

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
    iget-object v2, p0, Lo/onConversionFailure;->onMessageChannelReady:Lo/saveProperties;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady()Lo/saveProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/onConversionFailure;->onMessageChannelReady:Lo/saveProperties;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientInfo{clientType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/onConversionFailure;->extraCallback:Lo/setBrandDomain$onPostMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidClientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/onConversionFailure;->onMessageChannelReady:Lo/saveProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
