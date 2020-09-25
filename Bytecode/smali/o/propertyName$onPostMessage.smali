.class public final Lo/propertyName$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/propertyName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/convertBean;

.field ICustomTabsCallback$Stub:Ljava/net/ProxySelector;

.field ICustomTabsCallback$Stub$Proxy:Ljavax/net/ssl/HostnameVerifier;

.field ICustomTabsService:Ljavax/net/SocketFactory;

.field ICustomTabsService$Stub:Z

.field ICustomTabsService$Stub$Proxy:Z

.field public INotificationSideChannel:I

.field IPostMessageService:Z

.field IPostMessageService$Stub:I

.field final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/annotatedName;",
            ">;"
        }
    .end annotation
.end field

.field public asInterface:Lo/deserializeToClass;

.field cancel:I

.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/annotatedName;",
            ">;"
        }
    .end annotation
.end field

.field extraCommand:Lo/deserializeToEnum;

.field public getInterfaceDescriptor:Lo/changeComparator;

.field public mayLaunchUrl:Lo/expectMap;

.field newSession:Ljavax/net/ssl/SSLSocketFactory;

.field public notify:I

.field onMessageChannelReady:Ljava/net/Proxy;

.field public onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/valueChange;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/convertString;",
            ">;"
        }
    .end annotation
.end field

.field onRelationshipValidationResult:Lo/resolveType$ICustomTabsCallback;

.field onTransact:Lo/addProperty;

.field postMessage:Lo/deserialize;

.field requestPostMessageChannel:Lo/shouldIncludeGetter;

.field updateVisuals:Lo/deserializeToEnum;

.field public validateRelationship:I

.field warmup:Lo/trackChildChange;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/propertyName$onPostMessage;->extraCallback:Ljava/util/List;

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/propertyName$onPostMessage;->asBinder:Ljava/util/List;

    .line 474
    new-instance v0, Lo/convertBean;

    invoke-direct {v0}, Lo/convertBean;-><init>()V

    iput-object v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsCallback:Lo/convertBean;

    .line 475
    sget-object v0, Lo/propertyName;->extraCallback:Ljava/util/List;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->onNavigationEvent:Ljava/util/List;

    .line 476
    sget-object v0, Lo/propertyName;->onNavigationEvent:Ljava/util/List;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->onPostMessage:Ljava/util/List;

    .line 477
    sget-object v0, Lo/resolveType;->onMessageChannelReady:Lo/resolveType;

    invoke-static {v0}, Lo/resolveType;->extraCallback(Lo/resolveType;)Lo/resolveType$ICustomTabsCallback;

    move-result-object v0

    iput-object v0, p0, Lo/propertyName$onPostMessage;->onRelationshipValidationResult:Lo/resolveType$ICustomTabsCallback;

    .line 478
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsCallback$Stub:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lo/listenComplete;

    invoke-direct {v0}, Lo/listenComplete;-><init>()V

    iput-object v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsCallback$Stub:Ljava/net/ProxySelector;

    .line 482
    :cond_0
    sget-object v0, Lo/addProperty;->onMessageChannelReady:Lo/addProperty;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->onTransact:Lo/addProperty;

    .line 483
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsService:Ljavax/net/SocketFactory;

    .line 484
    sget-object v0, Lo/updateFullNode;->onNavigationEvent:Lo/updateFullNode;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Ljavax/net/ssl/HostnameVerifier;

    .line 485
    sget-object v0, Lo/expectMap;->extraCallback:Lo/expectMap;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->mayLaunchUrl:Lo/expectMap;

    .line 486
    sget-object v0, Lo/deserializeToEnum;->onPostMessage:Lo/deserializeToEnum;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->extraCommand:Lo/deserializeToEnum;

    .line 487
    sget-object v0, Lo/deserializeToEnum;->onPostMessage:Lo/deserializeToEnum;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->updateVisuals:Lo/deserializeToEnum;

    .line 488
    new-instance v0, Lo/deserialize;

    invoke-direct {v0}, Lo/deserialize;-><init>()V

    iput-object v0, p0, Lo/propertyName$onPostMessage;->postMessage:Lo/deserialize;

    .line 489
    sget-object v0, Lo/shouldIncludeGetter;->extraCallback:Lo/shouldIncludeGetter;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->requestPostMessageChannel:Lo/shouldIncludeGetter;

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lo/propertyName$onPostMessage;->IPostMessageService:Z

    .line 491
    iput-boolean v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsService$Stub$Proxy:Z

    .line 492
    iput-boolean v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsService$Stub:Z

    const/4 v0, 0x0

    .line 493
    iput v0, p0, Lo/propertyName$onPostMessage;->validateRelationship:I

    const/16 v1, 0x2710

    .line 494
    iput v1, p0, Lo/propertyName$onPostMessage;->IPostMessageService$Stub:I

    .line 495
    iput v1, p0, Lo/propertyName$onPostMessage;->notify:I

    .line 496
    iput v1, p0, Lo/propertyName$onPostMessage;->INotificationSideChannel:I

    .line 497
    iput v0, p0, Lo/propertyName$onPostMessage;->cancel:I

    return-void
.end method

.method public constructor <init>(Lo/propertyName;)V
    .locals 2

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/propertyName$onPostMessage;->extraCallback:Ljava/util/List;

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/propertyName$onPostMessage;->asBinder:Ljava/util/List;

    .line 501
    iget-object v0, p1, Lo/propertyName;->onPostMessage:Lo/convertBean;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsCallback:Lo/convertBean;

    .line 502
    iget-object v0, p1, Lo/propertyName;->ICustomTabsCallback:Ljava/net/Proxy;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->onMessageChannelReady:Ljava/net/Proxy;

    .line 503
    iget-object v0, p1, Lo/propertyName;->onMessageChannelReady:Ljava/util/List;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->onNavigationEvent:Ljava/util/List;

    .line 504
    iget-object v0, p1, Lo/propertyName;->onTransact:Ljava/util/List;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->onPostMessage:Ljava/util/List;

    .line 505
    iget-object v0, p0, Lo/propertyName$onPostMessage;->extraCallback:Ljava/util/List;

    iget-object v1, p1, Lo/propertyName;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 506
    iget-object v0, p0, Lo/propertyName$onPostMessage;->asBinder:Ljava/util/List;

    iget-object v1, p1, Lo/propertyName;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 507
    iget-object v0, p1, Lo/propertyName;->asInterface:Lo/resolveType$ICustomTabsCallback;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->onRelationshipValidationResult:Lo/resolveType$ICustomTabsCallback;

    .line 508
    iget-object v0, p1, Lo/propertyName;->asBinder:Ljava/net/ProxySelector;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsCallback$Stub:Ljava/net/ProxySelector;

    .line 509
    iget-object v0, p1, Lo/propertyName;->ICustomTabsService:Lo/addProperty;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->onTransact:Lo/addProperty;

    .line 510
    iget-object v0, p1, Lo/propertyName;->ICustomTabsCallback$Stub$Proxy:Lo/changeComparator;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->getInterfaceDescriptor:Lo/changeComparator;

    .line 511
    iget-object v0, p1, Lo/propertyName;->newSession:Lo/deserializeToClass;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->asInterface:Lo/deserializeToClass;

    .line 512
    iget-object v0, p1, Lo/propertyName;->warmup:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsService:Ljavax/net/SocketFactory;

    .line 513
    iget-object v0, p1, Lo/propertyName;->getInterfaceDescriptor:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->newSession:Ljavax/net/ssl/SSLSocketFactory;

    .line 514
    iget-object v0, p1, Lo/propertyName;->updateVisuals:Lo/trackChildChange;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->warmup:Lo/trackChildChange;

    .line 515
    iget-object v0, p1, Lo/propertyName;->requestPostMessageChannel:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Ljavax/net/ssl/HostnameVerifier;

    .line 516
    iget-object v0, p1, Lo/propertyName;->postMessage:Lo/expectMap;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->mayLaunchUrl:Lo/expectMap;

    .line 517
    iget-object v0, p1, Lo/propertyName;->extraCommand:Lo/deserializeToEnum;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->extraCommand:Lo/deserializeToEnum;

    .line 518
    iget-object v0, p1, Lo/propertyName;->mayLaunchUrl:Lo/deserializeToEnum;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->updateVisuals:Lo/deserializeToEnum;

    .line 519
    iget-object v0, p1, Lo/propertyName;->validateRelationship:Lo/deserialize;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->postMessage:Lo/deserialize;

    .line 520
    iget-object v0, p1, Lo/propertyName;->ICustomTabsService$Stub:Lo/shouldIncludeGetter;

    iput-object v0, p0, Lo/propertyName$onPostMessage;->requestPostMessageChannel:Lo/shouldIncludeGetter;

    .line 521
    iget-boolean v0, p1, Lo/propertyName;->ICustomTabsService$Stub$Proxy:Z

    iput-boolean v0, p0, Lo/propertyName$onPostMessage;->IPostMessageService:Z

    .line 522
    iget-boolean v0, p1, Lo/propertyName;->IPostMessageService$Stub:Z

    iput-boolean v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsService$Stub$Proxy:Z

    .line 523
    iget-boolean v0, p1, Lo/propertyName;->IPostMessageService:Z

    iput-boolean v0, p0, Lo/propertyName$onPostMessage;->ICustomTabsService$Stub:Z

    .line 524
    iget v0, p1, Lo/propertyName;->INotificationSideChannel:I

    iput v0, p0, Lo/propertyName$onPostMessage;->validateRelationship:I

    .line 525
    iget v0, p1, Lo/propertyName;->cancel:I

    iput v0, p0, Lo/propertyName$onPostMessage;->IPostMessageService$Stub:I

    .line 526
    iget v0, p1, Lo/propertyName;->cancelAll:I

    iput v0, p0, Lo/propertyName$onPostMessage;->notify:I

    .line 527
    iget v0, p1, Lo/propertyName;->notify:I

    iput v0, p0, Lo/propertyName$onPostMessage;->INotificationSideChannel:I

    .line 528
    iget p1, p1, Lo/propertyName;->IPostMessageService$Stub$Proxy:I

    iput p1, p0, Lo/propertyName$onPostMessage;->cancel:I

    return-void
.end method
