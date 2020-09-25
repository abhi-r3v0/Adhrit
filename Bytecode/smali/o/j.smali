.class final Lo/j;
.super Lo/c;
.source ""

# interfaces
.implements Lo/isInstantApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/j$extraCallback;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/OfferJsonAdapter;

.field private final ICustomTabsCallback$Stub:Landroid/os/Handler;

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:Z

.field private ICustomTabsService$Stub:J

.field private ICustomTabsService$Stub$Proxy:I

.field private IPostMessageService:I

.field private IPostMessageService$Stub:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field private final asBinder:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo/c$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/t$onPostMessage;

.field private final extraCallback:[Lo/HuaweiReferrer;

.field private extraCommand:I

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:Lo/r;

.field private newSession:Z

.field private final onMessageChannelReady:Lo/InstrumentViewMapping;

.field private final onPostMessage:Landroid/os/Handler;

.field private final onRelationshipValidationResult:Lo/ProxyEvent;

.field private final onTransact:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private postMessage:Z

.field private requestPostMessageChannel:Z

.field private updateVisuals:Lo/t$d;

.field private validateRelationship:Lo/GoogleReferrer;

.field private warmup:Lo/InstrumentsCompleteJsonAdapter;


# direct methods
.method public constructor <init>([Lo/HuaweiReferrer;Lo/InstrumentViewMapping;Lo/Validate;Lo/PaymentInstrumentRequestJsonAdapter;Lo/CheckoutBuilder$PolingRemoteConfig;Landroid/os/Looper;)V
    .locals 13

    move-object v0, p0

    move-object v2, p1

    .line 104
    invoke-direct {p0}, Lo/c;-><init>()V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Init "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [ExoPlayerLib/2.10.5] ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v1}, Lo/JusPayWrapper;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    array-length v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 108
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lo/HuaweiReferrer;

    iput-object v1, v0, Lo/j;->extraCallback:[Lo/HuaweiReferrer;

    .line 109
    invoke-static {p2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/InstrumentViewMapping;

    iput-object v1, v0, Lo/j;->onMessageChannelReady:Lo/InstrumentViewMapping;

    .line 110
    iput-boolean v3, v0, Lo/j;->newSession:Z

    .line 111
    iput v3, v0, Lo/j;->ICustomTabsCallback$Stub$Proxy:I

    .line 112
    iput-boolean v3, v0, Lo/j;->ICustomTabsService:Z

    .line 113
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lo/j;->asBinder:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 114
    new-instance v1, Lo/OfferJsonAdapter;

    array-length v4, v2

    new-array v4, v4, [Lo/Payload;

    array-length v5, v2

    new-array v5, v5, [Lo/InstrumentView;

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Lo/OfferJsonAdapter;-><init>([Lo/Payload;[Lo/InstrumentView;Ljava/lang/Object;)V

    iput-object v1, v0, Lo/j;->ICustomTabsCallback:Lo/OfferJsonAdapter;

    .line 119
    new-instance v1, Lo/t$onPostMessage;

    invoke-direct {v1}, Lo/t$onPostMessage;-><init>()V

    iput-object v1, v0, Lo/j;->asInterface:Lo/t$onPostMessage;

    .line 120
    sget-object v1, Lo/r;->onPostMessage:Lo/r;

    iput-object v1, v0, Lo/j;->mayLaunchUrl:Lo/r;

    .line 121
    sget-object v1, Lo/t$d;->ICustomTabsCallback:Lo/t$d;

    iput-object v1, v0, Lo/j;->updateVisuals:Lo/t$d;

    .line 122
    iput v3, v0, Lo/j;->getInterfaceDescriptor:I

    .line 123
    new-instance v1, Lo/j$2;

    move-object/from16 v3, p6

    invoke-direct {v1, p0, v3}, Lo/j$2;-><init>(Lo/j;Landroid/os/Looper;)V

    iput-object v1, v0, Lo/j;->onPostMessage:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    .line 130
    iget-object v1, v0, Lo/j;->ICustomTabsCallback:Lo/OfferJsonAdapter;

    invoke-static {v3, v4, v1}, Lo/GoogleReferrer;->extraCallback(JLo/OfferJsonAdapter;)Lo/GoogleReferrer;

    move-result-object v1

    iput-object v1, v0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    .line 131
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lo/j;->onTransact:Ljava/util/ArrayDeque;

    .line 132
    new-instance v12, Lo/ProxyEvent;

    iget-object v4, v0, Lo/j;->ICustomTabsCallback:Lo/OfferJsonAdapter;

    iget-boolean v7, v0, Lo/j;->newSession:Z

    iget v8, v0, Lo/j;->ICustomTabsCallback$Stub$Proxy:I

    iget-boolean v9, v0, Lo/j;->ICustomTabsService:Z

    iget-object v10, v0, Lo/j;->onPostMessage:Landroid/os/Handler;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lo/ProxyEvent;-><init>([Lo/HuaweiReferrer;Lo/InstrumentViewMapping;Lo/OfferJsonAdapter;Lo/Validate;Lo/PaymentInstrumentRequestJsonAdapter;ZIZLandroid/os/Handler;Lo/CheckoutBuilder$PolingRemoteConfig;)V

    iput-object v12, v0, Lo/j;->onRelationshipValidationResult:Lo/ProxyEvent;

    .line 144
    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Lo/j;->onRelationshipValidationResult:Lo/ProxyEvent;

    invoke-virtual {v2}, Lo/ProxyEvent;->extraCallback()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lo/j;->ICustomTabsCallback$Stub:Landroid/os/Handler;

    return-void
.end method

.method static synthetic ICustomTabsCallback(ZLo/allow$onNavigationEvent;)V
    .locals 0

    .line 305
    invoke-interface {p1, p0}, Lo/allow$onNavigationEvent;->onMessageChannelReady(Z)V

    return-void
.end method

.method private INotificationSideChannel$Stub()Z
    .locals 1

    .line 767
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lo/j;->extraCommand:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private extraCallback(Lo/InstrumentsCompleteJsonAdapter$extraCallback;J)J
    .locals 2

    .line 760
    invoke-static {p2, p3}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide p2

    .line 761
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object p1, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-object v1, p0, Lo/j;->asInterface:Lo/t$onPostMessage;

    invoke-virtual {v0, p1, v1}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    .line 762
    iget-object p1, p0, Lo/j;->asInterface:Lo/t$onPostMessage;

    invoke-virtual {p1}, Lo/t$onPostMessage;->onNavigationEvent()J

    move-result-wide v0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method static synthetic extraCallback(ILo/allow$onNavigationEvent;)V
    .locals 0

    .line 291
    invoke-interface {p1, p0}, Lo/allow$onNavigationEvent;->onMessageChannelReady(I)V

    return-void
.end method

.method static synthetic extraCallback(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lo/j;->onPostMessage(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V

    return-void
.end method

.method private onMessageChannelReady(ZZI)Lo/GoogleReferrer;
    .locals 24

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 685
    iput v3, v0, Lo/j;->ICustomTabsService$Stub$Proxy:I

    .line 686
    iput v3, v0, Lo/j;->IPostMessageService:I

    .line 687
    iput-wide v1, v0, Lo/j;->ICustomTabsService$Stub:J

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/j;->extraCommand()I

    move-result v4

    iput v4, v0, Lo/j;->ICustomTabsService$Stub$Proxy:I

    .line 690
    invoke-virtual/range {p0 .. p0}, Lo/j;->mayLaunchUrl()I

    move-result v4

    iput v4, v0, Lo/j;->IPostMessageService:I

    .line 691
    invoke-virtual/range {p0 .. p0}, Lo/j;->IPostMessageService()J

    move-result-wide v4

    iput-wide v4, v0, Lo/j;->ICustomTabsService$Stub:J

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    .line 695
    iget-object v4, v0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-boolean v5, v0, Lo/j;->ICustomTabsService:Z

    iget-object v6, v0, Lo/c;->onNavigationEvent:Lo/t$onMessageChannelReady;

    .line 697
    invoke-virtual {v4, v5, v6}, Lo/GoogleReferrer;->extraCallback(ZLo/t$onMessageChannelReady;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v4, v4, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    :goto_1
    move-object/from16 v17, v4

    if-eqz v3, :cond_4

    goto :goto_2

    .line 699
    :cond_4
    iget-object v1, v0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-wide v1, v1, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    :goto_2
    move-wide/from16 v22, v1

    if-eqz v3, :cond_5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    .line 700
    :cond_5
    iget-object v1, v0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-wide v1, v1, Lo/GoogleReferrer;->onNavigationEvent:J

    :goto_3
    move-wide v11, v1

    .line 701
    new-instance v1, Lo/GoogleReferrer;

    if-eqz p2, :cond_6

    sget-object v2, Lo/t;->extraCallback:Lo/t;

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v2, v2, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    :goto_4
    move-object v6, v2

    if-eqz p2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    iget-object v2, v0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v2, v2, Lo/GoogleReferrer;->extraCallback:Ljava/lang/Object;

    :goto_5
    move-object v7, v2

    const/4 v14, 0x0

    if-eqz p2, :cond_8

    sget-object v2, Lo/JuspaySessionToken;->onPostMessage:Lo/JuspaySessionToken;

    goto :goto_6

    :cond_8
    iget-object v2, v0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v2, v2, Lo/GoogleReferrer;->ICustomTabsCallback$Stub:Lo/JuspaySessionToken;

    :goto_6
    move-object v15, v2

    if-eqz p2, :cond_9

    iget-object v2, v0, Lo/j;->ICustomTabsCallback:Lo/OfferJsonAdapter;

    goto :goto_7

    :cond_9
    iget-object v2, v0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v2, v2, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    :goto_7
    move-object/from16 v16, v2

    const-wide/16 v20, 0x0

    move-object v5, v1

    move-object/from16 v8, v17

    move-wide/from16 v9, v22

    move/from16 v13, p3

    move-wide/from16 v18, v22

    invoke-direct/range {v5 .. v23}, Lo/GoogleReferrer;-><init>(Lo/t;Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJIZLo/JuspaySessionToken;Lo/OfferJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V

    return-object v1
.end method

.method static synthetic onMessageChannelReady(Lcom/google/android/exoplayer2/ExoPlaybackException;Lo/allow$onNavigationEvent;)V
    .locals 0

    .line 639
    invoke-interface {p1, p0}, Lo/allow$onNavigationEvent;->onNavigationEvent(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method private onMessageChannelReady(Ljava/lang/Runnable;)V
    .locals 2

    .line 748
    iget-object v0, p0, Lo/j;->onTransact:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 749
    iget-object v1, p0, Lo/j;->onTransact:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    return-void

    .line 753
    :cond_0
    :goto_0
    iget-object p1, p0, Lo/j;->onTransact:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 754
    iget-object p1, p0, Lo/j;->onTransact:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 755
    iget-object p1, p0, Lo/j;->onTransact:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onMessageChannelReady(Lo/GoogleReferrer;IZI)V
    .locals 6

    .line 651
    iget v0, p0, Lo/j;->extraCommand:I

    sub-int/2addr v0, p2

    iput v0, p0, Lo/j;->extraCommand:I

    if-nez v0, :cond_3

    .line 653
    iget-wide v0, p1, Lo/GoogleReferrer;->onPostMessage:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 655
    iget-object v1, p1, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Lo/GoogleReferrer;->onNavigationEvent:J

    move-object v0, p1

    .line 656
    invoke-virtual/range {v0 .. v5}, Lo/GoogleReferrer;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJ)Lo/GoogleReferrer;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 659
    iget-object p1, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object p1, p1, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    invoke-virtual {p1}, Lo/t;->extraCallback()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, v1, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    invoke-virtual {p1}, Lo/t;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 661
    iput p2, p0, Lo/j;->IPostMessageService:I

    .line 662
    iput p2, p0, Lo/j;->ICustomTabsService$Stub$Proxy:I

    const-wide/16 v2, 0x0

    .line 663
    iput-wide v2, p0, Lo/j;->ICustomTabsService$Stub:J

    .line 666
    :cond_1
    iget-boolean p1, p0, Lo/j;->postMessage:Z

    if-eqz p1, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    const/4 v4, 0x2

    .line 670
    :goto_0
    iget-boolean v5, p0, Lo/j;->requestPostMessageChannel:Z

    .line 671
    iput-boolean p2, p0, Lo/j;->postMessage:Z

    .line 672
    iput-boolean p2, p0, Lo/j;->requestPostMessageChannel:Z

    move-object v0, p0

    move v2, p3

    move v3, p4

    .line 673
    invoke-direct/range {v0 .. v5}, Lo/j;->onPostMessage(Lo/GoogleReferrer;ZIIZ)V

    :cond_3
    return-void
.end method

.method private onMessageChannelReady(Lo/c$onPostMessage;)V
    .locals 2

    .line 743
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lo/j;->asBinder:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 744
    new-instance v1, Lo/trackingStopped;

    invoke-direct {v1, v0, p1}, Lo/trackingStopped;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V

    invoke-direct {p0, v1}, Lo/j;->onMessageChannelReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V
    .locals 0

    .line 744
    invoke-static {p0, p1}, Lo/j;->onPostMessage(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/r;Lo/allow$onNavigationEvent;)V
    .locals 0

    .line 633
    invoke-interface {p1, p0}, Lo/allow$onNavigationEvent;->extraCallback(Lo/r;)V

    return-void
.end method

.method static synthetic onNavigationEvent(ZZIZZLo/allow$onNavigationEvent;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 272
    invoke-interface {p5, p1, p2}, Lo/allow$onNavigationEvent;->onMessageChannelReady(ZI)V

    :cond_0
    if-eqz p3, :cond_1

    .line 275
    invoke-interface {p5, p4}, Lo/allow$onNavigationEvent;->ICustomTabsCallback(Z)V

    :cond_1
    return-void
.end method

.method private static onPostMessage(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo/c$ICustomTabsCallback;",
            ">;",
            "Lo/c$onPostMessage;",
            ")V"
        }
    .end annotation

    .line 859
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c$ICustomTabsCallback;

    .line 860
    invoke-virtual {v0, p1}, Lo/c$ICustomTabsCallback;->onPostMessage(Lo/c$onPostMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onPostMessage(Lo/GoogleReferrer;ZIIZ)V
    .locals 14

    move-object v0, p0

    .line 723
    invoke-virtual {p0}, Lo/c;->ICustomTabsCallback()Z

    move-result v1

    .line 725
    iget-object v4, v0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    move-object v3, p1

    .line 726
    iput-object v3, v0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    .line 727
    invoke-virtual {p0}, Lo/c;->ICustomTabsCallback()Z

    move-result v2

    .line 728
    new-instance v13, Lo/j$extraCallback;

    iget-object v5, v0, Lo/j;->asBinder:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v6, v0, Lo/j;->onMessageChannelReady:Lo/InstrumentViewMapping;

    iget-boolean v11, v0, Lo/j;->newSession:Z

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_0
    move-object v2, v13

    move-object v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v12}, Lo/j$extraCallback;-><init>(Lo/GoogleReferrer;Lo/GoogleReferrer;Ljava/util/concurrent/CopyOnWriteArrayList;Lo/InstrumentViewMapping;ZIIZZZ)V

    invoke-direct {p0, v13}, Lo/j;->onMessageChannelReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/allow$onNavigationEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 354
    invoke-interface {p0, v0}, Lo/allow$onNavigationEvent;->onPostMessage(I)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/allow$onNavigationEvent;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lo/j;->asBinder:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lo/c$ICustomTabsCallback;

    invoke-direct {v1, p1}, Lo/c$ICustomTabsCallback;-><init>(Lo/allow$onNavigationEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Lo/allow$onMessageChannelReady;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()I
    .locals 1

    .line 198
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget v0, v0, Lo/GoogleReferrer;->onTransact:I

    return v0
.end method

.method public final ICustomTabsService()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lo/j;->newSession:Z

    return v0
.end method

.method public final ICustomTabsService$Stub()J
    .locals 4

    .line 504
    invoke-virtual {p0}, Lo/j;->validateRelationship()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 506
    iget-object v1, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v2, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-object v3, p0, Lo/j;->asInterface:Lo/t$onPostMessage;

    invoke-virtual {v1, v2, v3}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    .line 507
    iget-object v1, p0, Lo/j;->asInterface:Lo/t$onPostMessage;

    iget v2, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    iget v0, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    invoke-virtual {v1, v2, v0}, Lo/t$onPostMessage;->onPostMessage(II)J

    move-result-wide v0

    .line 508
    invoke-static {v0, v1}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v0

    return-wide v0

    .line 510
    :cond_0
    invoke-virtual {p0}, Lo/c;->asInterface()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ICustomTabsService$Stub$Proxy()J
    .locals 2

    .line 536
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-wide v0, v0, Lo/GoogleReferrer;->ICustomTabsService:J

    invoke-static {v0, v1}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final INotificationSideChannel()J
    .locals 5

    .line 556
    invoke-virtual {p0}, Lo/j;->validateRelationship()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v1, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v1, v1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-object v2, p0, Lo/j;->asInterface:Lo/t$onPostMessage;

    invoke-virtual {v0, v1, v2}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    .line 558
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-wide v0, v0, Lo/GoogleReferrer;->onNavigationEvent:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    .line 559
    invoke-virtual {p0}, Lo/j;->extraCommand()I

    move-result v1

    iget-object v2, p0, Lo/c;->onNavigationEvent:Lo/t$onMessageChannelReady;

    invoke-virtual {v0, v1, v2}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0}, Lo/t$onMessageChannelReady;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lo/j;->asInterface:Lo/t$onPostMessage;

    .line 560
    invoke-virtual {v0}, Lo/t$onPostMessage;->onNavigationEvent()J

    move-result-wide v0

    iget-object v2, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-wide v2, v2, Lo/GoogleReferrer;->onNavigationEvent:J

    invoke-static {v2, v3}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 562
    :cond_1
    invoke-virtual {p0}, Lo/j;->IPostMessageService()J

    move-result-wide v0

    return-wide v0
.end method

.method public final IPostMessageService()J
    .locals 3

    .line 515
    invoke-direct {p0}, Lo/j;->INotificationSideChannel$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-wide v0, p0, Lo/j;->ICustomTabsService$Stub:J

    return-wide v0

    .line 517
    :cond_0
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {v0}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-wide v0, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    invoke-static {v0, v1}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v0

    return-wide v0

    .line 520
    :cond_1
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v1, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-wide v1, v1, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    invoke-direct {p0, v0, v1, v2}, Lo/j;->extraCallback(Lo/InstrumentsCompleteJsonAdapter$extraCallback;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final IPostMessageService$Stub()I
    .locals 1

    .line 546
    invoke-virtual {p0}, Lo/j;->validateRelationship()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget v0, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final IPostMessageService$Stub$Proxy()I
    .locals 1

    .line 551
    invoke-virtual {p0}, Lo/j;->validateRelationship()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget v0, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final asBinder()Lo/allow$ICustomTabsCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final cancel()J
    .locals 6

    .line 568
    invoke-direct {p0}, Lo/j;->INotificationSideChannel$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-wide v0, p0, Lo/j;->ICustomTabsService$Stub:J

    return-wide v0

    .line 571
    :cond_0
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v0, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    iget-object v2, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v2, v2, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v2, v2, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 573
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    invoke-virtual {p0}, Lo/j;->extraCommand()I

    move-result v1

    iget-object v2, p0, Lo/c;->onNavigationEvent:Lo/t$onMessageChannelReady;

    invoke-virtual {v0, v1, v2}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0}, Lo/t$onMessageChannelReady;->onPostMessage()J

    move-result-wide v0

    return-wide v0

    .line 575
    :cond_1
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-wide v0, v0, Lo/GoogleReferrer;->warmup:J

    .line 576
    iget-object v2, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v2, v2, Lo/GoogleReferrer;->asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {v2}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 577
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v1, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v1, v1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-object v2, p0, Lo/j;->asInterface:Lo/t$onPostMessage;

    .line 578
    invoke-virtual {v0, v1, v2}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget v1, v1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    .line 580
    invoke-virtual {v0, v1}, Lo/t$onPostMessage;->onNavigationEvent(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 582
    iget-wide v0, v0, Lo/t$onPostMessage;->ICustomTabsCallback:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    .line 585
    :cond_3
    :goto_0
    iget-object v2, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v2, v2, Lo/GoogleReferrer;->asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-direct {p0, v2, v0, v1}, Lo/j;->extraCallback(Lo/InstrumentsCompleteJsonAdapter$extraCallback;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final cancelAll()Lo/JuspaySessionToken;
    .locals 1

    .line 601
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback$Stub:Lo/JuspaySessionToken;

    return-object v0
.end method

.method public final extraCallback(IJ)V
    .locals 9

    .line 321
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    if-ltz p1, :cond_5

    .line 322
    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lo/t;->onMessageChannelReady()I

    move-result v1

    if-ge p1, v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    .line 325
    iput-boolean v1, p0, Lo/j;->requestPostMessageChannel:Z

    .line 326
    iget v2, p0, Lo/j;->extraCommand:I

    add-int/2addr v2, v1

    iput v2, p0, Lo/j;->extraCommand:I

    .line 327
    invoke-virtual {p0}, Lo/j;->validateRelationship()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string p1, "ExoPlayerImpl"

    const-string/jumbo p2, "seekTo ignored because an ad is playing"

    .line 331
    invoke-static {p1, p2}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object p1, p0, Lo/j;->onPostMessage:Landroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    .line 333
    invoke-virtual {p1, v3, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 341
    :cond_1
    iput p1, p0, Lo/j;->ICustomTabsService$Stub$Proxy:I

    .line 342
    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    cmp-long v1, p2, v4

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    move-wide v1, p2

    .line 343
    :goto_0
    iput-wide v1, p0, Lo/j;->ICustomTabsService$Stub:J

    .line 344
    iput v3, p0, Lo/j;->IPostMessageService:I

    goto :goto_2

    :cond_3
    cmp-long v1, p2, v4

    if-nez v1, :cond_4

    .line 346
    iget-object v1, p0, Lo/c;->onNavigationEvent:Lo/t$onMessageChannelReady;

    .line 347
    invoke-virtual {v0, p1, v1}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object v1

    invoke-virtual {v1}, Lo/t$onMessageChannelReady;->extraCallback()J

    move-result-wide v1

    goto :goto_1

    :cond_4
    invoke-static {p2, p3}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide v1

    :goto_1
    move-wide v7, v1

    .line 348
    iget-object v2, p0, Lo/c;->onNavigationEvent:Lo/t$onMessageChannelReady;

    iget-object v3, p0, Lo/j;->asInterface:Lo/t$onPostMessage;

    move-object v1, v0

    move v4, p1

    move-wide v5, v7

    .line 349
    invoke-virtual/range {v1 .. v6}, Lo/t;->ICustomTabsCallback(Lo/t$onMessageChannelReady;Lo/t$onPostMessage;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 350
    invoke-static {v7, v8}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v2

    iput-wide v2, p0, Lo/j;->ICustomTabsService$Stub:J

    .line 351
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lo/j;->IPostMessageService:I

    .line 353
    :goto_2
    iget-object v1, p0, Lo/j;->onRelationshipValidationResult:Lo/ProxyEvent;

    invoke-static {p2, p3}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide p2

    invoke-virtual {v1, v0, p1, p2, p3}, Lo/ProxyEvent;->onPostMessage(Lo/t;IJ)V

    .line 354
    sget-object p1, Lo/BackgroundEvent;->onMessageChannelReady:Lo/BackgroundEvent;

    invoke-direct {p0, p1}, Lo/j;->onMessageChannelReady(Lo/c$onPostMessage;)V

    return-void

    .line 323
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lo/t;IJ)V

    throw v1
.end method

.method final extraCallback(Landroid/os/Message;)V
    .locals 5

    .line 621
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 637
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 638
    iput-object p1, p0, Lo/j;->IPostMessageService$Stub:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 639
    new-instance v0, Lo/Attr;

    invoke-direct {v0, p1}, Lo/Attr;-><init>(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    invoke-direct {p0, v0}, Lo/j;->onMessageChannelReady(Lo/c$onPostMessage;)V

    return-void

    .line 642
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 630
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/r;

    .line 631
    iget-object v0, p0, Lo/j;->mayLaunchUrl:Lo/r;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 632
    iput-object p1, p0, Lo/j;->mayLaunchUrl:Lo/r;

    .line 633
    new-instance v0, Lo/readResponse;

    invoke-direct {v0, p1}, Lo/readResponse;-><init>(Lo/r;)V

    invoke-direct {p0, v0}, Lo/j;->onMessageChannelReady(Lo/c$onPostMessage;)V

    :cond_2
    return-void

    .line 623
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/GoogleReferrer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v2, v1, p1}, Lo/j;->onMessageChannelReady(Lo/GoogleReferrer;IZI)V

    return-void
.end method

.method public final extraCallback(ZI)V
    .locals 10

    .line 254
    invoke-virtual {p0}, Lo/c;->ICustomTabsCallback()Z

    move-result v0

    .line 255
    iget-boolean v1, p0, Lo/j;->newSession:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lo/j;->getInterfaceDescriptor:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eq v1, v4, :cond_2

    .line 260
    iget-object v1, p0, Lo/j;->onRelationshipValidationResult:Lo/ProxyEvent;

    invoke-virtual {v1, v4}, Lo/ProxyEvent;->onPostMessage(Z)V

    .line 262
    :cond_2
    iget-boolean v1, p0, Lo/j;->newSession:Z

    if-eq v1, p1, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 263
    :goto_2
    iput-boolean p1, p0, Lo/j;->newSession:Z

    .line 264
    iput p2, p0, Lo/j;->getInterfaceDescriptor:I

    .line 265
    invoke-virtual {p0}, Lo/c;->ICustomTabsCallback()Z

    move-result v9

    if-eq v0, v9, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-nez v5, :cond_5

    if-eqz v8, :cond_6

    .line 268
    :cond_5
    iget-object p2, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget v7, p2, Lo/GoogleReferrer;->onTransact:I

    .line 269
    new-instance p2, Lo/k$b;

    move-object v4, p2

    move v6, p1

    invoke-direct/range {v4 .. v9}, Lo/k$b;-><init>(ZZIZZ)V

    invoke-direct {p0, p2}, Lo/j;->onMessageChannelReady(Lo/c$onPostMessage;)V

    :cond_6
    return-void
.end method

.method public final extraCommand()I
    .locals 3

    .line 494
    invoke-direct {p0}, Lo/j;->INotificationSideChannel$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget v0, p0, Lo/j;->ICustomTabsService$Stub$Proxy:I

    return v0

    .line 497
    :cond_0
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v1, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v1, v1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-object v2, p0, Lo/j;->asInterface:Lo/t$onPostMessage;

    invoke-virtual {v0, v1, v2}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object v0

    iget v0, v0, Lo/t$onPostMessage;->onNavigationEvent:I

    return v0
.end method

.method public final getDefaultImpl()Lo/InstrumentDataJsonAdapter;
    .locals 1

    .line 606
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    iget-object v0, v0, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    return-object v0
.end method

.method public final getInterfaceDescriptor()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 209
    iget-object v0, p0, Lo/j;->IPostMessageService$Stub:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-object v0
.end method

.method public final mayLaunchUrl()I
    .locals 2

    .line 485
    invoke-direct {p0}, Lo/j;->INotificationSideChannel$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget v0, p0, Lo/j;->IPostMessageService:I

    return v0

    .line 488
    :cond_0
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v1, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v1, v1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final newSession()I
    .locals 1

    .line 297
    iget v0, p0, Lo/j;->ICustomTabsCallback$Stub$Proxy:I

    return v0
.end method

.method public final onMessageChannelReady(I)V
    .locals 1

    .line 288
    iget v0, p0, Lo/j;->ICustomTabsCallback$Stub$Proxy:I

    if-eq v0, p1, :cond_0

    .line 289
    iput p1, p0, Lo/j;->ICustomTabsCallback$Stub$Proxy:I

    .line 290
    iget-object v0, p0, Lo/j;->onRelationshipValidationResult:Lo/ProxyEvent;

    invoke-virtual {v0, p1}, Lo/ProxyEvent;->onNavigationEvent(I)V

    .line 291
    new-instance v0, Lo/AdRevenue;

    invoke-direct {v0, p1}, Lo/AdRevenue;-><init>(I)V

    invoke-direct {p0, v0}, Lo/j;->onMessageChannelReady(Lo/c$onPostMessage;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter;ZZ)V
    .locals 7

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lo/j;->IPostMessageService$Stub:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 228
    iput-object p1, p0, Lo/j;->warmup:Lo/InstrumentsCompleteJsonAdapter;

    const/4 v0, 0x2

    .line 230
    invoke-direct {p0, p2, p3, v0}, Lo/j;->onMessageChannelReady(ZZI)Lo/GoogleReferrer;

    move-result-object v2

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lo/j;->postMessage:Z

    .line 237
    iget v1, p0, Lo/j;->extraCommand:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/j;->extraCommand:I

    .line 238
    iget-object v0, p0, Lo/j;->onRelationshipValidationResult:Lo/ProxyEvent;

    invoke-virtual {v0, p1, p2, p3}, Lo/ProxyEvent;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter;ZZ)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    .line 239
    invoke-direct/range {v1 .. v6}, Lo/j;->onPostMessage(Lo/GoogleReferrer;ZIIZ)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/allow$onNavigationEvent;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lo/j;->asBinder:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/c$ICustomTabsCallback;

    .line 189
    iget-object v2, v1, Lo/c$ICustomTabsCallback;->ICustomTabsCallback:Lo/allow$onNavigationEvent;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v1}, Lo/c$ICustomTabsCallback;->onPostMessage()V

    .line 191
    iget-object v2, p0, Lo/j;->asBinder:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(I)I
    .locals 1

    .line 596
    iget-object v0, p0, Lo/j;->extraCallback:[Lo/HuaweiReferrer;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lo/HuaweiReferrer;->extraCallback()I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, p1, v0}, Lo/j;->extraCallback(ZI)V

    return-void
.end method

.method public final onPostMessage(Lo/GoogleReferrer$1$onMessageChannelReady;)Lo/GoogleReferrer$1;
    .locals 7

    .line 445
    new-instance v6, Lo/GoogleReferrer$1;

    iget-object v1, p0, Lo/j;->onRelationshipValidationResult:Lo/ProxyEvent;

    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v3, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    .line 449
    invoke-virtual {p0}, Lo/j;->extraCommand()I

    move-result v4

    iget-object v5, p0, Lo/j;->ICustomTabsCallback$Stub:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lo/GoogleReferrer$1;-><init>(Lo/GoogleReferrer$1$onNavigationEvent;Lo/GoogleReferrer$1$onMessageChannelReady;Lo/t;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public final onPostMessage(Z)V
    .locals 1

    .line 302
    iget-boolean v0, p0, Lo/j;->ICustomTabsService:Z

    if-eq v0, p1, :cond_0

    .line 303
    iput-boolean p1, p0, Lo/j;->ICustomTabsService:Z

    .line 304
    iget-object v0, p0, Lo/j;->onRelationshipValidationResult:Lo/ProxyEvent;

    invoke-virtual {v0, p1}, Lo/ProxyEvent;->onMessageChannelReady(Z)V

    .line 305
    new-instance v0, Lo/proxyMode;

    invoke-direct {v0, p1}, Lo/proxyMode;-><init>(Z)V

    invoke-direct {p0, v0}, Lo/j;->onMessageChannelReady(Lo/c$onPostMessage;)V

    :cond_0
    return-void
.end method

.method public final onRelationshipValidationResult()Landroid/os/Looper;
    .locals 1

    .line 178
    iget-object v0, p0, Lo/j;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final postMessage()V
    .locals 2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Release "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [ExoPlayerLib/2.10.5] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-static {}, Lo/Purchase;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 421
    invoke-static {v1, v0}, Lo/JusPayWrapper;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lo/j;->warmup:Lo/InstrumentsCompleteJsonAdapter;

    .line 425
    iget-object v1, p0, Lo/j;->onRelationshipValidationResult:Lo/ProxyEvent;

    invoke-virtual {v1}, Lo/ProxyEvent;->onMessageChannelReady()V

    .line 426
    iget-object v1, p0, Lo/j;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 428
    invoke-direct {p0, v0, v0, v1}, Lo/j;->onMessageChannelReady(ZZI)Lo/GoogleReferrer;

    move-result-object v0

    iput-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    return-void
.end method

.method public final requestPostMessageChannel()Lo/r;
    .locals 1

    .line 367
    iget-object v0, p0, Lo/j;->mayLaunchUrl:Lo/r;

    return-object v0
.end method

.method public final setDefaultImpl()Lo/t;
    .locals 1

    .line 611
    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    return-object v0
.end method

.method public final updateVisuals()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lo/j;->ICustomTabsService:Z

    return v0
.end method

.method public final validateRelationship()Z
    .locals 1

    .line 541
    invoke-direct {p0}, Lo/j;->INotificationSideChannel$Stub()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/j;->validateRelationship:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {v0}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final warmup()I
    .locals 1

    .line 203
    iget v0, p0, Lo/j;->getInterfaceDescriptor:I

    return v0
.end method
