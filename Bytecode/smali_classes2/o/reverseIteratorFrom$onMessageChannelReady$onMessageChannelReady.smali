.class public final Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIteratorFrom$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/Integer;

.field public asBinder:Lo/saveTrackedQueryKeys;

.field public extraCallback:Ljava/util/concurrent/ScheduledExecutorService;

.field public onMessageChannelReady:Lo/reverseIteratorFrom$onRelationshipValidationResult;

.field public onNavigationEvent:Lo/addToArray;

.field public onPostMessage:Lo/unionWith;

.field public onTransact:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()Lo/reverseIteratorFrom$onMessageChannelReady;
    .locals 10

    .line 655
    new-instance v9, Lo/reverseIteratorFrom$onMessageChannelReady;

    iget-object v1, p0, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Integer;

    iget-object v2, p0, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/addToArray;

    iget-object v3, p0, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onPostMessage:Lo/unionWith;

    iget-object v4, p0, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onMessageChannelReady:Lo/reverseIteratorFrom$onRelationshipValidationResult;

    iget-object v5, p0, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->extraCallback:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->asBinder:Lo/saveTrackedQueryKeys;

    iget-object v7, p0, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onTransact:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/reverseIteratorFrom$onMessageChannelReady;-><init>(Ljava/lang/Integer;Lo/addToArray;Lo/unionWith;Lo/reverseIteratorFrom$onRelationshipValidationResult;Ljava/util/concurrent/ScheduledExecutorService;Lo/saveTrackedQueryKeys;Ljava/util/concurrent/Executor;B)V

    return-object v9
.end method
