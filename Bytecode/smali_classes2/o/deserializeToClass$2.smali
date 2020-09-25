.class final Lo/deserializeToClass$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/changeComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/deserializeToClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/deserializeToClass;


# direct methods
.method constructor <init>(Lo/deserializeToClass;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lo/deserializeToClass$2;->onMessageChannelReady:Lo/deserializeToClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/childAddedChange;)Lo/addValueEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lo/deserializeToClass$2;->onMessageChannelReady:Lo/deserializeToClass;

    invoke-virtual {v0, p1}, Lo/deserializeToClass;->onMessageChannelReady(Lo/childAddedChange;)Lo/addValueEventListener;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback(Lo/isCompleteForChild;)Lo/childAddedChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lo/deserializeToClass$2;->onMessageChannelReady:Lo/deserializeToClass;

    invoke-virtual {v0, p1}, Lo/deserializeToClass;->onNavigationEvent(Lo/isCompleteForChild;)Lo/childAddedChange;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback()V
    .locals 1

    .line 161
    iget-object v0, p0, Lo/deserializeToClass$2;->onMessageChannelReady:Lo/deserializeToClass;

    invoke-virtual {v0}, Lo/deserializeToClass;->onMessageChannelReady()V

    return-void
.end method

.method public final onMessageChannelReady(Lo/isCompleteForChild;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lo/deserializeToClass$2;->onMessageChannelReady:Lo/deserializeToClass;

    .line 1262
    iget-object v0, v0, Lo/deserializeToClass;->onPostMessage:Lo/getPrevName;

    .line 2049
    iget-object p1, p1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 2190
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object p1

    invoke-virtual {p1}, Lo/matches;->onNavigationEvent()Lo/matches;

    move-result-object p1

    invoke-virtual {p1}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object p1

    .line 1262
    invoke-virtual {v0, p1}, Lo/getPrevName;->extraCallback(Ljava/lang/String;)Z

    return-void
.end method

.method public final onNavigationEvent(Lo/getEventType;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lo/deserializeToClass$2;->onMessageChannelReady:Lo/deserializeToClass;

    invoke-virtual {v0, p1}, Lo/deserializeToClass;->onMessageChannelReady(Lo/getEventType;)V

    return-void
.end method

.method public final onPostMessage(Lo/childAddedChange;Lo/childAddedChange;)V
    .locals 4

    .line 2266
    new-instance v0, Lo/deserializeToClass$onMessageChannelReady;

    invoke-direct {v0, p2}, Lo/deserializeToClass$onMessageChannelReady;-><init>(Lo/childAddedChange;)V

    .line 3177
    iget-object p1, p1, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 2267
    check-cast p1, Lo/deserializeToClass$extraCallback;

    iget-object p1, p1, Lo/deserializeToClass$extraCallback;->onMessageChannelReady:Lo/getPrevName$extraCallback;

    .line 3811
    :try_start_0
    iget-object p2, p1, Lo/getPrevName$extraCallback;->onNavigationEvent:Lo/getPrevName;

    iget-object v1, p1, Lo/getPrevName$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    iget-wide v2, p1, Lo/getPrevName$extraCallback;->onPostMessage:J

    invoke-virtual {p2, v1, v2, v3}, Lo/getPrevName;->onPostMessage(Ljava/lang/String;J)Lo/getPrevName$onMessageChannelReady;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 2272
    :try_start_1
    invoke-virtual {v0, p1}, Lo/deserializeToClass$onMessageChannelReady;->onMessageChannelReady(Lo/getPrevName$onMessageChannelReady;)V

    .line 2273
    invoke-virtual {p1}, Lo/getPrevName$onMessageChannelReady;->onPostMessage()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return-void

    :catch_0
    const/4 p1, 0x0

    :catch_1
    if-eqz p1, :cond_1

    .line 4284
    :try_start_2
    invoke-virtual {p1}, Lo/getPrevName$onMessageChannelReady;->ICustomTabsCallback()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    nop

    :catch_2
    :cond_1
    return-void
.end method
