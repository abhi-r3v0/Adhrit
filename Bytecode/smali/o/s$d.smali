.class public Lo/s$d;
.super Lo/c;
.source ""

# interfaces
.implements Lo/isInstantApp;
.implements Lo/allow$ICustomTabsCallback;
.implements Lo/allow$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/s$d$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/s$d$onPostMessage;

.field private final ICustomTabsCallback$Stub:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lo/SurchargeDetailsJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lo/w;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService:Lo/p$a;

.field private ICustomTabsService$Stub:I

.field private ICustomTabsService$Stub$Proxy:Lo/getCampaign;

.field private INotificationSideChannel:I

.field private INotificationSideChannel$Default:Lo/getDate;

.field private INotificationSideChannel$Stub:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private INotificationSideChannel$Stub$Proxy:Z

.field private IPostMessageService:I

.field private IPostMessageService$Stub:Lo/getCampaign;

.field private IPostMessageService$Stub$Proxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lo/w$e;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lo/getCardExpiry;",
            ">;"
        }
    .end annotation
.end field

.field private cancel:Lo/u$b;

.field private cancelAll:F

.field private final extraCallback:Lo/j;

.field private extraCommand:Lo/p$a;

.field private getDefaultImpl:Z

.field private final getInterfaceDescriptor:Lo/PaymentInstrumentRequestJsonAdapter;

.field private mayLaunchUrl:Landroid/view/SurfaceHolder;

.field private final newSession:Lo/u;

.field private notify:Lo/InstrumentsCompleteJsonAdapter;

.field private final onMessageChannelReady:Landroid/os/Handler;

.field protected final onPostMessage:[Lo/HuaweiReferrer;

.field private final onRelationshipValidationResult:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lo/UPIJSInterface$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lo/component7;",
            ">;"
        }
    .end annotation
.end field

.field private postMessage:Z

.field private requestPostMessageChannel:Landroid/view/Surface;

.field private setDefaultImpl:Lo/component6;

.field private updateVisuals:I

.field private validateRelationship:Landroid/view/TextureView;

.field private final warmup:Lo/s$a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lo/s;Lo/InstrumentViewMapping;Lo/Validate;Lo/generateInviteUrl;Lo/PaymentInstrumentRequestJsonAdapter;Lo/s$a$extraCallback;Landroid/os/Looper;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/s;",
            "Lo/InstrumentViewMapping;",
            "Lo/Validate;",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;",
            "Lo/PaymentInstrumentRequestJsonAdapter;",
            "Lo/s$a$extraCallback;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 173
    sget-object v8, Lo/CheckoutBuilder$PolingRemoteConfig;->onPostMessage:Lo/CheckoutBuilder$PolingRemoteConfig;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lo/s$d;-><init>(Landroid/content/Context;Lo/s;Lo/InstrumentViewMapping;Lo/Validate;Lo/generateInviteUrl;Lo/PaymentInstrumentRequestJsonAdapter;Lo/s$a$extraCallback;Lo/CheckoutBuilder$PolingRemoteConfig;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lo/s;Lo/InstrumentViewMapping;Lo/Validate;Lo/generateInviteUrl;Lo/PaymentInstrumentRequestJsonAdapter;Lo/s$a$extraCallback;Lo/CheckoutBuilder$PolingRemoteConfig;Landroid/os/Looper;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/s;",
            "Lo/InstrumentViewMapping;",
            "Lo/Validate;",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;",
            "Lo/PaymentInstrumentRequestJsonAdapter;",
            "Lo/s$a$extraCallback;",
            "Lo/CheckoutBuilder$PolingRemoteConfig;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 209
    invoke-direct {p0}, Lo/c;-><init>()V

    .line 210
    iput-object v9, v0, Lo/s$d;->getInterfaceDescriptor:Lo/PaymentInstrumentRequestJsonAdapter;

    .line 211
    new-instance v1, Lo/s$d$onPostMessage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/s$d$onPostMessage;-><init>(Lo/s$d;Lo/s$d$2;)V

    iput-object v1, v0, Lo/s$d;->ICustomTabsCallback:Lo/s$d$onPostMessage;

    .line 212
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lo/s$d;->onTransact:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 213
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lo/s$d;->asBinder:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 214
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lo/s$d;->ICustomTabsCallback$Stub:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 215
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lo/s$d;->onRelationshipValidationResult:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 216
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lo/s$d;->asInterface:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 217
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lo/s$d;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 218
    new-instance v2, Landroid/os/Handler;

    move-object/from16 v10, p9

    invoke-direct {v2, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lo/s$d;->onMessageChannelReady:Landroid/os/Handler;

    .line 219
    iget-object v6, v0, Lo/s$d;->ICustomTabsCallback:Lo/s$d$onPostMessage;

    move-object v1, p2

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    move-object/from16 v7, p5

    .line 220
    invoke-interface/range {v1 .. v7}, Lo/s;->ICustomTabsCallback(Landroid/os/Handler;Lo/getCardExpiry;Lo/w;Lo/SurchargeDetailsJsonAdapter;Lo/UPIJSInterface$1;Lo/generateInviteUrl;)[Lo/HuaweiReferrer;

    move-result-object v1

    iput-object v1, v0, Lo/s$d;->onPostMessage:[Lo/HuaweiReferrer;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 229
    iput v1, v0, Lo/s$d;->cancelAll:F

    const/4 v1, 0x0

    .line 230
    iput v1, v0, Lo/s$d;->INotificationSideChannel:I

    .line 231
    sget-object v1, Lo/u$b;->onMessageChannelReady:Lo/u$b;

    iput-object v1, v0, Lo/s$d;->cancel:Lo/u$b;

    const/4 v1, 0x1

    .line 232
    iput v1, v0, Lo/s$d;->updateVisuals:I

    .line 233
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/s$d;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    .line 236
    new-instance v11, Lo/j;

    iget-object v2, v0, Lo/s$d;->onPostMessage:[Lo/HuaweiReferrer;

    move-object v1, v11

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lo/j;-><init>([Lo/HuaweiReferrer;Lo/InstrumentViewMapping;Lo/Validate;Lo/PaymentInstrumentRequestJsonAdapter;Lo/CheckoutBuilder$PolingRemoteConfig;Landroid/os/Looper;)V

    iput-object v11, v0, Lo/s$d;->extraCallback:Lo/j;

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 238
    invoke-virtual {v1, v11, v2}, Lo/s$a$extraCallback;->onPostMessage(Lo/allow;Lo/CheckoutBuilder$PolingRemoteConfig;)Lo/s$a;

    move-result-object v1

    iput-object v1, v0, Lo/s$d;->warmup:Lo/s$a;

    .line 239
    invoke-virtual {p0, v1}, Lo/s$d;->ICustomTabsCallback(Lo/allow$onNavigationEvent;)V

    .line 240
    iget-object v1, v0, Lo/s$d;->ICustomTabsCallback:Lo/s$d$onPostMessage;

    invoke-virtual {p0, v1}, Lo/s$d;->ICustomTabsCallback(Lo/allow$onNavigationEvent;)V

    .line 241
    iget-object v1, v0, Lo/s$d;->asInterface:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Lo/s$d;->warmup:Lo/s$a;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v1, v0, Lo/s$d;->onTransact:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Lo/s$d;->warmup:Lo/s$a;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, v0, Lo/s$d;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Lo/s$d;->warmup:Lo/s$a;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, v0, Lo/s$d;->asBinder:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Lo/s$d;->warmup:Lo/s$a;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, v0, Lo/s$d;->warmup:Lo/s$a;

    invoke-virtual {p0, v1}, Lo/s$d;->onNavigationEvent(Lo/UPIJSInterface$1;)V

    .line 246
    iget-object v1, v0, Lo/s$d;->onMessageChannelReady:Landroid/os/Handler;

    iget-object v2, v0, Lo/s$d;->warmup:Lo/s$a;

    invoke-interface {v9, v1, v2}, Lo/PaymentInstrumentRequestJsonAdapter;->onPostMessage(Landroid/os/Handler;Lo/PaymentInstrumentRequestJsonAdapter$onNavigationEvent;)V

    .line 247
    instance-of v1, v8, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    if-eqz v1, :cond_0

    .line 248
    move-object v1, v8

    check-cast v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object v2, v0, Lo/s$d;->onMessageChannelReady:Landroid/os/Handler;

    iget-object v3, v0, Lo/s$d;->warmup:Lo/s$a;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->onNavigationEvent(Landroid/os/Handler;Lo/setBaseURL;)V

    .line 250
    :cond_0
    new-instance v1, Lo/u;

    iget-object v2, v0, Lo/s$d;->ICustomTabsCallback:Lo/s$d$onPostMessage;

    move-object v3, p1

    invoke-direct {v1, p1, v2}, Lo/u;-><init>(Landroid/content/Context;Lo/u$onNavigationEvent;)V

    iput-object v1, v0, Lo/s$d;->newSession:Lo/u;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/s$d;I)I
    .locals 0

    .line 68
    iput p1, p0, Lo/s$d;->INotificationSideChannel:I

    return p1
.end method

.method static synthetic ICustomTabsCallback(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/s$d;->onTransact:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private ICustomTabsCallback(ZI)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 1235
    :goto_0
    iget-object v3, p0, Lo/s$d;->extraCallback:Lo/j;

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v3, v0, v2}, Lo/j;->extraCallback(ZI)V

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/s$d;->onRelationshipValidationResult:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private INotificationSideChannel$Default()V
    .locals 3

    .line 1241
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lo/s$d;->onRelationshipValidationResult()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1242
    iget-boolean v0, p0, Lo/s$d;->INotificationSideChannel$Stub$Proxy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v1, "SimpleExoPlayer"

    const-string v2, "Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v2, v0}, Lo/JusPayWrapper;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 1247
    iput-boolean v0, p0, Lo/s$d;->INotificationSideChannel$Stub$Proxy:Z

    :cond_1
    return-void
.end method

.method private INotificationSideChannel$Stub()V
    .locals 7

    .line 1221
    iget v0, p0, Lo/s$d;->cancelAll:F

    iget-object v1, p0, Lo/s$d;->newSession:Lo/u;

    invoke-virtual {v1}, Lo/u;->onNavigationEvent()F

    move-result v1

    mul-float v0, v0, v1

    .line 1222
    iget-object v1, p0, Lo/s$d;->onPostMessage:[Lo/HuaweiReferrer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1223
    invoke-interface {v4}, Lo/HuaweiReferrer;->extraCallback()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1224
    iget-object v5, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v5, v4}, Lo/j;->onPostMessage(Lo/GoogleReferrer$1$onMessageChannelReady;)Lo/GoogleReferrer$1;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lo/GoogleReferrer$1;->onNavigationEvent(I)Lo/GoogleReferrer$1;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Lo/GoogleReferrer$1;->onNavigationEvent(Ljava/lang/Object;)Lo/GoogleReferrer$1;

    move-result-object v4

    invoke-virtual {v4}, Lo/GoogleReferrer$1;->ICustomTabsCallback$Stub()Lo/GoogleReferrer$1;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic asBinder(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/s$d;->asBinder:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic asInterface(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/s$d;->ICustomTabsCallback$Stub:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/s$d;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/s$d;Lo/getCampaign;)Lo/getCampaign;
    .locals 0

    .line 68
    iput-object p1, p0, Lo/s$d;->ICustomTabsService$Stub$Proxy:Lo/getCampaign;

    return-object p1
.end method

.method static synthetic extraCallback(Lo/s$d;Lo/p$a;)Lo/p$a;
    .locals 0

    .line 68
    iput-object p1, p0, Lo/s$d;->extraCommand:Lo/p$a;

    return-object p1
.end method

.method static synthetic extraCallback(Lo/s$d;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lo/s$d;->getDefaultImpl:Z

    return p1
.end method

.method static synthetic getInterfaceDescriptor(Lo/s$d;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lo/s$d;->getDefaultImpl:Z

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/s$d;)I
    .locals 0

    .line 68
    iget p0, p0, Lo/s$d;->INotificationSideChannel:I

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/s$d;Lo/p$a;)Lo/p$a;
    .locals 0

    .line 68
    iput-object p1, p0, Lo/s$d;->ICustomTabsService:Lo/p$a;

    return-object p1
.end method

.method static synthetic onMessageChannelReady(Lo/s$d;Landroid/view/Surface;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lo/s$d;->onPostMessage(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/s$d;)Landroid/view/Surface;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/s$d;->requestPostMessageChannel:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/s$d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 68
    iput-object p1, p0, Lo/s$d;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    return-object p1
.end method

.method private onNavigationEvent(II)V
    .locals 2

    .line 1211
    iget v0, p0, Lo/s$d;->ICustomTabsService$Stub:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lo/s$d;->IPostMessageService:I

    if-eq p2, v0, :cond_1

    .line 1212
    :cond_0
    iput p1, p0, Lo/s$d;->ICustomTabsService$Stub:I

    .line 1213
    iput p2, p0, Lo/s$d;->IPostMessageService:I

    .line 1214
    iget-object v0, p0, Lo/s$d;->onTransact:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/component7;

    .line 1215
    invoke-interface {v1, p1, p2}, Lo/component7;->onMessageChannelReady(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic onNavigationEvent(Lo/s$d;ZI)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lo/s$d;->ICustomTabsCallback(ZI)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/s$d;->asInterface:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/s$d;Lo/getCampaign;)Lo/getCampaign;
    .locals 0

    .line 68
    iput-object p1, p0, Lo/s$d;->IPostMessageService$Stub:Lo/getCampaign;

    return-object p1
.end method

.method private onPostMessage(Landroid/view/Surface;Z)V
    .locals 7

    .line 1185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    iget-object v1, p0, Lo/s$d;->onPostMessage:[Lo/HuaweiReferrer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1187
    invoke-interface {v4}, Lo/HuaweiReferrer;->extraCallback()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1188
    iget-object v5, p0, Lo/s$d;->extraCallback:Lo/j;

    .line 1189
    invoke-virtual {v5, v4}, Lo/j;->onPostMessage(Lo/GoogleReferrer$1$onMessageChannelReady;)Lo/GoogleReferrer$1;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lo/GoogleReferrer$1;->onNavigationEvent(I)Lo/GoogleReferrer$1;

    move-result-object v4

    invoke-virtual {v4, p1}, Lo/GoogleReferrer$1;->onNavigationEvent(Ljava/lang/Object;)Lo/GoogleReferrer$1;

    move-result-object v4

    invoke-virtual {v4}, Lo/GoogleReferrer$1;->ICustomTabsCallback$Stub()Lo/GoogleReferrer$1;

    move-result-object v4

    .line 1188
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1192
    :cond_1
    iget-object v1, p0, Lo/s$d;->requestPostMessageChannel:Landroid/view/Surface;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 1195
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/GoogleReferrer$1;

    .line 1196
    invoke-virtual {v1}, Lo/GoogleReferrer$1;->warmup()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1199
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1202
    :cond_2
    iget-boolean v0, p0, Lo/s$d;->postMessage:Z

    if-eqz v0, :cond_3

    .line 1203
    iget-object v0, p0, Lo/s$d;->requestPostMessageChannel:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1206
    :cond_3
    iput-object p1, p0, Lo/s$d;->requestPostMessageChannel:Landroid/view/Surface;

    .line 1207
    iput-boolean p2, p0, Lo/s$d;->postMessage:Z

    return-void
.end method

.method static synthetic onPostMessage(Lo/s$d;II)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lo/s$d;->onNavigationEvent(II)V

    return-void
.end method

.method static synthetic onRelationshipValidationResult(Lo/s$d;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/s$d;->INotificationSideChannel$Stub:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method

.method static synthetic onTransact(Lo/s$d;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Stub()V

    return-void
.end method

.method private postMessage()V
    .locals 3

    .line 1168
    iget-object v0, p0, Lo/s$d;->validateRelationship:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1169
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lo/s$d;->ICustomTabsCallback:Lo/s$d$onPostMessage;

    if-eq v0, v2, :cond_0

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 1170
    invoke-static {v0, v2}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v0, p0, Lo/s$d;->validateRelationship:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1174
    :goto_0
    iput-object v1, p0, Lo/s$d;->validateRelationship:Landroid/view/TextureView;

    .line 1176
    :cond_1
    iget-object v0, p0, Lo/s$d;->mayLaunchUrl:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 1177
    iget-object v2, p0, Lo/s$d;->ICustomTabsCallback:Lo/s$d$onPostMessage;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1178
    iput-object v1, p0, Lo/s$d;->mayLaunchUrl:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/view/Surface;)V
    .locals 1

    .line 313
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    if-eqz p1, :cond_0

    .line 314
    iget-object v0, p0, Lo/s$d;->requestPostMessageChannel:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 315
    invoke-virtual {p0, p1}, Lo/s$d;->extraCallback(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public ICustomTabsCallback(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 352
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lo/s$d;->mayLaunchUrl:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 354
    invoke-virtual {p0, p1}, Lo/s$d;->onNavigationEvent(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public ICustomTabsCallback(Landroid/view/TextureView;)V
    .locals 1

    .line 395
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p0, Lo/s$d;->validateRelationship:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 397
    invoke-virtual {p0, p1}, Lo/s$d;->extraCallback(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public ICustomTabsCallback(Lo/allow$onNavigationEvent;)V
    .locals 1

    .line 865
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 866
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0, p1}, Lo/j;->ICustomTabsCallback(Lo/allow$onNavigationEvent;)V

    return-void
.end method

.method public ICustomTabsCallback(Lo/component6;)V
    .locals 5

    .line 641
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 642
    iget-object v0, p0, Lo/s$d;->setDefaultImpl:Lo/component6;

    if-eq v0, p1, :cond_0

    return-void

    .line 645
    :cond_0
    iget-object p1, p0, Lo/s$d;->onPostMessage:[Lo/HuaweiReferrer;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 646
    invoke-interface {v2}, Lo/HuaweiReferrer;->extraCallback()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 647
    iget-object v3, p0, Lo/s$d;->extraCallback:Lo/j;

    .line 648
    invoke-virtual {v3, v2}, Lo/j;->onPostMessage(Lo/GoogleReferrer$1$onMessageChannelReady;)Lo/GoogleReferrer$1;

    move-result-object v2

    const/4 v3, 0x6

    .line 649
    invoke-virtual {v2, v3}, Lo/GoogleReferrer$1;->onNavigationEvent(I)Lo/GoogleReferrer$1;

    move-result-object v2

    const/4 v3, 0x0

    .line 650
    invoke-virtual {v2, v3}, Lo/GoogleReferrer$1;->onNavigationEvent(Ljava/lang/Object;)Lo/GoogleReferrer$1;

    move-result-object v2

    .line 651
    invoke-virtual {v2}, Lo/GoogleReferrer$1;->ICustomTabsCallback$Stub()Lo/GoogleReferrer$1;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ICustomTabsCallback(Lo/getDate;)V
    .locals 6

    .line 658
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 659
    iput-object p1, p0, Lo/s$d;->INotificationSideChannel$Default:Lo/getDate;

    .line 660
    iget-object v0, p0, Lo/s$d;->onPostMessage:[Lo/HuaweiReferrer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 661
    invoke-interface {v3}, Lo/HuaweiReferrer;->extraCallback()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 662
    iget-object v4, p0, Lo/s$d;->extraCallback:Lo/j;

    .line 663
    invoke-virtual {v4, v3}, Lo/j;->onPostMessage(Lo/GoogleReferrer$1$onMessageChannelReady;)Lo/GoogleReferrer$1;

    move-result-object v3

    const/4 v4, 0x7

    .line 664
    invoke-virtual {v3, v4}, Lo/GoogleReferrer$1;->onNavigationEvent(I)Lo/GoogleReferrer$1;

    move-result-object v3

    .line 665
    invoke-virtual {v3, p1}, Lo/GoogleReferrer$1;->onNavigationEvent(Ljava/lang/Object;)Lo/GoogleReferrer$1;

    move-result-object v3

    .line 666
    invoke-virtual {v3}, Lo/GoogleReferrer$1;->ICustomTabsCallback$Stub()Lo/GoogleReferrer$1;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ICustomTabsCallback$Stub()Lo/allow$onMessageChannelReady;
    .locals 0

    return-object p0
.end method

.method public ICustomTabsCallback$Stub$Proxy()I
    .locals 1

    .line 877
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 878
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    return v0
.end method

.method public ICustomTabsService()Z
    .locals 1

    .line 933
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 934
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->ICustomTabsService()Z

    move-result v0

    return v0
.end method

.method public ICustomTabsService$Stub()J
    .locals 2

    .line 1113
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1114
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->ICustomTabsService$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public ICustomTabsService$Stub$Proxy()J
    .locals 2

    .line 1131
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1132
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->ICustomTabsService$Stub$Proxy()J

    move-result-wide v0

    return-wide v0
.end method

.method public INotificationSideChannel()J
    .locals 2

    .line 1155
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1156
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->INotificationSideChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public IPostMessageService()J
    .locals 2

    .line 1119
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1120
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->IPostMessageService()J

    move-result-wide v0

    return-wide v0
.end method

.method public IPostMessageService$Stub()I
    .locals 1

    .line 1143
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1144
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->IPostMessageService$Stub()I

    move-result v0

    return v0
.end method

.method public IPostMessageService$Stub$Proxy()I
    .locals 1

    .line 1149
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1150
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->IPostMessageService$Stub$Proxy()I

    move-result v0

    return v0
.end method

.method public asBinder()Lo/allow$ICustomTabsCallback;
    .locals 0

    return-object p0
.end method

.method public cancel()J
    .locals 2

    .line 1161
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1162
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->cancel()J

    move-result-wide v0

    return-wide v0
.end method

.method public cancelAll()Lo/JuspaySessionToken;
    .locals 1

    .line 1076
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1077
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->cancelAll()Lo/JuspaySessionToken;

    move-result-object v0

    return-object v0
.end method

.method public extraCallback(IJ)V
    .locals 1

    .line 969
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 970
    iget-object v0, p0, Lo/s$d;->warmup:Lo/s$a;

    invoke-virtual {v0}, Lo/s$a;->onNavigationEvent()V

    .line 971
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0, p1, p2, p3}, Lo/j;->extraCallback(IJ)V

    return-void
.end method

.method public extraCallback(Landroid/view/Surface;)V
    .locals 1

    .line 321
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 322
    invoke-direct {p0}, Lo/s$d;->postMessage()V

    const/4 v0, 0x0

    .line 323
    invoke-direct {p0, p1, v0}, Lo/s$d;->onPostMessage(Landroid/view/Surface;Z)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 325
    :goto_0
    invoke-direct {p0, v0, v0}, Lo/s$d;->onNavigationEvent(II)V

    return-void
.end method

.method public extraCallback(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lo/s$d;->ICustomTabsCallback(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public extraCallback(Landroid/view/TextureView;)V
    .locals 5

    .line 370
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 371
    invoke-direct {p0}, Lo/s$d;->postMessage()V

    .line 372
    iput-object p1, p0, Lo/s$d;->validateRelationship:Landroid/view/TextureView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 374
    invoke-direct {p0, v1, v0}, Lo/s$d;->onPostMessage(Landroid/view/Surface;Z)V

    .line 375
    invoke-direct {p0, v2, v2}, Lo/s$d;->onNavigationEvent(II)V

    return-void

    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "SimpleExoPlayer"

    const-string v4, "Replacing existing SurfaceTextureListener."

    .line 378
    invoke-static {v3, v4}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_1
    iget-object v3, p0, Lo/s$d;->ICustomTabsCallback:Lo/s$d$onPostMessage;

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 381
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_3

    .line 384
    invoke-direct {p0, v1, v0}, Lo/s$d;->onPostMessage(Landroid/view/Surface;Z)V

    .line 385
    invoke-direct {p0, v2, v2}, Lo/s$d;->onNavigationEvent(II)V

    return-void

    .line 387
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v1, v0}, Lo/s$d;->onPostMessage(Landroid/view/Surface;Z)V

    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lo/s$d;->onNavigationEvent(II)V

    return-void
.end method

.method public extraCommand()I
    .locals 1

    .line 1107
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1108
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->extraCommand()I

    move-result v0

    return v0
.end method

.method public getDefaultImpl()Lo/InstrumentDataJsonAdapter;
    .locals 1

    .line 1082
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1083
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->getDefaultImpl()Lo/InstrumentDataJsonAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceDescriptor()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 890
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 891
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->getInterfaceDescriptor()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public mayLaunchUrl()V
    .locals 3

    .line 1020
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1021
    iget-object v0, p0, Lo/s$d;->newSession:Lo/u;

    invoke-virtual {v0}, Lo/u;->extraCallback()V

    .line 1022
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->postMessage()V

    .line 1023
    invoke-direct {p0}, Lo/s$d;->postMessage()V

    .line 1024
    iget-object v0, p0, Lo/s$d;->requestPostMessageChannel:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1025
    iget-boolean v2, p0, Lo/s$d;->postMessage:Z

    if-eqz v2, :cond_0

    .line 1026
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1028
    :cond_0
    iput-object v1, p0, Lo/s$d;->requestPostMessageChannel:Landroid/view/Surface;

    .line 1030
    :cond_1
    iget-object v0, p0, Lo/s$d;->notify:Lo/InstrumentsCompleteJsonAdapter;

    if-eqz v0, :cond_2

    .line 1031
    iget-object v2, p0, Lo/s$d;->warmup:Lo/s$a;

    invoke-interface {v0, v2}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Lo/Account;)V

    .line 1032
    iput-object v1, p0, Lo/s$d;->notify:Lo/InstrumentsCompleteJsonAdapter;

    .line 1034
    :cond_2
    iget-boolean v0, p0, Lo/s$d;->getDefaultImpl:Z

    if-eqz v0, :cond_3

    .line 1035
    iget-object v0, p0, Lo/s$d;->INotificationSideChannel$Stub:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->onMessageChannelReady(I)V

    .line 1036
    iput-boolean v1, p0, Lo/s$d;->getDefaultImpl:Z

    .line 1038
    :cond_3
    iget-object v0, p0, Lo/s$d;->getInterfaceDescriptor:Lo/PaymentInstrumentRequestJsonAdapter;

    iget-object v1, p0, Lo/s$d;->warmup:Lo/s$a;

    invoke-interface {v0, v1}, Lo/PaymentInstrumentRequestJsonAdapter;->onPostMessage(Lo/PaymentInstrumentRequestJsonAdapter$onNavigationEvent;)V

    .line 1039
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/s$d;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    return-void
.end method

.method public newSession()I
    .locals 1

    .line 939
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 940
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->newSession()I

    move-result v0

    return v0
.end method

.method public onMessageChannelReady(F)V
    .locals 2

    .line 473
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 474
    invoke-static {p1, v0, v1}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(FFF)F

    move-result p1

    .line 475
    iget v0, p0, Lo/s$d;->cancelAll:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    iput p1, p0, Lo/s$d;->cancelAll:F

    .line 479
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Stub()V

    .line 480
    iget-object v0, p0, Lo/s$d;->asBinder:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/w$e;

    .line 481
    invoke-interface {v1, p1}, Lo/w$e;->onNavigationEvent(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMessageChannelReady(I)V
    .locals 1

    .line 945
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 946
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0, p1}, Lo/j;->onMessageChannelReady(I)V

    return-void
.end method

.method public onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter;)V
    .locals 1

    const/4 v0, 0x1

    .line 905
    invoke-virtual {p0, p1, v0, v0}, Lo/s$d;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter;ZZ)V

    return-void
.end method

.method public onMessageChannelReady(Lo/SurchargeDetailsJsonAdapter;)V
    .locals 1

    .line 726
    iget-object v0, p0, Lo/s$d;->ICustomTabsCallback$Stub:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onMessageChannelReady(Lo/allow$onNavigationEvent;)V
    .locals 1

    .line 871
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 872
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0, p1}, Lo/j;->onMessageChannelReady(Lo/allow$onNavigationEvent;)V

    return-void
.end method

.method public onMessageChannelReady(Lo/component6;)V
    .locals 6

    .line 626
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 627
    iput-object p1, p0, Lo/s$d;->setDefaultImpl:Lo/component6;

    .line 628
    iget-object v0, p0, Lo/s$d;->onPostMessage:[Lo/HuaweiReferrer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 629
    invoke-interface {v3}, Lo/HuaweiReferrer;->extraCallback()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 630
    iget-object v4, p0, Lo/s$d;->extraCallback:Lo/j;

    .line 631
    invoke-virtual {v4, v3}, Lo/j;->onPostMessage(Lo/GoogleReferrer$1$onMessageChannelReady;)Lo/GoogleReferrer$1;

    move-result-object v3

    const/4 v4, 0x6

    .line 632
    invoke-virtual {v3, v4}, Lo/GoogleReferrer$1;->onNavigationEvent(I)Lo/GoogleReferrer$1;

    move-result-object v3

    .line 633
    invoke-virtual {v3, p1}, Lo/GoogleReferrer$1;->onNavigationEvent(Ljava/lang/Object;)Lo/GoogleReferrer$1;

    move-result-object v3

    .line 634
    invoke-virtual {v3}, Lo/GoogleReferrer$1;->ICustomTabsCallback$Stub()Lo/GoogleReferrer$1;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMessageChannelReady(Lo/component7;)V
    .locals 1

    .line 616
    iget-object v0, p0, Lo/s$d;->onTransact:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onNavigationEvent(I)I
    .locals 1

    .line 1070
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1071
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0, p1}, Lo/j;->onNavigationEvent(I)I

    move-result p1

    return p1
.end method

.method public onNavigationEvent(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 330
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 331
    invoke-direct {p0}, Lo/s$d;->postMessage()V

    .line 332
    iput-object p1, p0, Lo/s$d;->mayLaunchUrl:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 337
    iget-object v1, p0, Lo/s$d;->ICustomTabsCallback:Lo/s$d$onPostMessage;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 338
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-direct {p0, v1, v0}, Lo/s$d;->onPostMessage(Landroid/view/Surface;Z)V

    .line 341
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lo/s$d;->onNavigationEvent(II)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 344
    invoke-direct {p0, p1, v0}, Lo/s$d;->onPostMessage(Landroid/view/Surface;Z)V

    .line 345
    invoke-direct {p0, v0, v0}, Lo/s$d;->onNavigationEvent(II)V

    return-void
.end method

.method public onNavigationEvent(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lo/s$d;->onNavigationEvent(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter;ZZ)V
    .locals 2

    .line 910
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 911
    iget-object v0, p0, Lo/s$d;->notify:Lo/InstrumentsCompleteJsonAdapter;

    if-eqz v0, :cond_0

    .line 912
    iget-object v1, p0, Lo/s$d;->warmup:Lo/s$a;

    invoke-interface {v0, v1}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Lo/Account;)V

    .line 913
    iget-object v0, p0, Lo/s$d;->warmup:Lo/s$a;

    invoke-virtual {v0}, Lo/s$a;->ICustomTabsCallback()V

    .line 915
    :cond_0
    iput-object p1, p0, Lo/s$d;->notify:Lo/InstrumentsCompleteJsonAdapter;

    .line 916
    iget-object v0, p0, Lo/s$d;->onMessageChannelReady:Landroid/os/Handler;

    iget-object v1, p0, Lo/s$d;->warmup:Lo/s$a;

    invoke-interface {p1, v0, v1}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Landroid/os/Handler;Lo/Account;)V

    .line 918
    iget-object v0, p0, Lo/s$d;->newSession:Lo/u;

    invoke-virtual {p0}, Lo/s$d;->ICustomTabsService()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/u;->onMessageChannelReady(Z)I

    move-result v0

    .line 919
    invoke-virtual {p0}, Lo/s$d;->ICustomTabsService()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Lo/s$d;->ICustomTabsCallback(ZI)V

    .line 920
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0, p1, p2, p3}, Lo/j;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter;ZZ)V

    return-void
.end method

.method public onNavigationEvent(Lo/UPIJSInterface$1;)V
    .locals 1

    .line 756
    iget-object v0, p0, Lo/s$d;->onRelationshipValidationResult:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onNavigationEvent(Lo/component7;)V
    .locals 1

    .line 621
    iget-object v0, p0, Lo/s$d;->onTransact:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onNavigationEvent(Z)V
    .locals 2

    .line 925
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 927
    iget-object v0, p0, Lo/s$d;->newSession:Lo/u;

    invoke-virtual {p0}, Lo/s$d;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lo/u;->onPostMessage(ZI)I

    move-result v0

    .line 928
    invoke-direct {p0, p1, v0}, Lo/s$d;->ICustomTabsCallback(ZI)V

    return-void
.end method

.method public onPostMessage(Lo/SurchargeDetailsJsonAdapter;)V
    .locals 1

    .line 718
    iget-object v0, p0, Lo/s$d;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lo/s$d;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    invoke-interface {p1, v0}, Lo/SurchargeDetailsJsonAdapter;->extraCallback(Ljava/util/List;)V

    .line 721
    :cond_0
    iget-object v0, p0, Lo/s$d;->ICustomTabsCallback$Stub:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPostMessage(Lo/getDate;)V
    .locals 5

    .line 673
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 674
    iget-object v0, p0, Lo/s$d;->INotificationSideChannel$Default:Lo/getDate;

    if-eq v0, p1, :cond_0

    return-void

    .line 677
    :cond_0
    iget-object p1, p0, Lo/s$d;->onPostMessage:[Lo/HuaweiReferrer;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 678
    invoke-interface {v2}, Lo/HuaweiReferrer;->extraCallback()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 679
    iget-object v3, p0, Lo/s$d;->extraCallback:Lo/j;

    .line 680
    invoke-virtual {v3, v2}, Lo/j;->onPostMessage(Lo/GoogleReferrer$1$onMessageChannelReady;)Lo/GoogleReferrer$1;

    move-result-object v2

    const/4 v3, 0x7

    .line 681
    invoke-virtual {v2, v3}, Lo/GoogleReferrer$1;->onNavigationEvent(I)Lo/GoogleReferrer$1;

    move-result-object v2

    const/4 v3, 0x0

    .line 682
    invoke-virtual {v2, v3}, Lo/GoogleReferrer$1;->onNavigationEvent(Ljava/lang/Object;)Lo/GoogleReferrer$1;

    move-result-object v2

    .line 683
    invoke-virtual {v2}, Lo/GoogleReferrer$1;->ICustomTabsCallback$Stub()Lo/GoogleReferrer$1;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPostMessage(Lo/u$b;Z)V
    .locals 6

    .line 418
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 419
    iget-object v0, p0, Lo/s$d;->cancel:Lo/u$b;

    invoke-static {v0, p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 420
    iput-object p1, p0, Lo/s$d;->cancel:Lo/u$b;

    .line 421
    iget-object v0, p0, Lo/s$d;->onPostMessage:[Lo/HuaweiReferrer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 422
    invoke-interface {v3}, Lo/HuaweiReferrer;->extraCallback()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 423
    iget-object v4, p0, Lo/s$d;->extraCallback:Lo/j;

    .line 424
    invoke-virtual {v4, v3}, Lo/j;->onPostMessage(Lo/GoogleReferrer$1$onMessageChannelReady;)Lo/GoogleReferrer$1;

    move-result-object v3

    const/4 v4, 0x3

    .line 425
    invoke-virtual {v3, v4}, Lo/GoogleReferrer$1;->onNavigationEvent(I)Lo/GoogleReferrer$1;

    move-result-object v3

    .line 426
    invoke-virtual {v3, p1}, Lo/GoogleReferrer$1;->onNavigationEvent(Ljava/lang/Object;)Lo/GoogleReferrer$1;

    move-result-object v3

    .line 427
    invoke-virtual {v3}, Lo/GoogleReferrer$1;->ICustomTabsCallback$Stub()Lo/GoogleReferrer$1;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lo/s$d;->asBinder:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/w$e;

    .line 431
    invoke-interface {v1, p1}, Lo/w$e;->onMessageChannelReady(Lo/u$b;)V

    goto :goto_1

    .line 436
    :cond_2
    iget-object v0, p0, Lo/s$d;->newSession:Lo/u;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 438
    :goto_2
    invoke-virtual {p0}, Lo/s$d;->ICustomTabsService()Z

    move-result p2

    invoke-virtual {p0}, Lo/s$d;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 437
    invoke-virtual {v0, p1, p2, v1}, Lo/u;->onNavigationEvent(Lo/u$b;ZI)I

    move-result p1

    .line 439
    invoke-virtual {p0}, Lo/s$d;->ICustomTabsService()Z

    move-result p2

    invoke-direct {p0, p2, p1}, Lo/s$d;->ICustomTabsCallback(ZI)V

    return-void
.end method

.method public onPostMessage(Z)V
    .locals 1

    .line 951
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 952
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0, p1}, Lo/j;->onPostMessage(Z)V

    return-void
.end method

.method public onRelationshipValidationResult()Landroid/os/Looper;
    .locals 1

    .line 860
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->onRelationshipValidationResult()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public requestPostMessageChannel()Lo/r;
    .locals 1

    .line 982
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 983
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->requestPostMessageChannel()Lo/r;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultImpl()Lo/t;
    .locals 1

    .line 1088
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1089
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->setDefaultImpl()Lo/t;

    move-result-object v0

    return-object v0
.end method

.method public updateVisuals()Z
    .locals 1

    .line 957
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 958
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->updateVisuals()Z

    move-result v0

    return v0
.end method

.method public validateRelationship()Z
    .locals 1

    .line 1137
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 1138
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->validateRelationship()Z

    move-result v0

    return v0
.end method

.method public warmup()I
    .locals 1

    .line 883
    invoke-direct {p0}, Lo/s$d;->INotificationSideChannel$Default()V

    .line 884
    iget-object v0, p0, Lo/s$d;->extraCallback:Lo/j;

    invoke-virtual {v0}, Lo/j;->warmup()I

    move-result v0

    return v0
.end method
