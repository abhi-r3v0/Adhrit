.class final Lo/shouldIncludeCompoundHash$2;
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
.field private synthetic onMessageChannelReady:Lo/shouldIncludeCompoundHash;

.field private synthetic onPostMessage:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/shouldIncludeCompoundHash;Ljava/util/List;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    iput-object p2, p0, Lo/shouldIncludeCompoundHash$2;->onPostMessage:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/shouldIncludeCompoundHash$2;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 1065
    iget-object v1, v1, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 1704
    iget-object v2, v1, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    iget v3, v1, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/splitNodeRunLength;

    .line 2090
    iget-object v2, v2, Lo/splitNodeRunLength;->onMessageChannelReady:Ljava/util/List;

    .line 1704
    iget v1, v1, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    .line 346
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 3065
    iget-object v2, v2, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 3717
    iput-object v0, v2, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    const/4 v3, 0x0

    .line 4699
    iput v3, v2, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    .line 4700
    iput v3, v2, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    .line 347
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 5065
    iput-object v0, v2, Lo/shouldIncludeCompoundHash;->onRelationshipValidationResult:Ljava/util/List;

    .line 348
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 6065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->requestPostMessageChannel:Lo/openDatabase;

    .line 7058
    iget-object v0, v0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 348
    sget-object v2, Lo/setTransactionSuccessful;->onPostMessage:Lo/setTransactionSuccessful;

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 7065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->requestPostMessageChannel:Lo/openDatabase;

    .line 8058
    iget-object v0, v0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 348
    sget-object v2, Lo/setTransactionSuccessful;->extraCallback:Lo/setTransactionSuccessful;

    if-ne v0, v2, :cond_2

    .line 349
    :cond_0
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 8065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 349
    invoke-virtual {v0, v1}, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage(Ljava/net/SocketAddress;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 9065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->requestPostMessageChannel:Lo/openDatabase;

    .line 10058
    iget-object v0, v0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 351
    sget-object v1, Lo/setTransactionSuccessful;->onPostMessage:Lo/setTransactionSuccessful;

    if-ne v0, v1, :cond_1

    .line 352
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 10065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->getInterfaceDescriptor:Lo/resume;

    .line 353
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 11065
    iput-object v4, v1, Lo/shouldIncludeCompoundHash;->getInterfaceDescriptor:Lo/resume;

    .line 354
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 12065
    iget-object v1, v1, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 12699
    iput v3, v1, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    .line 12700
    iput v3, v1, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    .line 355
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    sget-object v2, Lo/setTransactionSuccessful;->ICustomTabsCallback:Lo/setTransactionSuccessful;

    .line 13317
    iget-object v3, v1, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    invoke-virtual {v3}, Lo/unionWith;->onPostMessage()V

    .line 13319
    invoke-static {v2}, Lo/openDatabase;->onNavigationEvent(Lo/setTransactionSuccessful;)Lo/openDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/shouldIncludeCompoundHash;->extraCallback(Lo/openDatabase;)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 14065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub$Proxy:Lo/resume;

    .line 358
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 15065
    iput-object v4, v1, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub$Proxy:Lo/resume;

    .line 359
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 16065
    iget-object v1, v1, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 16699
    iput v3, v1, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    .line 16700
    iput v3, v1, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    .line 360
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$2;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    invoke-static {v1}, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback(Lo/shouldIncludeCompoundHash;)V

    :goto_0
    move-object v4, v0

    :cond_2
    if-eqz v4, :cond_3

    .line 365
    sget-object v0, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const-string v1, "InternalSubchannel closed transport due to address change"

    .line 366
    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 365
    invoke-interface {v4, v0}, Lo/resume;->ICustomTabsCallback(Lo/emptyMap;)V

    :cond_3
    return-void
.end method
