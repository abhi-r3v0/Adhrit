.class public Lo/handleMessage;
.super Lo/AudioAttributesCompatParcelizer;
.source ""

# interfaces
.implements Lo/IMediaControllerCallback$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/handleMessage$onNavigationEvent;,
        Lo/handleMessage$ICustomTabsCallback;,
        Lo/handleMessage$onRelationshipValidationResult;,
        Lo/handleMessage$extraCallback;,
        Lo/handleMessage$onMessageChannelReady;,
        Lo/handleMessage$onPostMessage;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback$Stub:Z

.field public ICustomTabsCallback$Stub$Proxy:Lo/handleMessage$extraCallback;

.field public ICustomTabsService:Lo/handleMessage$onMessageChannelReady;

.field public asBinder:Z

.field public asInterface:Z

.field private extraCommand:Lo/handleMessage$onNavigationEvent;

.field public getInterfaceDescriptor:Lo/handleMessage$ICustomTabsCallback;

.field private mayLaunchUrl:I

.field public newSession:Z

.field public onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

.field public onTransact:Landroid/graphics/drawable/Drawable;

.field private final postMessage:Landroid/util/SparseBooleanArray;

.field private requestPostMessageChannel:I

.field private updateVisuals:I

.field final warmup:Lo/handleMessage$onRelationshipValidationResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 87
    sget v0, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_action_menu_layout:I

    sget v1, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lo/AudioAttributesCompatParcelizer;-><init>(Landroid/content/Context;II)V

    .line 75
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lo/handleMessage;->postMessage:Landroid/util/SparseBooleanArray;

    .line 83
    new-instance p1, Lo/handleMessage$onRelationshipValidationResult;

    invoke-direct {p1, p0}, Lo/handleMessage$onRelationshipValidationResult;-><init>(Lo/handleMessage;)V

    iput-object p1, p0, Lo/handleMessage;->warmup:Lo/handleMessage$onRelationshipValidationResult;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/handleMessage;)Lo/getExtras;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    return-object p0
.end method

.method static synthetic asBinder(Lo/handleMessage;)Lo/getExtras;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    return-object p0
.end method

.method static synthetic asInterface(Lo/handleMessage;)Lo/AudioAttributesImplBaseParcelizer;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/handleMessage;)Lo/AudioAttributesImplBaseParcelizer;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/handleMessage;)Lo/AudioAttributesImplBaseParcelizer;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/handleMessage;)Lo/AudioAttributesImplBaseParcelizer;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/handleMessage;)Lo/AudioAttributesImplBaseParcelizer;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 4

    .line 92
    invoke-super {p0, p1, p2}, Lo/AudioAttributesCompatParcelizer;->ICustomTabsCallback(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 2043
    new-instance v0, Lo/cancelAll;

    invoke-direct {v0, p1}, Lo/cancelAll;-><init>(Landroid/content/Context;)V

    .line 97
    iget-boolean p1, p0, Lo/handleMessage;->ICustomTabsCallback$Stub:Z

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 2078
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x1

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 2081
    :cond_0
    iget-object p1, v0, Lo/cancelAll;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 98
    :goto_0
    iput-boolean v3, p0, Lo/handleMessage;->asBinder:Z

    .line 2086
    :cond_2
    iget-object p1, v0, Lo/cancelAll;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    .line 102
    iput p1, p0, Lo/handleMessage;->mayLaunchUrl:I

    .line 107
    invoke-virtual {v0}, Lo/cancelAll;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/handleMessage;->updateVisuals:I

    .line 110
    iget p1, p0, Lo/handleMessage;->mayLaunchUrl:I

    .line 111
    iget-boolean v0, p0, Lo/handleMessage;->asBinder:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 112
    iget-object v0, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    if-nez v0, :cond_4

    .line 113
    new-instance v0, Lo/handleMessage$onPostMessage;

    iget-object v3, p0, Lo/AudioAttributesCompatParcelizer;->onPostMessage:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lo/handleMessage$onPostMessage;-><init>(Lo/handleMessage;Landroid/content/Context;)V

    iput-object v0, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    .line 114
    iget-boolean v3, p0, Lo/handleMessage;->asInterface:Z

    if-eqz v3, :cond_3

    .line 115
    iget-object v3, p0, Lo/handleMessage;->onTransact:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iput-object v2, p0, Lo/handleMessage;->onTransact:Landroid/graphics/drawable/Drawable;

    .line 117
    iput-boolean v1, p0, Lo/handleMessage;->asInterface:Z

    .line 119
    :cond_3
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 120
    iget-object v1, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 122
    :cond_4
    iget-object v0, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_1

    .line 124
    :cond_5
    iput-object v2, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    .line 127
    :goto_1
    iput p1, p0, Lo/handleMessage;->requestPostMessageChannel:I

    .line 129
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 5

    .line 336
    iget-boolean v0, p0, Lo/handleMessage;->asBinder:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8395
    iget-object v0, p0, Lo/handleMessage;->ICustomTabsService:Lo/handleMessage$onMessageChannelReady;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 9320
    iget-object v3, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {v0}, Lo/getServiceComponent;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 336
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/handleMessage;->getInterfaceDescriptor:Lo/handleMessage$ICustomTabsCallback;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 10208
    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->onTransact()V

    .line 10209
    iget-object v0, v0, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    .line 337
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    new-instance v0, Lo/handleMessage$onMessageChannelReady;

    iget-object v1, p0, Lo/AudioAttributesCompatParcelizer;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v3, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    iget-object v4, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    invoke-direct {v0, p0, v1, v3, v4}, Lo/handleMessage$onMessageChannelReady;-><init>(Lo/handleMessage;Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Landroid/view/View;)V

    .line 339
    new-instance v1, Lo/handleMessage$ICustomTabsCallback;

    invoke-direct {v1, p0, v0}, Lo/handleMessage$ICustomTabsCallback;-><init>(Lo/handleMessage;Lo/handleMessage$onMessageChannelReady;)V

    iput-object v1, p0, Lo/handleMessage;->getInterfaceDescriptor:Lo/handleMessage$ICustomTabsCallback;

    .line 341
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lo/handleMessage;->getInterfaceDescriptor:Lo/handleMessage$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_2
    return v1
.end method

.method public final ICustomTabsCallback(Lo/MediaBrowserCompat;)Z
    .locals 1

    .line 3702
    iget p1, p1, Lo/MediaBrowserCompat;->onTransact:I

    const/16 v0, 0x20

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback(Z)V
    .locals 4

    .line 226
    invoke-super {p0, p1}, Lo/AudioAttributesCompatParcelizer;->extraCallback(Z)V

    .line 228
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 230
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 231
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 4203
    invoke-virtual {p1}, Lo/AudioAttributesImplBaseParcelizer;->onTransact()V

    .line 4204
    iget-object p1, p1, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 232
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 234
    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MediaBrowserCompat;

    .line 4794
    iget-object v3, v3, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {v3, p0}, Lo/IMediaControllerCallback;->setSubUiVisibilityListener(Lo/IMediaControllerCallback$onPostMessage;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 5208
    invoke-virtual {p1}, Lo/AudioAttributesImplBaseParcelizer;->onTransact()V

    .line 5209
    iget-object p1, p1, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 245
    :goto_1
    iget-boolean v1, p0, Lo/handleMessage;->asBinder:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 246
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 248
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat;

    invoke-virtual {p1}, Lo/MediaBrowserCompat;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 255
    iget-object p1, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    if-nez p1, :cond_5

    .line 256
    new-instance p1, Lo/handleMessage$onPostMessage;

    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->onPostMessage:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lo/handleMessage$onPostMessage;-><init>(Lo/handleMessage;Landroid/content/Context;)V

    iput-object p1, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    .line 258
    :cond_5
    iget-object p1, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 259
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_6

    .line 261
    iget-object v0, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 263
    :cond_6
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 264
    iget-object v0, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 266
    :cond_7
    iget-object p1, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    if-ne p1, v0, :cond_8

    .line 267
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    :cond_8
    :goto_3
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v0, p0, Lo/handleMessage;->asBinder:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 18

    move-object/from16 v0, p0

    .line 413
    iget-object v1, v0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, v0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v1}, Lo/AudioAttributesImplBaseParcelizer;->onRelationshipValidationResult()Ljava/util/ArrayList;

    move-result-object v1

    .line 415
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move-object v1, v2

    const/4 v4, 0x0

    .line 421
    :goto_0
    iget v5, v0, Lo/handleMessage;->updateVisuals:I

    .line 422
    iget v6, v0, Lo/handleMessage;->requestPostMessageChannel:I

    .line 423
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 424
    iget-object v8, v0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v9, v4, :cond_6

    .line 431
    invoke-virtual {v1, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/MediaBrowserCompat;

    .line 10711
    iget v3, v15, Lo/MediaBrowserCompat;->asBinder:I

    and-int/2addr v3, v13

    if-ne v3, v13, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 11706
    :cond_2
    iget v3, v15, Lo/MediaBrowserCompat;->asBinder:I

    and-int/2addr v3, v14

    if-ne v3, v14, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_4

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x1

    .line 439
    :goto_4
    iget-boolean v3, v0, Lo/handleMessage;->newSession:Z

    if-eqz v3, :cond_5

    invoke-virtual {v15}, Lo/MediaBrowserCompat;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v5, 0x0

    :cond_5
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 447
    :cond_6
    iget-boolean v3, v0, Lo/handleMessage;->asBinder:Z

    if-eqz v3, :cond_8

    if-nez v10, :cond_7

    add-int/2addr v12, v11

    if-le v12, v5, :cond_8

    :cond_7
    add-int/lit8 v5, v5, -0x1

    :cond_8
    sub-int/2addr v5, v11

    .line 453
    iget-object v3, v0, Lo/handleMessage;->postMessage:Landroid/util/SparseBooleanArray;

    .line 454
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_5
    if-ge v9, v4, :cond_1b

    .line 466
    invoke-virtual {v1, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/MediaBrowserCompat;

    .line 11711
    iget v12, v11, Lo/MediaBrowserCompat;->asBinder:I

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_9

    const/4 v12, 0x1

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    :goto_6
    const/16 v15, 0x20

    if-eqz v12, :cond_c

    .line 469
    invoke-virtual {v0, v11, v2, v8}, Lo/AudioAttributesCompatParcelizer;->onPostMessage(Lo/MediaBrowserCompat;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 474
    invoke-virtual {v12, v7, v7}, Landroid/view/View;->measure(II)V

    .line 476
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v6, v12

    if-nez v10, :cond_a

    move v10, v12

    .line 481
    :cond_a
    invoke-virtual {v11}, Lo/MediaBrowserCompat;->getGroupId()I

    move-result v12

    if-eqz v12, :cond_b

    .line 483
    invoke-virtual {v3, v12, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 11721
    :cond_b
    iget v12, v11, Lo/MediaBrowserCompat;->onTransact:I

    or-int/2addr v12, v15

    iput v12, v11, Lo/MediaBrowserCompat;->onTransact:I

    goto/16 :goto_d

    .line 12706
    :cond_c
    iget v12, v11, Lo/MediaBrowserCompat;->asBinder:I

    and-int/2addr v12, v14

    if-ne v12, v14, :cond_d

    const/4 v12, 0x1

    goto :goto_7

    :cond_d
    const/4 v12, 0x0

    :goto_7
    if-eqz v12, :cond_1a

    .line 489
    invoke-virtual {v11}, Lo/MediaBrowserCompat;->getGroupId()I

    move-result v12

    .line 490
    invoke-virtual {v3, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v16

    if-gtz v5, :cond_e

    if-eqz v16, :cond_f

    :cond_e
    if-lez v6, :cond_f

    const/16 v17, 0x1

    goto :goto_8

    :cond_f
    const/16 v17, 0x0

    :goto_8
    if-eqz v17, :cond_12

    .line 495
    invoke-virtual {v0, v11, v2, v8}, Lo/AudioAttributesCompatParcelizer;->onPostMessage(Lo/MediaBrowserCompat;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 504
    invoke-virtual {v13, v7, v7}, Landroid/view/View;->measure(II)V

    .line 506
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v6, v13

    if-nez v10, :cond_10

    move v10, v13

    :cond_10
    add-int v13, v6, v10

    if-lez v13, :cond_11

    const/4 v13, 0x1

    goto :goto_9

    :cond_11
    const/4 v13, 0x0

    :goto_9
    and-int v17, v17, v13

    :cond_12
    if-eqz v17, :cond_13

    if-eqz v12, :cond_13

    .line 521
    invoke-virtual {v3, v12, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_c

    :cond_13
    if-eqz v16, :cond_17

    const/4 v13, 0x0

    .line 524
    invoke-virtual {v3, v12, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v9, :cond_17

    .line 526
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lo/MediaBrowserCompat;

    .line 527
    invoke-virtual {v13}, Lo/MediaBrowserCompat;->getGroupId()I

    move-result v14

    if-ne v14, v12, :cond_16

    .line 13702
    iget v14, v13, Lo/MediaBrowserCompat;->onTransact:I

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_14

    const/4 v14, 0x1

    goto :goto_b

    :cond_14
    const/4 v14, 0x0

    :goto_b
    if-eqz v14, :cond_15

    add-int/lit8 v5, v5, 0x1

    .line 13723
    :cond_15
    iget v14, v13, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v14, v14, -0x21

    iput v14, v13, Lo/MediaBrowserCompat;->onTransact:I

    :cond_16
    add-int/lit8 v2, v2, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_a

    :cond_17
    :goto_c
    if-eqz v17, :cond_18

    add-int/lit8 v5, v5, -0x1

    :cond_18
    if-eqz v17, :cond_19

    .line 14721
    iget v2, v11, Lo/MediaBrowserCompat;->onTransact:I

    or-int/2addr v2, v15

    iput v2, v11, Lo/MediaBrowserCompat;->onTransact:I

    goto :goto_d

    .line 14723
    :cond_19
    iget v2, v11, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v11, Lo/MediaBrowserCompat;->onTransact:I

    goto :goto_d

    .line 15723
    :cond_1a
    iget v2, v11, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v11, Lo/MediaBrowserCompat;->onTransact:I

    :goto_d
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_1b
    const/4 v2, 0x1

    return v2
.end method

.method public final extraCallback(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 275
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/handleMessage;->onRelationshipValidationResult:Lo/handleMessage$onPostMessage;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 276
    :cond_0
    invoke-super {p0, p1, p2}, Lo/AudioAttributesCompatParcelizer;->extraCallback(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 134
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->ICustomTabsCallback:Landroid/content/Context;

    .line 3043
    new-instance v1, Lo/cancelAll;

    invoke-direct {v1, v0}, Lo/cancelAll;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v1}, Lo/cancelAll;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/handleMessage;->updateVisuals:I

    .line 136
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Z)V
    .locals 1

    .line 16373
    invoke-virtual {p0}, Lo/handleMessage;->onNavigationEvent()Z

    .line 16384
    iget-object v0, p0, Lo/handleMessage;->ICustomTabsCallback$Stub$Proxy:Lo/handleMessage$extraCallback;

    if-eqz v0, :cond_0

    .line 16385
    invoke-virtual {v0}, Lo/getRoot;->onPostMessage()V

    .line 549
    :cond_0
    invoke-super {p0, p1, p2}, Lo/AudioAttributesCompatParcelizer;->onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Z)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/view/ViewGroup;)Lo/getExtras;
    .locals 1

    .line 181
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    .line 182
    invoke-super {p0, p1}, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent(Landroid/view/ViewGroup;)Lo/getExtras;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 184
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Lo/handleMessage;)V

    :cond_0
    return-object p1
.end method

.method public final onNavigationEvent()Z
    .locals 3

    .line 354
    iget-object v0, p0, Lo/handleMessage;->getInterfaceDescriptor:Lo/handleMessage$ICustomTabsCallback;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lo/handleMessage;->getInterfaceDescriptor:Lo/handleMessage$ICustomTabsCallback;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lo/handleMessage;->getInterfaceDescriptor:Lo/handleMessage$ICustomTabsCallback;

    return v1

    .line 360
    :cond_0
    iget-object v0, p0, Lo/handleMessage;->ICustomTabsService:Lo/handleMessage$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0}, Lo/getRoot;->onPostMessage()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent(Lo/getItem;)Z
    .locals 7

    .line 281
    invoke-virtual {p1}, Lo/AudioAttributesImplBaseParcelizer;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 6070
    :goto_0
    iget-object v2, v0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    .line 284
    iget-object v3, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    if-eq v2, v3, :cond_1

    .line 7070
    iget-object v0, v0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    .line 285
    check-cast v0, Lo/getItem;

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {v0}, Lo/getItem;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    .line 7317
    iget-object v2, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 7320
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 7322
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7323
    instance-of v6, v5, Lo/getExtras$extraCallback;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Lo/getExtras$extraCallback;

    .line 7324
    invoke-interface {v6}, Lo/getExtras$extraCallback;->ICustomTabsCallback()Lo/MediaBrowserCompat;

    move-result-object v6

    if-ne v6, v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_4

    return v1

    .line 296
    :cond_4
    invoke-virtual {p1}, Lo/getItem;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    .line 299
    invoke-virtual {p1}, Lo/AudioAttributesImplBaseParcelizer;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x1

    if-ge v2, v0, :cond_6

    .line 301
    invoke-virtual {p1, v2}, Lo/AudioAttributesImplBaseParcelizer;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 302
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 308
    :cond_6
    :goto_4
    new-instance v0, Lo/handleMessage$extraCallback;

    iget-object v2, p0, Lo/AudioAttributesCompatParcelizer;->ICustomTabsCallback:Landroid/content/Context;

    invoke-direct {v0, p0, v2, p1, v5}, Lo/handleMessage$extraCallback;-><init>(Lo/handleMessage;Landroid/content/Context;Lo/getItem;Landroid/view/View;)V

    iput-object v0, p0, Lo/handleMessage;->ICustomTabsCallback$Stub$Proxy:Lo/handleMessage$extraCallback;

    .line 8118
    iput-boolean v1, v0, Lo/getRoot;->onMessageChannelReady:Z

    .line 8119
    iget-object v2, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    if-eqz v2, :cond_7

    .line 8120
    iget-object v0, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {v0, v1}, Lo/getServiceComponent;->onMessageChannelReady(Z)V

    .line 310
    :cond_7
    iget-object v0, p0, Lo/handleMessage;->ICustomTabsCallback$Stub$Proxy:Lo/handleMessage$extraCallback;

    invoke-virtual {v0}, Lo/getRoot;->extraCallback()V

    .line 312
    invoke-super {p0, p1}, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent(Lo/getItem;)Z

    return v3
.end method

.method public final onPostMessage(Lo/MediaBrowserCompat;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 191
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/AudioAttributesCompatParcelizer;->onPostMessage(Lo/MediaBrowserCompat;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 195
    :cond_1
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 199
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 200
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public final onPostMessage(Lo/MediaBrowserCompat;Lo/getExtras$extraCallback;)V
    .locals 0

    .line 207
    invoke-interface {p2, p1}, Lo/getExtras$extraCallback;->extraCallback(Lo/MediaBrowserCompat;)V

    .line 209
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 210
    check-cast p2, Lo/RemoteActionCompatParcelizer;

    .line 211
    invoke-virtual {p2, p1}, Lo/RemoteActionCompatParcelizer;->setItemInvoker(Lo/AudioAttributesImplBaseParcelizer$onMessageChannelReady;)V

    .line 213
    iget-object p1, p0, Lo/handleMessage;->extraCommand:Lo/handleMessage$onNavigationEvent;

    if-nez p1, :cond_0

    .line 214
    new-instance p1, Lo/handleMessage$onNavigationEvent;

    invoke-direct {p1, p0}, Lo/handleMessage$onNavigationEvent;-><init>(Lo/handleMessage;)V

    iput-object p1, p0, Lo/handleMessage;->extraCommand:Lo/handleMessage$onNavigationEvent;

    .line 216
    :cond_0
    iget-object p1, p0, Lo/handleMessage;->extraCommand:Lo/handleMessage$onNavigationEvent;

    invoke-virtual {p2, p1}, Lo/RemoteActionCompatParcelizer;->setPopupCallback(Lo/RemoteActionCompatParcelizer$ICustomTabsCallback;)V

    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 579
    invoke-super {p0, p1}, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent(Lo/getItem;)Z

    return-void

    .line 580
    :cond_0
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    if-eqz p1, :cond_1

    .line 581
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Z)V

    :cond_1
    return-void
.end method

.method public final onPostMessage()Z
    .locals 4

    .line 395
    iget-object v0, p0, Lo/handleMessage;->ICustomTabsService:Lo/handleMessage$onMessageChannelReady;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10320
    iget-object v2, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v0, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {v0}, Lo/getServiceComponent;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v1
.end method
