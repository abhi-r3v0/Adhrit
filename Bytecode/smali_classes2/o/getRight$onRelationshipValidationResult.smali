.class final Lo/getRight$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onRelationshipValidationResult"
.end annotation


# instance fields
.field final extraCallback:Ljava/lang/Object;

.field final onMessageChannelReady:Lo/iteratorFrom;

.field final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/iteratorFrom;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/iteratorFrom;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 302
    check-cast p1, Lo/iteratorFrom;

    iput-object p1, p0, Lo/getRight$onRelationshipValidationResult;->onMessageChannelReady:Lo/iteratorFrom;

    .line 303
    iput-object p2, p0, Lo/getRight$onRelationshipValidationResult;->onPostMessage:Ljava/util/Map;

    .line 304
    iput-object p3, p0, Lo/getRight$onRelationshipValidationResult;->extraCallback:Ljava/lang/Object;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "provider"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_6

    .line 315
    :cond_1
    check-cast p1, Lo/getRight$onRelationshipValidationResult;

    .line 316
    iget-object v2, p0, Lo/getRight$onRelationshipValidationResult;->onMessageChannelReady:Lo/iteratorFrom;

    iget-object v3, p1, Lo/getRight$onRelationshipValidationResult;->onMessageChannelReady:Lo/iteratorFrom;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    .line 2052
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_8

    .line 316
    iget-object v2, p0, Lo/getRight$onRelationshipValidationResult;->onPostMessage:Ljava/util/Map;

    iget-object v3, p1, Lo/getRight$onRelationshipValidationResult;->onPostMessage:Ljava/util/Map;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_4

    .line 3052
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_8

    .line 317
    iget-object v2, p0, Lo/getRight$onRelationshipValidationResult;->extraCallback:Ljava/lang/Object;

    iget-object p1, p1, Lo/getRight$onRelationshipValidationResult;->extraCallback:Ljava/lang/Object;

    if-eq v2, p1, :cond_7

    if-eqz v2, :cond_6

    .line 4052
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-eqz p1, :cond_8

    return v0

    :cond_8
    :goto_6
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 323
    iget-object v1, p0, Lo/getRight$onRelationshipValidationResult;->onMessageChannelReady:Lo/iteratorFrom;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getRight$onRelationshipValidationResult;->onPostMessage:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getRight$onRelationshipValidationResult;->extraCallback:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 4105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 328
    iget-object v1, p0, Lo/getRight$onRelationshipValidationResult;->onMessageChannelReady:Lo/iteratorFrom;

    const-string v2, "provider"

    .line 329
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/getRight$onRelationshipValidationResult;->onPostMessage:Ljava/util/Map;

    const-string v2, "rawConfig"

    .line 330
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/getRight$onRelationshipValidationResult;->extraCallback:Ljava/lang/Object;

    const-string v2, "config"

    .line 331
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
