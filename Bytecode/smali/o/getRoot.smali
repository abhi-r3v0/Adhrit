.class public Lo/getRoot;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Lo/getSessionToken$extraCallback;

.field private final ICustomTabsCallback$Stub:Landroid/content/Context;

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/widget/PopupWindow$OnDismissListener;

.field private final asBinder:I

.field public asInterface:Landroid/widget/PopupWindow$OnDismissListener;

.field public extraCallback:Lo/getServiceComponent;

.field private final newSession:I

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Landroid/view/View;

.field public onPostMessage:I

.field private final onRelationshipValidationResult:Z

.field private final onTransact:Lo/AudioAttributesImplBaseParcelizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Landroid/view/View;ZI)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 79
    invoke-direct/range {v0 .. v6}, Lo/getRoot;-><init>(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Landroid/view/View;ZII)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    .line 60
    iput v0, p0, Lo/getRoot;->onPostMessage:I

    .line 334
    new-instance v0, Lo/getRoot$3;

    invoke-direct {v0, p0}, Lo/getRoot$3;-><init>(Lo/getRoot;)V

    iput-object v0, p0, Lo/getRoot;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/PopupWindow$OnDismissListener;

    .line 85
    iput-object p1, p0, Lo/getRoot;->ICustomTabsCallback$Stub:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lo/getRoot;->onTransact:Lo/AudioAttributesImplBaseParcelizer;

    .line 87
    iput-object p3, p0, Lo/getRoot;->onNavigationEvent:Landroid/view/View;

    .line 88
    iput-boolean p4, p0, Lo/getRoot;->onRelationshipValidationResult:Z

    .line 89
    iput p5, p0, Lo/getRoot;->asBinder:I

    .line 90
    iput p6, p0, Lo/getRoot;->newSession:I

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    .line 314
    iget-object v0, p0, Lo/getRoot;->asInterface:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public final extraCallback()V
    .locals 3

    .line 1320
    iget-object v0, p0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getServiceComponent;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 1173
    :cond_1
    iget-object v0, p0, Lo/getRoot;->onNavigationEvent:Landroid/view/View;

    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 1177
    :cond_2
    invoke-virtual {p0, v2, v2, v2, v2}, Lo/getRoot;->onMessageChannelReady(IIZZ)V

    :goto_1
    if-eqz v1, :cond_3

    return-void

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(IIZZ)V
    .locals 3

    .line 263
    invoke-virtual {p0}, Lo/getRoot;->onNavigationEvent()Lo/getServiceComponent;

    move-result-object v0

    .line 264
    invoke-virtual {v0, p4}, Lo/getServiceComponent;->onNavigationEvent(Z)V

    if-eqz p3, :cond_1

    .line 270
    iget p3, p0, Lo/getRoot;->onPostMessage:I

    iget-object p4, p0, Lo/getRoot;->onNavigationEvent:Landroid/view/View;

    .line 271
    invoke-static {p4}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result p4

    .line 270
    invoke-static {p3, p4}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    const/4 p4, 0x5

    if-ne p3, p4, :cond_0

    .line 273
    iget-object p3, p0, Lo/getRoot;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    .line 276
    :cond_0
    invoke-virtual {v0, p1}, Lo/getServiceComponent;->extraCallback(I)V

    .line 277
    invoke-virtual {v0, p2}, Lo/getServiceComponent;->onNavigationEvent(I)V

    .line 283
    iget-object p3, p0, Lo/getRoot;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x42400000    # 48.0f

    mul-float p3, p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    .line 285
    new-instance p4, Landroid/graphics/Rect;

    sub-int v1, p1, p3

    sub-int v2, p2, p3

    add-int/2addr p1, p3

    add-int/2addr p2, p3

    invoke-direct {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3071
    iput-object p4, v0, Lo/getServiceComponent;->asBinder:Landroid/graphics/Rect;

    .line 290
    :cond_1
    invoke-virtual {v0}, Lo/getServiceComponent;->show()V

    return-void
.end method

.method public final onNavigationEvent()Lo/getServiceComponent;
    .locals 14

    .line 156
    iget-object v0, p0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    if-nez v0, :cond_3

    .line 2224
    iget-object v0, p0, Lo/getRoot;->ICustomTabsCallback$Stub:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2226
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2227
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2229
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 2230
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 2232
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2235
    :goto_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2236
    iget-object v1, p0, Lo/getRoot;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/extraCallback$onMessageChannelReady;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 2242
    new-instance v0, Lo/write;

    iget-object v2, p0, Lo/getRoot;->ICustomTabsCallback$Stub:Landroid/content/Context;

    iget-object v3, p0, Lo/getRoot;->onNavigationEvent:Landroid/view/View;

    iget v4, p0, Lo/getRoot;->asBinder:I

    iget v5, p0, Lo/getRoot;->newSession:I

    iget-boolean v6, p0, Lo/getRoot;->onRelationshipValidationResult:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/write;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    goto :goto_2

    .line 2245
    :cond_2
    new-instance v0, Lo/search;

    iget-object v8, p0, Lo/getRoot;->ICustomTabsCallback$Stub:Landroid/content/Context;

    iget-object v9, p0, Lo/getRoot;->onTransact:Lo/AudioAttributesImplBaseParcelizer;

    iget-object v10, p0, Lo/getRoot;->onNavigationEvent:Landroid/view/View;

    iget v11, p0, Lo/getRoot;->asBinder:I

    iget v12, p0, Lo/getRoot;->newSession:I

    iget-boolean v13, p0, Lo/getRoot;->onRelationshipValidationResult:Z

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lo/search;-><init>(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Landroid/view/View;IIZ)V

    .line 2250
    :goto_2
    iget-object v1, p0, Lo/getRoot;->onTransact:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0, v1}, Lo/getServiceComponent;->onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;)V

    .line 2251
    iget-object v1, p0, Lo/getRoot;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lo/getServiceComponent;->onPostMessage(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2254
    iget-object v1, p0, Lo/getRoot;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/getServiceComponent;->ICustomTabsCallback(Landroid/view/View;)V

    .line 2255
    iget-object v1, p0, Lo/getRoot;->ICustomTabsCallback:Lo/getSessionToken$extraCallback;

    invoke-virtual {v0, v1}, Lo/getServiceComponent;->onMessageChannelReady(Lo/getSessionToken$extraCallback;)V

    .line 2256
    iget-boolean v1, p0, Lo/getRoot;->onMessageChannelReady:Z

    invoke-virtual {v0, v1}, Lo/getServiceComponent;->onMessageChannelReady(Z)V

    .line 2257
    iget v1, p0, Lo/getRoot;->onPostMessage:I

    invoke-virtual {v0, v1}, Lo/getServiceComponent;->onMessageChannelReady(I)V

    .line 157
    iput-object v0, p0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    .line 159
    :cond_3
    iget-object v0, p0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 1

    .line 3320
    iget-object v0, p0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getServiceComponent;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {v0}, Lo/getServiceComponent;->dismiss()V

    :cond_1
    return-void
.end method
