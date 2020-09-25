.class final Lo/isSessionReady$asBinder;
.super Lo/rate$ICustomTabsCallback;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isSessionReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "asBinder"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/isSessionReady;

.field final onMessageChannelReady:I

.field onNavigationEvent:Lo/rate;

.field final onPostMessage:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/isSessionReady;I)V
    .locals 0

    .line 2152
    iput-object p1, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    invoke-direct {p0}, Lo/rate$ICustomTabsCallback;-><init>()V

    .line 2146
    iput-object p0, p0, Lo/isSessionReady$asBinder;->onPostMessage:Ljava/lang/Runnable;

    .line 2153
    iput p2, p0, Lo/isSessionReady$asBinder;->onMessageChannelReady:I

    return-void
.end method

.method private onNavigationEvent()V
    .locals 3

    .line 2203
    iget v0, p0, Lo/isSessionReady$asBinder;->onMessageChannelReady:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x5

    .line 2204
    :cond_0
    iget-object v0, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    invoke-virtual {v0, v1}, Lo/isSessionReady;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2206
    iget-object v1, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    const/4 v2, 0x1

    .line 8747
    invoke-virtual {v1, v0, v2}, Lo/isSessionReady;->onMessageChannelReady(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    .line 2231
    iget-object v0, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    iget-object v1, p0, Lo/isSessionReady$asBinder;->onPostMessage:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/view/View;I)V
    .locals 0

    .line 2196
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lo/isSessionReady$onNavigationEvent;

    const/4 p2, 0x0

    .line 2197
    iput-boolean p2, p1, Lo/isSessionReady$onNavigationEvent;->onMessageChannelReady:Z

    .line 2199
    invoke-direct {p0}, Lo/isSessionReady$asBinder;->onNavigationEvent()V

    return-void
.end method

.method public final extraCallback(Landroid/view/View;I)I
    .locals 0

    .line 2304
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(Landroid/view/View;I)Z
    .locals 3

    .line 2168
    invoke-static {p1}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    iget v1, p0, Lo/isSessionReady$asBinder;->onMessageChannelReady:I

    .line 3945
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lo/isSessionReady$onNavigationEvent;

    iget v2, v2, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 3946
    invoke-static {p2}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result p2

    invoke-static {v2, p2}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result p2

    and-int/2addr p2, v1

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2168
    iget-object p2, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    .line 2169
    invoke-virtual {p2, p1}, Lo/isSessionReady;->onMessageChannelReady(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public final onNavigationEvent(I)V
    .locals 8

    .line 2174
    iget-object v0, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    iget-object v1, p0, Lo/isSessionReady$asBinder;->onNavigationEvent:Lo/rate;

    .line 4487
    iget-object v1, v1, Lo/rate;->newSession:Landroid/view/View;

    .line 4814
    iget-object v2, v0, Lo/isSessionReady;->extraCallback:Lo/rate;

    .line 5431
    iget v2, v2, Lo/rate;->onNavigationEvent:I

    .line 4815
    iget-object v3, v0, Lo/isSessionReady;->onPostMessage:Lo/rate;

    .line 6431
    iget v3, v3, Lo/rate;->onNavigationEvent:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    if-ne v3, v6, :cond_0

    goto :goto_0

    :cond_0
    if-eq v2, v5, :cond_3

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :cond_3
    :goto_1
    if-eqz v1, :cond_7

    if-nez p1, :cond_7

    .line 4827
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lo/isSessionReady$onNavigationEvent;

    .line 4828
    iget v2, p1, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    const/4 v3, 0x0

    const/16 v7, 0x20

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    .line 6850
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lo/isSessionReady$onNavigationEvent;

    .line 6851
    iget v2, p1, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_7

    .line 6852
    iput v4, p1, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    .line 6854
    iget-object p1, v0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 6857
    iget-object p1, v0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v6

    :goto_2
    if-ltz p1, :cond_4

    .line 6859
    iget-object v2, v0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/isSessionReady$onPostMessage;

    invoke-interface {v2, v1}, Lo/isSessionReady$onPostMessage;->onNavigationEvent(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 6863
    :cond_4
    invoke-virtual {v0, v1, v4}, Lo/isSessionReady;->onPostMessage(Landroid/view/View;Z)V

    .line 6868
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6869
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 6871
    invoke-virtual {p1, v7}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_4

    .line 4830
    :cond_5
    iget p1, p1, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_7

    .line 6878
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lo/isSessionReady$onNavigationEvent;

    .line 6879
    iget v2, p1, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    and-int/2addr v2, v6

    if-nez v2, :cond_7

    .line 6880
    iput v6, p1, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    .line 6881
    iget-object p1, v0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 6884
    iget-object p1, v0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v6

    :goto_3
    if-ltz p1, :cond_6

    .line 6886
    iget-object v2, v0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/isSessionReady$onPostMessage;

    invoke-interface {v2, v1}, Lo/isSessionReady$onPostMessage;->ICustomTabsCallback(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 6890
    :cond_6
    invoke-virtual {v0, v1, v6}, Lo/isSessionReady;->onPostMessage(Landroid/view/View;Z)V

    .line 6893
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6894
    invoke-virtual {v0, v7}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4835
    :cond_7
    :goto_4
    iget p1, v0, Lo/isSessionReady;->onMessageChannelReady:I

    if-eq v5, p1, :cond_8

    .line 4836
    iput v5, v0, Lo/isSessionReady;->onMessageChannelReady:I

    .line 4838
    iget-object p1, v0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz p1, :cond_8

    .line 4841
    iget-object p1, v0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v6

    :goto_5
    if-ltz p1, :cond_8

    .line 4843
    iget-object v1, v0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_8
    return-void
.end method

.method public final onNavigationEvent(II)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    .line 2277
    iget-object p1, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lo/isSessionReady;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 2279
    :cond_0
    iget-object p1, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lo/isSessionReady;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 2282
    iget-object v0, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    invoke-virtual {v0, p1}, Lo/isSessionReady;->onMessageChannelReady(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2283
    iget-object v0, p0, Lo/isSessionReady$asBinder;->onNavigationEvent:Lo/rate;

    invoke-virtual {v0, p1, p2}, Lo/rate;->extraCallback(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;FF)V
    .locals 5

    .line 2214
    invoke-static {p1}, Lo/isSessionReady;->onNavigationEvent(Landroid/view/View;)F

    move-result p3

    .line 2215
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2218
    iget-object v1, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    .line 9945
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lo/isSessionReady$onNavigationEvent;

    iget v2, v2, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 9946
    invoke-static {v1}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v1

    invoke-static {v2, v1}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v1

    const/4 v2, 0x3

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    cmpl-float p2, p2, v4

    if-gtz p2, :cond_5

    if-nez p2, :cond_1

    cmpl-float p2, p3, v2

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    neg-int v3, v0

    goto :goto_1

    .line 2221
    :cond_2
    iget-object v1, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    cmpg-float v3, p2, v4

    if-ltz v3, :cond_3

    cmpl-float p2, p2, v4

    if-nez p2, :cond_4

    cmpl-float p2, p3, v2

    if-lez p2, :cond_4

    :cond_3
    sub-int/2addr v1, v0

    :cond_4
    move v3, v1

    .line 2225
    :cond_5
    :goto_1
    iget-object p2, p0, Lo/isSessionReady$asBinder;->onNavigationEvent:Lo/rate;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v3, p1}, Lo/rate;->onPostMessage(II)Z

    .line 2226
    iget-object p1, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;IIII)V
    .locals 1

    .line 2180
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 2183
    iget-object p4, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    .line 7945
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lo/isSessionReady$onNavigationEvent;

    iget p5, p5, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 7946
    invoke-static {p4}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result p4

    invoke-static {p5, p4}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result p4

    const/4 p5, 0x3

    and-int/2addr p4, p5

    const/4 v0, 0x0

    if-ne p4, p5, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    add-int/2addr p2, p3

    int-to-float p2, p2

    goto :goto_1

    .line 2186
    :cond_1
    iget-object p4, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    sub-int/2addr p4, p2

    int-to-float p2, p4

    :goto_1
    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 2189
    iget-object p3, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    invoke-virtual {p3, p1, p2}, Lo/isSessionReady;->onPostMessage(Landroid/view/View;F)V

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_2

    const/4 v0, 0x4

    .line 2190
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2191
    iget-object p1, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;)I
    .locals 1

    .line 2289
    invoke-static {p1}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(Landroid/view/View;I)I
    .locals 3

    .line 2294
    iget-object v0, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    .line 10945
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lo/isSessionReady$onNavigationEvent;

    iget v1, v1, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 10946
    invoke-static {v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    invoke-static {v1, v0}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2295
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 2297
    :cond_1
    iget-object v0, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2298
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final run()V
    .locals 13

    .line 11237
    iget-object v0, p0, Lo/isSessionReady$asBinder;->onNavigationEvent:Lo/rate;

    .line 11459
    iget v0, v0, Lo/rate;->asBinder:I

    .line 11238
    iget v1, p0, Lo/isSessionReady$asBinder;->onMessageChannelReady:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 11240
    iget-object v5, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    invoke-virtual {v5, v2}, Lo/isSessionReady;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11241
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    add-int/2addr v5, v0

    goto :goto_2

    .line 11243
    :cond_2
    iget-object v2, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lo/isSessionReady;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    .line 11244
    iget-object v5, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    :goto_2
    if-eqz v2, :cond_6

    if-eqz v1, :cond_3

    .line 11247
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v5, :cond_4

    :cond_3
    if-nez v1, :cond_6

    .line 11248
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v5, :cond_6

    :cond_4
    iget-object v0, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    .line 11249
    invoke-virtual {v0, v2}, Lo/isSessionReady;->onMessageChannelReady(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6

    .line 11250
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/isSessionReady$onNavigationEvent;

    .line 11251
    iget-object v1, p0, Lo/isSessionReady$asBinder;->onNavigationEvent:Lo/rate;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6}, Lo/rate;->onPostMessage(Landroid/view/View;II)Z

    .line 11252
    iput-boolean v4, v0, Lo/isSessionReady$onNavigationEvent;->onMessageChannelReady:Z

    .line 11253
    iget-object v0, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 11255
    invoke-direct {p0}, Lo/isSessionReady$asBinder;->onNavigationEvent()V

    .line 11257
    iget-object v0, p0, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    .line 11961
    iget-boolean v1, v0, Lo/isSessionReady;->onTransact:Z

    if-nez v1, :cond_6

    .line 11962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v5, v7

    .line 11963
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 11965
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_3
    if-ge v3, v2, :cond_5

    .line 11967
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 11969
    :cond_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 11970
    iput-boolean v4, v0, Lo/isSessionReady;->onTransact:Z

    :cond_6
    return-void
.end method
