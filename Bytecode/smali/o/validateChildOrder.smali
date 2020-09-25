.class public final Lo/validateChildOrder;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lo/LinearLayoutManager$SavedState;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0006j\u0008\u0012\u0004\u0012\u00020\u0002`\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\"\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0006j\u0008\u0012\u0004\u0012\u00020\u0002`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicAdapter;",
        "Landroid/widget/ArrayAdapter;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicUiData;",
        "context",
        "Landroid/content/Context;",
        "data",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "clickListener",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/OnMosaicItemClickListener;",
        "(Landroid/content/Context;Ljava/util/ArrayList;Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/OnMosaicItemClickListener;)V",
        "getClickListener",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/OnMosaicItemClickListener;",
        "cornerRadii",
        "",
        "getData",
        "()Ljava/util/ArrayList;",
        "radius",
        "",
        "getView",
        "Landroid/view/View;",
        "position",
        "",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final extraCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/LinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:[F

.field final onNavigationEvent:Lo/LinearLayoutManager$LayoutChunkResult;

.field private final onPostMessage:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lo/LinearLayoutManager$LayoutChunkResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lo/LinearLayoutManager$SavedState;",
            ">;",
            "Lo/LinearLayoutManager$LayoutChunkResult;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lo/validateChildOrder;->extraCallback:Ljava/util/ArrayList;

    iput-object p3, p0, Lo/validateChildOrder;->onNavigationEvent:Lo/LinearLayoutManager$LayoutChunkResult;

    .line 15009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "Resources.getSystem()"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 p3, 0x41a00000    # 20.0f

    .line 15010
    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 19
    iput p1, p0, Lo/validateChildOrder;->onPostMessage:F

    const/16 p3, 0x8

    new-array p3, p3, [F

    aput p1, p3, v1

    aput p1, p3, p2

    const/4 p2, 0x2

    aput p1, p3, p2

    const/4 p2, 0x3

    aput p1, p3, p2

    const/4 p2, 0x4

    aput p1, p3, p2

    const/4 p2, 0x5

    aput p1, p3, p2

    const/4 p2, 0x6

    aput p1, p3, p2

    const/4 p2, 0x7

    aput p1, p3, p2

    .line 20
    iput-object p3, p0, Lo/validateChildOrder;->onMessageChannelReady:[F

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const-string v0, "parent"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e02a0

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    .line 34
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const v1, 0x7f0b0623

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v1, 0x7f0b049e

    .line 35
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lo/setSpeed;

    const v1, 0x7f0b00ab

    .line 36
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lo/setSpeed;

    const v1, 0x7f0b05a8

    .line 37
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 38
    new-instance v1, Lo/resetInternal;

    const-string v2, "parentView"

    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "itemLogo"

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "multiIndicator"

    invoke-static {v6, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "backGround"

    invoke-static {v7, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lo/resetInternal;-><init>(Landroid/view/View;Landroid/view/View;Lo/setSpeed;Landroid/widget/ImageView;Lo/setSpeed;)V

    .line 1087
    iget-object v2, v1, Lo/resetInternal;->ICustomTabsCallback:Lo/setSpeed;

    .line 39
    invoke-virtual {v2, p3}, Lo/setMinAndMaxProgress;->setLegacyVisibilityHandlingEnabled(Z)V

    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    move-object v1, p2

    check-cast v1, Lo/resetInternal;

    .line 47
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "context"

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f070120

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 48
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 49
    iget-object v3, p0, Lo/validateChildOrder;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "data[position]"

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/LinearLayoutManager$SavedState;

    int-to-double v2, v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double v6, v2, v4

    const-wide v8, 0x3fc3333333333333L    # 0.15

    mul-double v2, v2, v8

    .line 1089
    iget-object v10, p1, Lo/LinearLayoutManager$SavedState;->onMessageChannelReady:Lo/invalidateAnchor;

    .line 1090
    iget-wide v10, v10, Lo/invalidateAnchor;->onPostMessage:D

    mul-double v2, v2, v10

    add-double/2addr v6, v2

    int-to-double v2, p2

    mul-double v4, v4, v2

    mul-double v2, v2, v8

    .line 2089
    iget-object p2, p1, Lo/LinearLayoutManager$SavedState;->onMessageChannelReady:Lo/invalidateAnchor;

    .line 2091
    iget-wide v8, p2, Lo/invalidateAnchor;->ICustomTabsCallback:D

    mul-double v2, v2, v8

    add-double/2addr v4, v2

    .line 3089
    iget-object p2, p1, Lo/LinearLayoutManager$SavedState;->onMessageChannelReady:Lo/invalidateAnchor;

    .line 3093
    iget-wide v2, p2, Lo/invalidateAnchor;->onMessageChannelReady:D

    .line 4089
    iget-object p2, p1, Lo/LinearLayoutManager$SavedState;->onMessageChannelReady:Lo/invalidateAnchor;

    .line 4092
    iget-wide v8, p2, Lo/invalidateAnchor;->onNavigationEvent:D

    .line 5084
    iget-object p2, v1, Lo/resetInternal;->extraCallback:Landroid/view/View;

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_8

    check-cast p2, Lo/onChildrenLoaded$onPostMessage;

    double-to-int v6, v6

    .line 55
    iput v6, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    double-to-int v4, v4

    .line 56
    iput v4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    double-to-float v4, v8

    .line 57
    iput v4, p2, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    double-to-float v2, v2

    .line 58
    iput v2, p2, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    .line 6084
    iget-object v2, v1, Lo/resetInternal;->extraCallback:Landroid/view/View;

    .line 59
    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6085
    iget-object v3, v1, Lo/resetInternal;->onNavigationEvent:Lo/setSpeed;

    .line 6089
    iget-object p2, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 7023
    iget-object v4, p2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onMessageChannelReady:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    .line 61
    invoke-static/range {v3 .. v10}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 7086
    iget-object p2, v1, Lo/resetInternal;->onPostMessage:Landroid/widget/ImageView;

    .line 7089
    iget-object v2, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 8021
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onPostMessage:Ljava/util/List;

    .line 62
    check-cast v2, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    const/16 p3, 0x8

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8087
    iget-object p2, v1, Lo/resetInternal;->ICustomTabsCallback:Lo/setSpeed;

    .line 8116
    iget-object p2, p2, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 8216
    iget-object p2, p2, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz p2, :cond_7

    check-cast p2, Lo/setMaxFrame;

    .line 63
    check-cast p2, Lo/getComposition;

    .line 10089
    iget-object p3, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 11026
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz p3, :cond_5

    .line 11349
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onNavigationEvent:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_3

    :cond_5
    move-object p3, v0

    .line 68
    :goto_3
    iget-object v2, p0, Lo/validateChildOrder;->onMessageChannelReady:[F

    const/4 v4, 0x3

    invoke-static {p3, v0, v0, v2, v4}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 11564
    invoke-virtual {p2, v3, p3}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 71
    sget-object p2, Lo/findOneVisibleChild;->onMessageChannelReady:Lo/findOneVisibleChild;

    .line 12089
    iget p3, p1, Lo/LinearLayoutManager$SavedState;->ICustomTabsCallback:I

    add-int/lit8 v0, p3, 0x2

    if-le v0, p3, :cond_6

    .line 12101
    invoke-virtual {p2}, Lo/findOneVisibleChild;->onNavigationEvent()V

    .line 13083
    :cond_6
    iget-object p2, v1, Lo/resetInternal;->onMessageChannelReady:Landroid/view/View;

    .line 72
    new-instance p3, Lo/validateChildOrder$onMessageChannelReady;

    invoke-direct {p3, p0, p1, v1}, Lo/validateChildOrder$onMessageChannelReady;-><init>(Lo/validateChildOrder;Lo/LinearLayoutManager$SavedState;Lo/resetInternal;)V

    check-cast p3, Lo/onDisconnectSetValue;

    invoke-static {p2, p3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 14083
    iget-object p1, v1, Lo/resetInternal;->onMessageChannelReady:Landroid/view/View;

    return-object p1

    .line 9215
    :cond_7
    throw v0

    .line 54
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lifestyle.compass.mosiac.MosaicViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
