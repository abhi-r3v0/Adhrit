.class final Lo/getOneLinkUrl;
.super Lo/onErrorResponse;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getOneLinkUrl$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:J

.field private final asBinder:Lo/FirebaseMessagingServiceListener;

.field private final extraCallback:Ljava/lang/Integer;

.field private final onMessageChannelReady:J

.field private final onNavigationEvent:Lo/setBrandDomain;

.field private final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/handleResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(JJLo/setBrandDomain;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lo/FirebaseMessagingServiceListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/onErrorResponse;-><init>()V

    .line 2
    iput-wide p1, p0, Lo/getOneLinkUrl;->ICustomTabsCallback:J

    .line 3
    iput-wide p3, p0, Lo/getOneLinkUrl;->onMessageChannelReady:J

    .line 4
    iput-object p5, p0, Lo/getOneLinkUrl;->onNavigationEvent:Lo/setBrandDomain;

    .line 5
    iput-object p6, p0, Lo/getOneLinkUrl;->extraCallback:Ljava/lang/Integer;

    .line 6
    iput-object p7, p0, Lo/getOneLinkUrl;->onPostMessage:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lo/getOneLinkUrl;->onRelationshipValidationResult:Ljava/util/List;

    .line 8
    iput-object p9, p0, Lo/getOneLinkUrl;->asBinder:Lo/FirebaseMessagingServiceListener;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo/getOneLinkUrl;->ICustomTabsCallback:J

    return-wide v0
.end method

.method public final asInterface()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/handleResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo/getOneLinkUrl;->onRelationshipValidationResult:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lo/onErrorResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2
    check-cast p1, Lo/onErrorResponse;

    .line 3
    iget-wide v3, p0, Lo/getOneLinkUrl;->ICustomTabsCallback:J

    invoke-virtual {p1}, Lo/onErrorResponse;->ICustomTabsCallback()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Lo/getOneLinkUrl;->onMessageChannelReady:J

    .line 4
    invoke-virtual {p1}, Lo/onErrorResponse;->onPostMessage()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-object v1, p0, Lo/getOneLinkUrl;->onNavigationEvent:Lo/setBrandDomain;

    if-nez v1, :cond_1

    .line 5
    move-object v1, p1

    check-cast v1, Lo/getOneLinkUrl;

    .line 6
    iget-object v1, v1, Lo/getOneLinkUrl;->onNavigationEvent:Lo/setBrandDomain;

    if-nez v1, :cond_6

    goto :goto_0

    .line 7
    :cond_1
    move-object v3, p1

    check-cast v3, Lo/getOneLinkUrl;

    .line 8
    iget-object v3, v3, Lo/getOneLinkUrl;->onNavigationEvent:Lo/setBrandDomain;

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lo/getOneLinkUrl;->extraCallback:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 10
    move-object v1, p1

    check-cast v1, Lo/getOneLinkUrl;

    .line 11
    iget-object v1, v1, Lo/getOneLinkUrl;->extraCallback:Ljava/lang/Integer;

    if-nez v1, :cond_6

    goto :goto_1

    .line 12
    :cond_2
    move-object v3, p1

    check-cast v3, Lo/getOneLinkUrl;

    .line 13
    iget-object v3, v3, Lo/getOneLinkUrl;->extraCallback:Ljava/lang/Integer;

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lo/getOneLinkUrl;->onPostMessage:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 15
    move-object v1, p1

    check-cast v1, Lo/getOneLinkUrl;

    .line 16
    iget-object v1, v1, Lo/getOneLinkUrl;->onPostMessage:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_2

    .line 17
    :cond_3
    move-object v3, p1

    check-cast v3, Lo/getOneLinkUrl;

    .line 18
    iget-object v3, v3, Lo/getOneLinkUrl;->onPostMessage:Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lo/getOneLinkUrl;->onRelationshipValidationResult:Ljava/util/List;

    if-nez v1, :cond_4

    .line 20
    move-object v1, p1

    check-cast v1, Lo/getOneLinkUrl;

    .line 21
    iget-object v1, v1, Lo/getOneLinkUrl;->onRelationshipValidationResult:Ljava/util/List;

    if-nez v1, :cond_6

    goto :goto_3

    .line 22
    :cond_4
    move-object v3, p1

    check-cast v3, Lo/getOneLinkUrl;

    .line 23
    iget-object v3, v3, Lo/getOneLinkUrl;->onRelationshipValidationResult:Ljava/util/List;

    .line 24
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, Lo/getOneLinkUrl;->asBinder:Lo/FirebaseMessagingServiceListener;

    if-nez v1, :cond_5

    .line 25
    check-cast p1, Lo/getOneLinkUrl;

    .line 26
    iget-object p1, p1, Lo/getOneLinkUrl;->asBinder:Lo/FirebaseMessagingServiceListener;

    if-nez p1, :cond_6

    goto :goto_4

    .line 27
    :cond_5
    check-cast p1, Lo/getOneLinkUrl;

    .line 28
    iget-object p1, p1, Lo/getOneLinkUrl;->asBinder:Lo/FirebaseMessagingServiceListener;

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_4
    return v0

    :cond_6
    return v2
.end method

.method public final extraCallback()Lo/setBrandDomain;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/getOneLinkUrl;->onNavigationEvent:Lo/setBrandDomain;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lo/getOneLinkUrl;->ICustomTabsCallback:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 2
    iget-wide v3, p0, Lo/getOneLinkUrl;->onMessageChannelReady:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v3, v2

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 3
    iget-object v2, p0, Lo/getOneLinkUrl;->onNavigationEvent:Lo/setBrandDomain;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 4
    iget-object v2, p0, Lo/getOneLinkUrl;->extraCallback:Ljava/lang/Integer;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 5
    iget-object v2, p0, Lo/getOneLinkUrl;->onPostMessage:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 6
    iget-object v2, p0, Lo/getOneLinkUrl;->onRelationshipValidationResult:Ljava/util/List;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 7
    iget-object v0, p0, Lo/getOneLinkUrl;->asBinder:Lo/FirebaseMessagingServiceListener;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    xor-int v0, v1, v3

    return v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/getOneLinkUrl;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/getOneLinkUrl;->extraCallback:Ljava/lang/Integer;

    return-object v0
.end method

.method public final onPostMessage()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo/getOneLinkUrl;->onMessageChannelReady:J

    return-wide v0
.end method

.method public final onRelationshipValidationResult()Lo/FirebaseMessagingServiceListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/getOneLinkUrl;->asBinder:Lo/FirebaseMessagingServiceListener;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogRequest{requestTimeMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/getOneLinkUrl;->ICustomTabsCallback:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestUptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/getOneLinkUrl;->onMessageChannelReady:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getOneLinkUrl;->onNavigationEvent:Lo/setBrandDomain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getOneLinkUrl;->extraCallback:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getOneLinkUrl;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getOneLinkUrl;->onRelationshipValidationResult:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qosTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getOneLinkUrl;->asBinder:Lo/FirebaseMessagingServiceListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
