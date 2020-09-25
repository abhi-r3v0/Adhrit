.class final Lo/shouldIncludeCompoundHash$onPostMessage$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldIncludeCompoundHash$onPostMessage;->onMessageChannelReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/shouldIncludeCompoundHash$onPostMessage;


# direct methods
.method constructor <init>(Lo/shouldIncludeCompoundHash$onPostMessage;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$onPostMessage$1;->onMessageChannelReady:Lo/shouldIncludeCompoundHash$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 578
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$1;->onMessageChannelReady:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 1065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->newSession:Ljava/util/Collection;

    .line 578
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$onPostMessage$1;->onMessageChannelReady:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v1, v1, Lo/shouldIncludeCompoundHash$onPostMessage;->extraCallback:Lo/resume;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$1;->onMessageChannelReady:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 2065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->requestPostMessageChannel:Lo/openDatabase;

    .line 3058
    iget-object v0, v0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 579
    sget-object v1, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$1;->onMessageChannelReady:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 3065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->newSession:Ljava/util/Collection;

    .line 579
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$1;->onMessageChannelReady:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 4414
    iget-object v1, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v2, Lo/shouldIncludeCompoundHash$10;

    invoke-direct {v2, v0}, Lo/shouldIncludeCompoundHash$10;-><init>(Lo/shouldIncludeCompoundHash;)V

    invoke-virtual {v1, v2}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
