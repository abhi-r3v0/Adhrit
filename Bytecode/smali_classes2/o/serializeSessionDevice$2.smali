.class final Lo/serializeSessionDevice$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setHijackHash;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serializeSessionDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/serializeSessionDevice;


# direct methods
.method constructor <init>(Lo/serializeSessionDevice;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lo/serializeSessionDevice$2;->onPostMessage:Lo/serializeSessionDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 151
    iget-object v0, p0, Lo/serializeSessionDevice$2;->onPostMessage:Lo/serializeSessionDevice;

    .line 7131
    invoke-virtual {v0}, Lo/serializeSessionDevice;->onNavigationEvent()V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/fromException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lo/serializeSessionDevice$2;->onPostMessage:Lo/serializeSessionDevice;

    .line 2248
    iget-object v0, v0, Lo/serializeSessionDevice;->onNavigationEvent:Lo/updateChildrenInternal;

    .line 4066
    iget-object p1, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3176
    invoke-static {p1}, Lo/createForTests;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2248
    invoke-virtual {v0, p1}, Lo/updateChildrenInternal;->ICustomTabsCallback(Ljava/lang/String;)Z

    return-void
.end method

.method public final ICustomTabsCallback(Lo/validateQueryEndpoints;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lo/serializeSessionDevice$2;->onPostMessage:Lo/serializeSessionDevice;

    .line 8131
    invoke-virtual {v0, p1}, Lo/serializeSessionDevice;->onPostMessage(Lo/validateQueryEndpoints;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/removeValue;)Lo/addValueEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lo/serializeSessionDevice$2;->onPostMessage:Lo/serializeSessionDevice;

    .line 1131
    invoke-virtual {v0, p1}, Lo/serializeSessionDevice;->extraCallback(Lo/removeValue;)Lo/addValueEventListener;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Lo/fromException;)Lo/removeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lo/serializeSessionDevice$2;->onPostMessage:Lo/serializeSessionDevice;

    invoke-virtual {v0, p1}, Lo/serializeSessionDevice;->ICustomTabsCallback(Lo/fromException;)Lo/removeValue;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Lo/removeValue;Lo/removeValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4252
    new-instance v0, Lo/serializeSessionDevice$extraCallback;

    invoke-direct {v0, p2}, Lo/serializeSessionDevice$extraCallback;-><init>(Lo/removeValue;)V

    .line 5130
    iget-object p1, p1, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 4253
    check-cast p1, Lo/serializeSessionDevice$ICustomTabsCallback;

    .line 5692
    iget-object p1, p1, Lo/serializeSessionDevice$ICustomTabsCallback;->onMessageChannelReady:Lo/updateChildrenInternal$onNavigationEvent;

    .line 5789
    :try_start_0
    iget-object p2, p1, Lo/updateChildrenInternal$onNavigationEvent;->extraCallback:Lo/updateChildrenInternal;

    iget-object v1, p1, Lo/updateChildrenInternal$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iget-wide v2, p1, Lo/updateChildrenInternal$onNavigationEvent;->ICustomTabsCallback:J

    invoke-static {p2, v1, v2, v3}, Lo/updateChildrenInternal;->onMessageChannelReady(Lo/updateChildrenInternal;Ljava/lang/String;J)Lo/updateChildrenInternal$onPostMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 4258
    :try_start_1
    invoke-virtual {v0, p1}, Lo/serializeSessionDevice$extraCallback;->onMessageChannelReady(Lo/updateChildrenInternal$onPostMessage;)V

    .line 4259
    invoke-virtual {p1}, Lo/updateChildrenInternal$onPostMessage;->onNavigationEvent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return-void

    :catch_0
    const/4 p1, 0x0

    :catch_1
    if-eqz p1, :cond_1

    .line 6270
    :try_start_2
    invoke-virtual {p1}, Lo/updateChildrenInternal$onPostMessage;->onMessageChannelReady()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    nop

    :catch_2
    :cond_1
    return-void
.end method
