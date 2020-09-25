.class public final Lo/EntityJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private final ICustomTabsCallback$Stub:Landroid/content/Context;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Z

.field private ICustomTabsService$Stub:F

.field private final ICustomTabsService$Stub$Proxy:Lo/Entity;

.field private final IPostMessageService:Landroid/graphics/Rect;

.field private final asBinder:Landroid/os/PowerManager;

.field private final asInterface:Landroid/app/KeyguardManager;

.field private extraCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private extraCommand:Landroid/content/BroadcastReceiver;

.field private getInterfaceDescriptor:Z

.field private mayLaunchUrl:Z

.field private newSession:Lo/FarmDetailsResponse;

.field private final onMessageChannelReady:Lo/RedeemInitiatedRewardDetailsResponse;

.field private final onNavigationEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;",
            ">;"
        }
    .end annotation
.end field

.field protected final onPostMessage:Lo/CtaClaimedJsonAdapter;

.field private final onRelationshipValidationResult:Landroid/util/DisplayMetrics;

.field private final onTransact:Landroid/view/WindowManager;

.field private postMessage:Z

.field private final requestPostMessageChannel:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo/CtaClaimed;",
            ">;"
        }
    .end annotation
.end field

.field private updateVisuals:Lo/getColorSectionPos;

.field private final validateRelationship:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo/LeaderBoardJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/DataListJsonAdapter;Lo/RedeemInitiatedRewardDetailsResponse;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/EntityJsonAdapter;->getInterfaceDescriptor:Z

    iput-boolean v0, p0, Lo/EntityJsonAdapter;->ICustomTabsService:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lo/EntityJsonAdapter;->requestPostMessageChannel:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lo/EntityJsonAdapter;->validateRelationship:Ljava/util/HashSet;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lo/EntityJsonAdapter;->IPostMessageService:Landroid/graphics/Rect;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lo/EntityJsonAdapter;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lo/EntityJsonAdapter;->onMessageChannelReady:Lo/RedeemInitiatedRewardDetailsResponse;

    new-instance p5, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {p5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lo/EntityJsonAdapter;->extraCallback:Ljava/lang/ref/WeakReference;

    const/4 p5, 0x1

    iput-boolean p5, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    iput-boolean v0, p0, Lo/EntityJsonAdapter;->mayLaunchUrl:Z

    new-instance v0, Lo/getColorSectionPos;

    const-wide/16 v1, 0xc8

    invoke-direct {v0, v1, v2}, Lo/getColorSectionPos;-><init>(J)V

    iput-object v0, p0, Lo/EntityJsonAdapter;->updateVisuals:Lo/getColorSectionPos;

    new-instance v0, Lo/CtaClaimedJsonAdapter;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p2, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    iget-object v7, p3, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->newSession:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent()Z

    move-result v8

    iget-boolean v9, p2, Lo/setCurrentItem$default;->onRelationshipValidationResult:Z

    move-object v3, v0

    move-object v5, p4

    invoke-direct/range {v3 .. v9}, Lo/CtaClaimedJsonAdapter;-><init>(Ljava/lang/String;Lo/DataListJsonAdapter;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V

    iput-object v0, p0, Lo/EntityJsonAdapter;->onPostMessage:Lo/CtaClaimedJsonAdapter;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lo/EntityJsonAdapter;->onTransact:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lo/EntityJsonAdapter;->asBinder:Landroid/os/PowerManager;

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lo/EntityJsonAdapter;->asInterface:Landroid/app/KeyguardManager;

    iput-object p1, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    new-instance p2, Lo/Entity;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lo/Entity;-><init>(Lo/EntityJsonAdapter;Landroid/os/Handler;)V

    iput-object p2, p0, Lo/EntityJsonAdapter;->ICustomTabsService$Stub$Proxy:Lo/Entity;

    iget-object p2, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object p4, p0, Lo/EntityJsonAdapter;->ICustomTabsService$Stub$Proxy:Lo/Entity;

    invoke-virtual {p2, p3, p5, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lo/EntityJsonAdapter;->onTransact:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lo/EntityJsonAdapter;->IPostMessageService:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lo/EntityJsonAdapter;->IPostMessageService:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lo/EntityJsonAdapter;->ICustomTabsCallback()V

    return-void
.end method

.method private final ICustomTabsCallback$Stub()V
    .locals 2

    iget-object v0, p0, Lo/EntityJsonAdapter;->extraCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final asBinder()V
    .locals 1

    iget-object v0, p0, Lo/EntityJsonAdapter;->newSession:Lo/FarmDetailsResponse;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lo/FarmDetailsResponse;->extraCallback(Lo/EntityJsonAdapter;)V

    :cond_0
    return-void
.end method

.method private final asInterface()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lo/EntityJsonAdapter;->asBinder:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lo/EntityJsonAdapter;->asBinder:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method private static onMessageChannelReady(ILandroid/util/DisplayMetrics;)I
    .locals 0

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private static onMessageChannelReady(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p0, "units"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method private final onNavigationEvent(Landroid/view/View;Ljava/lang/Boolean;)Lorg/json/JSONObject;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "isVisible"

    const-string v4, "isAttachedToWindow"

    const/4 v5, 0x0

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lo/EntityJsonAdapter;->onRelationshipValidationResult()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lo/EntityJsonAdapter;->asInterface()Z

    move-result v2

    const-string v4, "isScreenOn"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/getAccount_number;->onMessageChannelReady(Landroid/view/View;)Z

    move-result v6

    const/4 v0, 0x2

    new-array v7, v0, [I

    new-array v0, v0, [I

    :try_start_0
    invoke-virtual {v2, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v8, "Failure getting view location."

    invoke-static {v8, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    aget v5, v7, v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    aget v5, v7, v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v8}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Lo/EntityJsonAdapter;->onRelationshipValidationResult()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v12

    const-string v13, "windowVisibility"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v12, v1, Lo/EntityJsonAdapter;->IPostMessageService:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget-object v13, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v12, v13}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v12

    const-string v13, "top"

    invoke-virtual {v6, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v12, v1, Lo/EntityJsonAdapter;->IPostMessageService:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v14, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v12, v14}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v12

    const-string v14, "bottom"

    invoke-virtual {v6, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v12, v1, Lo/EntityJsonAdapter;->IPostMessageService:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v15, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v12, v15}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v12

    const-string v15, "left"

    invoke-virtual {v6, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v12, v1, Lo/EntityJsonAdapter;->IPostMessageService:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v16, v3

    iget-object v3, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v12, v3}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v3

    const-string v12, "right"

    invoke-virtual {v6, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "viewBox"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v17, v11

    iget-object v11, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v6, v11}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v6, v11}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v11, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v6, v11}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v15, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v6, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v0, v6}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v0

    invoke-virtual {v4, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "adBox"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget v4, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v4, v6}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v4, v6}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v4, v6}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "globalVisibleBox"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "globalVisibleBoxVisible"

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget v4, v8, Landroid/graphics/Rect;->top:I

    iget-object v5, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget-object v5, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->right:I

    iget-object v5, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "localVisibleBox"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "localVisibleBoxVisible"

    invoke-virtual {v0, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget v4, v10, Landroid/graphics/Rect;->top:I

    iget-object v5, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget-object v5, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v10, Landroid/graphics/Rect;->right:I

    iget-object v5, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lo/EntityJsonAdapter;->onMessageChannelReady(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "hitBox"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, v1, Lo/EntityJsonAdapter;->onRelationshipValidationResult:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    const-string v5, "screenDensity"

    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-nez p2, :cond_1

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    iget-object v3, v1, Lo/EntityJsonAdapter;->asBinder:Landroid/os/PowerManager;

    iget-object v4, v1, Lo/EntityJsonAdapter;->asInterface:Landroid/app/KeyguardManager;

    invoke-virtual {v0, v2, v3, v4}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v2
.end method

.method private final onNavigationEvent(Lorg/json/JSONObject;Z)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lo/EntityJsonAdapter;->onMessageChannelReady(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/EntityJsonAdapter;->validateRelationship:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lo/LeaderBoardJsonAdapter;

    invoke-interface {v3, p1, p2}, Lo/LeaderBoardJsonAdapter;->onNavigationEvent(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Skipping active view message."

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final onRelationshipValidationResult()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lo/EntityJsonAdapter;->onPostMessage:Lo/CtaClaimedJsonAdapter;

    invoke-virtual {v1}, Lo/CtaClaimedJsonAdapter;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "afmaVersion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lo/EntityJsonAdapter;->onPostMessage:Lo/CtaClaimedJsonAdapter;

    invoke-virtual {v2}, Lo/CtaClaimedJsonAdapter;->onMessageChannelReady()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "activeViewJSON"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v2

    invoke-interface {v2}, Lo/component15;->onPostMessage()J

    move-result-wide v2

    const-string v4, "timestamp"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lo/EntityJsonAdapter;->onPostMessage:Lo/CtaClaimedJsonAdapter;

    invoke-virtual {v2}, Lo/CtaClaimedJsonAdapter;->onNavigationEvent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adFormat"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lo/EntityJsonAdapter;->onPostMessage:Lo/CtaClaimedJsonAdapter;

    invoke-virtual {v2}, Lo/CtaClaimedJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hashCode"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lo/EntityJsonAdapter;->onPostMessage:Lo/CtaClaimedJsonAdapter;

    invoke-virtual {v2}, Lo/CtaClaimedJsonAdapter;->extraCallback()Z

    move-result v2

    const-string v3, "isMraid"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    iget-boolean v2, p0, Lo/EntityJsonAdapter;->ICustomTabsService:Z

    const-string v3, "isStopped"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    iget-boolean v2, p0, Lo/EntityJsonAdapter;->getInterfaceDescriptor:Z

    const-string v3, "isPaused"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lo/EntityJsonAdapter;->onPostMessage:Lo/CtaClaimedJsonAdapter;

    invoke-virtual {v2}, Lo/CtaClaimedJsonAdapter;->ICustomTabsCallback$Stub()Z

    move-result v2

    const-string v3, "isNative"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0}, Lo/EntityJsonAdapter;->asInterface()Z

    move-result v2

    const-string v3, "isScreenOn"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lo/getParcel;->INotificationSideChannel$Stub()Lo/getSwipedDirection;

    move-result-object v2

    invoke-virtual {v2}, Lo/getSwipedDirection;->onMessageChannelReady()Z

    move-result v2

    const-string v3, "appMuted"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lo/getParcel;->INotificationSideChannel$Stub()Lo/getSwipedDirection;

    move-result-object v2

    invoke-virtual {v2}, Lo/getSwipedDirection;->onPostMessage()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "appVolume"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    iget v2, p0, Lo/EntityJsonAdapter;->ICustomTabsService$Stub:F

    float-to-double v2, v2

    const-string v4, "deviceVolume"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    iget-object v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-static {v0}, Lo/getSwipedDirection;->onNavigationEvent(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lo/EntityJsonAdapter;->ICustomTabsService$Stub:F

    return-void
.end method

.method protected final ICustomTabsCallback(I)V
    .locals 7

    iget-object v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/EntityJsonAdapter;->validateRelationship:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LeaderBoardJsonAdapter;

    invoke-interface {v2}, Lo/LeaderBoardJsonAdapter;->onNavigationEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v1, p0, Lo/EntityJsonAdapter;->onMessageChannelReady:Lo/RedeemInitiatedRewardDetailsResponse;

    invoke-interface {v1}, Lo/RedeemInitiatedRewardDetailsResponse;->ICustomTabsCallback()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v2

    iget-object v5, p0, Lo/EntityJsonAdapter;->asBinder:Landroid/os/PowerManager;

    iget-object v6, p0, Lo/EntityJsonAdapter;->asInterface:Landroid/app/KeyguardManager;

    invoke-virtual {v2, v1, v5, v6}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lo/EntityJsonAdapter;->onMessageChannelReady:Lo/RedeemInitiatedRewardDetailsResponse;

    invoke-interface {v6}, Lo/RedeemInitiatedRewardDetailsResponse;->onNavigationEvent()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lo/EntityJsonAdapter;->onMessageChannelReady()V

    monitor-exit v0

    return-void

    :cond_5
    if-ne p1, v4, :cond_6

    iget-object v6, p0, Lo/EntityJsonAdapter;->updateVisuals:Lo/getColorSectionPos;

    invoke-virtual {v6}, Lo/getColorSectionPos;->onPostMessage()Z

    move-result v6

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lo/EntityJsonAdapter;->mayLaunchUrl:Z

    if-ne v5, v6, :cond_6

    monitor-exit v0

    return-void

    :cond_6
    if-nez v5, :cond_7

    iget-boolean v6, p0, Lo/EntityJsonAdapter;->mayLaunchUrl:Z

    if-nez v6, :cond_7

    if-ne p1, v4, :cond_7

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_7
    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lo/EntityJsonAdapter;->onNavigationEvent(Landroid/view/View;Ljava/lang/Boolean;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lo/EntityJsonAdapter;->onNavigationEvent(Lorg/json/JSONObject;Z)V

    iput-boolean v5, p0, Lo/EntityJsonAdapter;->mayLaunchUrl:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    :try_start_2
    const-string v1, "Active view update failed."

    invoke-static {v1, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    iget-object p1, p0, Lo/EntityJsonAdapter;->onMessageChannelReady:Lo/RedeemInitiatedRewardDetailsResponse;

    invoke-interface {p1}, Lo/RedeemInitiatedRewardDetailsResponse;->onPostMessage()Lo/RedeemInitiatedRewardDetailsResponse;

    move-result-object p1

    invoke-interface {p1}, Lo/RedeemInitiatedRewardDetailsResponse;->ICustomTabsCallback()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v1, p0, Lo/EntityJsonAdapter;->extraCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eq p1, v1, :cond_a

    invoke-direct {p0}, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub()V

    iget-boolean v2, p0, Lo/EntityJsonAdapter;->warmup:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iput-boolean v4, p0, Lo/EntityJsonAdapter;->warmup:Z

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_9
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lo/EntityJsonAdapter;->extraCallback:Ljava/lang/ref/WeakReference;

    :cond_a
    invoke-direct {p0}, Lo/EntityJsonAdapter;->asBinder()V

    monitor-exit v0

    return-void

    :cond_b
    :goto_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method final ICustomTabsCallback(Lo/LeaderBoardJsonAdapter;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LeaderBoardJsonAdapter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lo/EntityJsonAdapter;->onPostMessage:Lo/CtaClaimedJsonAdapter;

    invoke-virtual {p2}, Lo/CtaClaimedJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Received request to untrack: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo/EntityJsonAdapter;->onPostMessage(Lo/LeaderBoardJsonAdapter;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 2

    iget-object v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/EntityJsonAdapter;->ICustomTabsService:Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lo/EntityJsonAdapter;->ICustomTabsCallback(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final extraCallback(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lo/EntityJsonAdapter;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final extraCallback(Lo/LeaderBoardJsonAdapter;)V
    .locals 5

    iget-object v0, p0, Lo/EntityJsonAdapter;->validateRelationship:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/EntityJsonAdapter;->extraCommand:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lo/EntityDataJsonAdapter;

    invoke-direct {v2, p0}, Lo/EntityDataJsonAdapter;-><init>(Lo/EntityJsonAdapter;)V

    iput-object v2, p0, Lo/EntityJsonAdapter;->extraCommand:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lo/getParcel;->getDefaultImpl()Lo/getListTransaction;

    move-result-object v2

    iget-object v3, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    iget-object v4, p0, Lo/EntityJsonAdapter;->extraCommand:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v4, v1}, Lo/getListTransaction;->extraCallback(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lo/EntityJsonAdapter;->ICustomTabsCallback(I)V

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_2
    iget-object v0, p0, Lo/EntityJsonAdapter;->validateRelationship:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_2
    iget-object v0, p0, Lo/EntityJsonAdapter;->onMessageChannelReady:Lo/RedeemInitiatedRewardDetailsResponse;

    invoke-interface {v0}, Lo/RedeemInitiatedRewardDetailsResponse;->ICustomTabsCallback()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/EntityJsonAdapter;->onNavigationEvent(Landroid/view/View;Ljava/lang/Boolean;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lo/EntityJsonAdapter;->onMessageChannelReady(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lo/LeaderBoardJsonAdapter;->onNavigationEvent(Lorg/json/JSONObject;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Skipping measurement update for new client."

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/EntityJsonAdapter;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 5

    iget-object v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/EntityJsonAdapter;->postMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lo/EntityJsonAdapter;->onRelationshipValidationResult()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "doneReasonCode"

    const-string v4, "u"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v2, v1}, Lo/EntityJsonAdapter;->onNavigationEvent(Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Failure while processing active view data."

    :goto_0
    invoke-static {v2, v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "JSON failure while processing active view data."

    goto :goto_0

    :goto_1
    const-string v1, "Untracking ad unit: "

    iget-object v2, p0, Lo/EntityJsonAdapter;->onPostMessage:Lo/CtaClaimedJsonAdapter;

    invoke-virtual {v2}, Lo/CtaClaimedJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method final onMessageChannelReady(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "hashCode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/EntityJsonAdapter;->onPostMessage:Lo/CtaClaimedJsonAdapter;

    invoke-virtual {v1}, Lo/CtaClaimedJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/EntityJsonAdapter;->getInterfaceDescriptor:Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lo/EntityJsonAdapter;->ICustomTabsCallback(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Lo/FarmDetailsResponse;)V
    .locals 1

    iget-object v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/EntityJsonAdapter;->newSession:Lo/FarmDetailsResponse;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final onPostMessage(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "isVisible"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object v0, p0, Lo/EntityJsonAdapter;->requestPostMessageChannel:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CtaClaimed;

    invoke-interface {v1, p0, p1}, Lo/CtaClaimed;->onNavigationEvent(Lo/EntityJsonAdapter;Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onPostMessage(Lo/LeaderBoardJsonAdapter;)V
    .locals 4

    iget-object v0, p0, Lo/EntityJsonAdapter;->validateRelationship:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lo/LeaderBoardJsonAdapter;->onMessageChannelReady()V

    iget-object p1, p0, Lo/EntityJsonAdapter;->validateRelationship:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-direct {p0}, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub()V

    iget-object v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lo/EntityJsonAdapter;->extraCommand:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-static {}, Lo/getParcel;->getDefaultImpl()Lo/getListTransaction;

    move-result-object v1

    iget-object v2, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    iget-object v3, p0, Lo/EntityJsonAdapter;->extraCommand:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3}, Lo/getListTransaction;->onMessageChannelReady(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v2

    const-string v3, "ActiveViewUnit.stopScreenStatusMonitoring"

    invoke-virtual {v2, v1, v3}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Failed trying to unregister the receiver"

    invoke-static {v2, v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lo/EntityJsonAdapter;->extraCommand:Landroid/content/BroadcastReceiver;

    :cond_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lo/EntityJsonAdapter;->ICustomTabsService$Stub$Proxy:Lo/Entity;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-direct {p0}, Lo/EntityJsonAdapter;->asBinder()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/EntityJsonAdapter;->validateRelationship:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Lo/LeaderBoardJsonAdapter;

    invoke-virtual {p0, v3}, Lo/EntityJsonAdapter;->onPostMessage(Lo/LeaderBoardJsonAdapter;)V

    goto :goto_1

    :cond_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_2
    return-void
.end method

.method public final onPostMessage()Z
    .locals 2

    iget-object v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/EntityJsonAdapter;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final onTransact()V
    .locals 2

    iget-object v0, p0, Lo/EntityJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lo/EntityJsonAdapter;->getInterfaceDescriptor:Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lo/EntityJsonAdapter;->ICustomTabsCallback(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
