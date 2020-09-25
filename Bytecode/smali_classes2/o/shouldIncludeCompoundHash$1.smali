.class final Lo/shouldIncludeCompoundHash$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldIncludeCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

.field private synthetic onNavigationEvent:Lo/emptyMap;


# direct methods
.method constructor <init>(Lo/shouldIncludeCompoundHash;Lo/emptyMap;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$1;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    iput-object p2, p0, Lo/shouldIncludeCompoundHash$1;->onNavigationEvent:Lo/emptyMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 379
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$1;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 1065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->requestPostMessageChannel:Lo/openDatabase;

    .line 2058
    iget-object v0, v0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 379
    sget-object v1, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    if-ne v0, v1, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$1;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    iget-object v1, p0, Lo/shouldIncludeCompoundHash$1;->onNavigationEvent:Lo/emptyMap;

    .line 2065
    iput-object v1, v0, Lo/shouldIncludeCompoundHash;->updateVisuals:Lo/emptyMap;

    .line 383
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$1;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 3065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->getInterfaceDescriptor:Lo/resume;

    .line 384
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$1;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 4065
    iget-object v1, v1, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub$Proxy:Lo/resume;

    .line 385
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$1;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    const/4 v3, 0x0

    .line 5065
    iput-object v3, v2, Lo/shouldIncludeCompoundHash;->getInterfaceDescriptor:Lo/resume;

    .line 386
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$1;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 6065
    iput-object v3, v2, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub$Proxy:Lo/resume;

    .line 387
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$1;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    sget-object v3, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    .line 7317
    iget-object v4, v2, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    invoke-virtual {v4}, Lo/unionWith;->onPostMessage()V

    .line 7319
    invoke-static {v3}, Lo/openDatabase;->onNavigationEvent(Lo/setTransactionSuccessful;)Lo/openDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/shouldIncludeCompoundHash;->extraCallback(Lo/openDatabase;)V

    .line 388
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$1;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 8065
    iget-object v2, v2, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    const/4 v3, 0x0

    .line 8699
    iput v3, v2, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    .line 8700
    iput v3, v2, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    .line 389
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$1;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 9065
    iget-object v2, v2, Lo/shouldIncludeCompoundHash;->newSession:Ljava/util/Collection;

    .line 389
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$1;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 10414
    iget-object v3, v2, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v4, Lo/shouldIncludeCompoundHash$10;

    invoke-direct {v4, v2}, Lo/shouldIncludeCompoundHash$10;-><init>(Lo/shouldIncludeCompoundHash;)V

    invoke-virtual {v3, v4}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    .line 392
    :cond_1
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$1;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    invoke-static {v2}, Lo/shouldIncludeCompoundHash;->extraCallback(Lo/shouldIncludeCompoundHash;)V

    if-eqz v0, :cond_2

    .line 394
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$1;->onNavigationEvent:Lo/emptyMap;

    invoke-interface {v0, v2}, Lo/resume;->ICustomTabsCallback(Lo/emptyMap;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 397
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$1;->onNavigationEvent:Lo/emptyMap;

    invoke-interface {v1, v0}, Lo/resume;->ICustomTabsCallback(Lo/emptyMap;)V

    :cond_3
    return-void
.end method
