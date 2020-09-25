.class final Lo/getCompoundHash$IPostMessageService$Stub;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation


# instance fields
.field ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field onPostMessage:Lo/onDisconnectCancel;


# direct methods
.method constructor <init>(Ljava/util/Map;Lo/onDisconnectCancel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lo/onDisconnectCancel;",
            ")V"
        }
    .end annotation

    .line 1982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 1983
    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/getCompoundHash$IPostMessageService$Stub;->ICustomTabsCallback:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 1985
    check-cast p2, Lo/onDisconnectCancel;

    iput-object p2, p0, Lo/getCompoundHash$IPostMessageService$Stub;->onPostMessage:Lo/onDisconnectCancel;

    return-void

    .line 3910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "managedChannelServiceConfig"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "rawServiceConfig"

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

    if-eqz p1, :cond_6

    .line 1993
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 1996
    :cond_1
    check-cast p1, Lo/getCompoundHash$IPostMessageService$Stub;

    .line 1997
    iget-object v2, p0, Lo/getCompoundHash$IPostMessageService$Stub;->ICustomTabsCallback:Ljava/util/Map;

    iget-object v3, p1, Lo/getCompoundHash$IPostMessageService$Stub;->ICustomTabsCallback:Ljava/util/Map;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    .line 4052
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
    if-eqz v2, :cond_6

    .line 1997
    iget-object v2, p0, Lo/getCompoundHash$IPostMessageService$Stub;->onPostMessage:Lo/onDisconnectCancel;

    iget-object p1, p1, Lo/getCompoundHash$IPostMessageService$Stub;->onPostMessage:Lo/onDisconnectCancel;

    if-eq v2, p1, :cond_5

    if-eqz v2, :cond_4

    .line 5052
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_6

    return v0

    :cond_6
    :goto_4
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2004
    iget-object v1, p0, Lo/getCompoundHash$IPostMessageService$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getCompoundHash$IPostMessageService$Stub;->onPostMessage:Lo/onDisconnectCancel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 5105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 2009
    iget-object v1, p0, Lo/getCompoundHash$IPostMessageService$Stub;->ICustomTabsCallback:Ljava/util/Map;

    const-string v2, "rawServiceConfig"

    .line 2010
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/getCompoundHash$IPostMessageService$Stub;->onPostMessage:Lo/onDisconnectCancel;

    const-string v2, "managedChannelServiceConfig"

    .line 2011
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 2012
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
