.class final Lo/setPersistenceEnabled$onPostMessage$1;
.super Lo/getParent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setPersistenceEnabled$onPostMessage;->onMessageChannelReady(ZZILjava/util/List;Lo/useEmulator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/purgeOutstandingWrites;

.field private synthetic onMessageChannelReady:Lo/setPersistenceEnabled$onPostMessage;


# direct methods
.method varargs constructor <init>(Lo/setPersistenceEnabled$onPostMessage;Ljava/lang/String;[Ljava/lang/Object;Lo/purgeOutstandingWrites;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lo/setPersistenceEnabled$onPostMessage$1;->onMessageChannelReady:Lo/setPersistenceEnabled$onPostMessage;

    iput-object p4, p0, Lo/setPersistenceEnabled$onPostMessage$1;->ICustomTabsCallback:Lo/purgeOutstandingWrites;

    invoke-direct {p0, p2, p3}, Lo/getParent;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 5

    .line 675
    :try_start_0
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage$1;->onMessageChannelReady:Lo/setPersistenceEnabled$onPostMessage;

    iget-object v0, v0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v0}, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub(Lo/setPersistenceEnabled;)Lo/setPersistenceEnabled$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/setPersistenceEnabled$onPostMessage$1;->ICustomTabsCallback:Lo/purgeOutstandingWrites;

    invoke-virtual {v0, v1}, Lo/setPersistenceEnabled$onMessageChannelReady;->onNavigationEvent(Lo/purgeOutstandingWrites;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 677
    sget-object v1, Lo/goOnline;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FramedConnection.Listener failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo/setPersistenceEnabled$onPostMessage$1;->onMessageChannelReady:Lo/setPersistenceEnabled$onPostMessage;

    iget-object v4, v4, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v4}, Lo/setPersistenceEnabled;->onPostMessage(Lo/setPersistenceEnabled;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    :try_start_1
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage$1;->ICustomTabsCallback:Lo/purgeOutstandingWrites;

    sget-object v1, Lo/getReferenceFromUrl;->onNavigationEvent:Lo/getReferenceFromUrl;

    .line 1219
    invoke-virtual {v0, v1}, Lo/purgeOutstandingWrites;->ICustomTabsCallback(Lo/getReferenceFromUrl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1222
    iget-object v2, v0, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget v0, v0, Lo/purgeOutstandingWrites;->extraCallback:I

    .line 1360
    iget-object v2, v2, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {v2, v0, v1}, Lo/getReference;->onNavigationEvent(ILo/getReferenceFromUrl;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method
