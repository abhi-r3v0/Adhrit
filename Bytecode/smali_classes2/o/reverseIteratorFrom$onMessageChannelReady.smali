.class public final Lo/reverseIteratorFrom$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIteratorFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub:Ljava/util/concurrent/ScheduledExecutorService;

.field private final asInterface:Lo/saveTrackedQueryKeys;

.field public final extraCallback:Lo/reverseIteratorFrom$onRelationshipValidationResult;

.field public final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field public final onNavigationEvent:Lo/addToArray;

.field public final onPostMessage:Lo/unionWith;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Lo/addToArray;Lo/unionWith;Lo/reverseIteratorFrom$onRelationshipValidationResult;Ljava/util/concurrent/ScheduledExecutorService;Lo/saveTrackedQueryKeys;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 429
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->ICustomTabsCallback:I

    if-eqz p2, :cond_2

    .line 430
    check-cast p2, Lo/addToArray;

    iput-object p2, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->onNavigationEvent:Lo/addToArray;

    if-eqz p3, :cond_1

    .line 431
    check-cast p3, Lo/unionWith;

    iput-object p3, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->onPostMessage:Lo/unionWith;

    if-eqz p4, :cond_0

    .line 432
    check-cast p4, Lo/reverseIteratorFrom$onRelationshipValidationResult;

    iput-object p4, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->extraCallback:Lo/reverseIteratorFrom$onRelationshipValidationResult;

    .line 433
    iput-object p5, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->ICustomTabsCallback$Stub:Ljava/util/concurrent/ScheduledExecutorService;

    .line 434
    iput-object p6, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->asInterface:Lo/saveTrackedQueryKeys;

    .line 435
    iput-object p7, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    return-void

    .line 4910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "serviceConfigParser not set"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "syncContext not set"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyDetector not set"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "defaultPort not set"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Lo/addToArray;Lo/unionWith;Lo/reverseIteratorFrom$onRelationshipValidationResult;Ljava/util/concurrent/ScheduledExecutorService;Lo/saveTrackedQueryKeys;Ljava/util/concurrent/Executor;B)V
    .locals 0

    .line 412
    invoke-direct/range {p0 .. p7}, Lo/reverseIteratorFrom$onMessageChannelReady;-><init>(Ljava/lang/Integer;Lo/addToArray;Lo/unionWith;Lo/reverseIteratorFrom$onRelationshipValidationResult;Ljava/util/concurrent/ScheduledExecutorService;Lo/saveTrackedQueryKeys;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
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

    .line 523
    iget v1, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->ICustomTabsCallback:I

    const-string v2, "defaultPort"

    .line 524
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;I)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->onNavigationEvent:Lo/addToArray;

    const-string v2, "proxyDetector"

    .line 525
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->onPostMessage:Lo/unionWith;

    const-string v2, "syncContext"

    .line 526
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->extraCallback:Lo/reverseIteratorFrom$onRelationshipValidationResult;

    const-string v2, "serviceConfigParser"

    .line 527
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->ICustomTabsCallback$Stub:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v2, "scheduledExecutorService"

    .line 528
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->asInterface:Lo/saveTrackedQueryKeys;

    const-string v2, "channelLogger"

    .line 529
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/reverseIteratorFrom$onMessageChannelReady;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    const-string v2, "executor"

    .line 530
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
