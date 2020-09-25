.class public abstract Lo/loadNested;
.super Lo/getMaxKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/loadNested<",
        "TT;>;>",
        "Lo/getMaxKey<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/getMaxKey;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Lo/getMaxKey;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lo/loadNested;->onPostMessage()Lo/getMaxKey;

    move-result-object v0

    invoke-virtual {v0}, Lo/getMaxKey;->onMessageChannelReady()Lo/getMaxKey;

    return-object p0
.end method

.method public onNavigationEvent()Lo/insert;
    .locals 1

    .line 261
    invoke-virtual {p0}, Lo/loadNested;->onPostMessage()Lo/getMaxKey;

    move-result-object v0

    invoke-virtual {v0}, Lo/getMaxKey;->onNavigationEvent()Lo/insert;

    move-result-object v0

    return-object v0
.end method

.method protected abstract onPostMessage()Lo/getMaxKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getMaxKey<",
            "*>;"
        }
    .end annotation
.end method

.method public final bridge synthetic onPostMessage(JLjava/util/concurrent/TimeUnit;)Lo/getMaxKey;
    .locals 1

    .line 1173
    invoke-virtual {p0}, Lo/loadNested;->onPostMessage()Lo/getMaxKey;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/getMaxKey;->onPostMessage(JLjava/util/concurrent/TimeUnit;)Lo/getMaxKey;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 266
    invoke-virtual {p0}, Lo/loadNested;->onPostMessage()Lo/getMaxKey;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
