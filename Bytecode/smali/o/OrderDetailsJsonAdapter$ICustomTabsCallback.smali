.class final Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/allow$onNavigationEvent;
.implements Lo/SurchargeDetailsJsonAdapter;
.implements Lo/component7;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lo/PayResponseJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OrderDetailsJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;


# direct methods
.method private constructor <init>(Lo/OrderDetailsJsonAdapter;)V
    .locals 0

    .line 1400
    iput-object p1, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/OrderDetailsJsonAdapter;Lo/OrderDetailsJsonAdapter$4;)V
    .locals 0

    .line 1400
    invoke-direct {p0, p1}, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;-><init>(Lo/OrderDetailsJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Z)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .line 1411
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {v0}, Lo/OrderDetailsJsonAdapter;->extraCallback(Lo/OrderDetailsJsonAdapter;)Lo/OfferSlabJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {v0}, Lo/OrderDetailsJsonAdapter;->extraCallback(Lo/OrderDetailsJsonAdapter;)Lo/OfferSlabJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/OfferSlabJsonAdapter;->extraCallback(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/r;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 0

    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1491
    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p2}, Lo/OrderDetailsJsonAdapter;->onPostMessage(Lo/OrderDetailsJsonAdapter;)I

    move-result p2

    invoke-static {p1, p2}, Lo/OrderDetailsJsonAdapter;->onPostMessage(Landroid/view/TextureView;I)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 1448
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {v0}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady(Lo/OrderDetailsJsonAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {v0}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady(Lo/OrderDetailsJsonAdapter;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(II)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/JuspaySessionToken;Lo/InstrumentDataJsonAdapter;)V
    .locals 0

    .line 1455
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/OrderDetailsJsonAdapter;->extraCallback(Lo/OrderDetailsJsonAdapter;Z)V

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(ZI)V
    .locals 0

    .line 1462
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p1}, Lo/OrderDetailsJsonAdapter;->onRelationshipValidationResult(Lo/OrderDetailsJsonAdapter;)V

    .line 1463
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p1}, Lo/OrderDetailsJsonAdapter;->asInterface(Lo/OrderDetailsJsonAdapter;)V

    .line 1464
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p1}, Lo/OrderDetailsJsonAdapter;->asBinder(Lo/OrderDetailsJsonAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p1}, Lo/OrderDetailsJsonAdapter;->onTransact(Lo/OrderDetailsJsonAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1465
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-virtual {p1}, Lo/OrderDetailsJsonAdapter;->onNavigationEvent()V

    return-void

    .line 1467
    :cond_0
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/OrderDetailsJsonAdapter;->onPostMessage(Lo/OrderDetailsJsonAdapter;Z)V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1498
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p1}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub(Lo/OrderDetailsJsonAdapter;)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(IIIF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1424
    :goto_1
    iget-object p2, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p2}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Lo/OrderDetailsJsonAdapter;)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroid/view/TextureView;

    if-eqz p2, :cond_6

    const/16 p2, 0x5a

    if-eq p3, p2, :cond_2

    const/16 p2, 0x10e

    if-ne p3, p2, :cond_3

    :cond_2
    div-float/2addr v0, p1

    move p1, v0

    .line 1431
    :cond_3
    iget-object p2, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p2}, Lo/OrderDetailsJsonAdapter;->onPostMessage(Lo/OrderDetailsJsonAdapter;)I

    move-result p2

    if-eqz p2, :cond_4

    .line 1432
    iget-object p2, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p2}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Lo/OrderDetailsJsonAdapter;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1434
    :cond_4
    iget-object p2, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p2, p3}, Lo/OrderDetailsJsonAdapter;->extraCallback(Lo/OrderDetailsJsonAdapter;I)I

    .line 1435
    iget-object p2, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p2}, Lo/OrderDetailsJsonAdapter;->onPostMessage(Lo/OrderDetailsJsonAdapter;)I

    move-result p2

    if-eqz p2, :cond_5

    .line 1438
    iget-object p2, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p2}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Lo/OrderDetailsJsonAdapter;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1440
    :cond_5
    iget-object p2, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p2}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Lo/OrderDetailsJsonAdapter;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iget-object p3, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p3}, Lo/OrderDetailsJsonAdapter;->onPostMessage(Lo/OrderDetailsJsonAdapter;)I

    move-result p3

    invoke-static {p2, p3}, Lo/OrderDetailsJsonAdapter;->onPostMessage(Landroid/view/TextureView;I)V

    .line 1443
    :cond_6
    iget-object p2, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p2}, Lo/OrderDetailsJsonAdapter;->onNavigationEvent(Lo/OrderDetailsJsonAdapter;)Lo/InstrumentViewJsonAdapter;

    move-result-object p3

    iget-object p4, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p4}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Lo/OrderDetailsJsonAdapter;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p2, p1, p3, p4}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady(FLo/InstrumentViewJsonAdapter;Landroid/view/View;)V

    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 0

    .line 1473
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p1}, Lo/OrderDetailsJsonAdapter;->asBinder(Lo/OrderDetailsJsonAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-static {p1}, Lo/OrderDetailsJsonAdapter;->onTransact(Lo/OrderDetailsJsonAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1474
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/OrderDetailsJsonAdapter;

    invoke-virtual {p1}, Lo/OrderDetailsJsonAdapter;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/t;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method
