.class final Lo/getChildViewHolderInt$newSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildViewHolderInt;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "onGlobalLayout"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

.field private synthetic onPostMessage:Lo/getChildViewHolderInt;


# direct methods
.method constructor <init>(Lo/getChildViewHolderInt;Lo/toDebugString$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    iput-object p2, p0, Lo/getChildViewHolderInt$newSession;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 12

    .line 173
    iget-object v0, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->spaceCalulatorView:I

    invoke-virtual {v0, v1}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->spaceCalulatorView:I

    invoke-virtual {v0, v1}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "spaceCalulatorView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 175
    iget-object v2, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->spaceCalulatorView:I

    invoke-virtual {v2, v3}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 176
    iget-object v3, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-static {v3}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object v3

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "Resources.getSystem()"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v7, 0x1

    .line 2010
    invoke-static {v7, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v8, 0x40a00000    # 5.0f

    .line 3010
    invoke-static {v7, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v4

    shl-int/2addr v6, v7

    shl-int/2addr v4, v7

    sub-int/2addr v2, v4

    sub-int/2addr v0, v6

    int-to-float v8, v2

    const v9, 0x3f99999a    # 1.2f

    div-float/2addr v8, v9

    int-to-float v10, v0

    cmpl-float v11, v8, v10

    if-lez v11, :cond_0

    .line 1280
    new-instance v2, Lo/addWrite;

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    mul-float v10, v10, v9

    float-to-int v6, v10

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1282
    :cond_0
    new-instance v0, Lo/addWrite;

    float-to-int v8, v8

    add-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v0

    .line 1279
    :goto_0
    iput-object v2, v3, Lo/findContainingItemView;->getInterfaceDescriptor:Lo/addWrite;

    .line 1285
    iget-object v0, v3, Lo/findContainingItemView;->getInterfaceDescriptor:Lo/addWrite;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3027
    iget-object v0, v0, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1285
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    int-to-double v8, v0

    const-wide v10, 0x400acccccccccccdL    # 3.35

    div-double/2addr v8, v10

    double-to-int v0, v8

    iput v0, v3, Lo/findContainingItemView;->ICustomTabsService:I

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v4, 0x43340000    # 180.0f

    .line 4010
    invoke-static {v7, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 1286
    iget v4, v3, Lo/findContainingItemView;->ICustomTabsService:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    iput v0, v3, Lo/findContainingItemView;->ICustomTabsCallback$Stub$Proxy:I

    .line 177
    iget-object v0, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->spaceCalulatorView:I

    invoke-virtual {v0, v3}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Lo/getChildViewHolderInt$newSession;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    iget-object v3, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 178
    iget-object v0, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070129

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v3, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->spaceCalulatorView:I

    invoke-virtual {v3, v4}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-static {v3}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object v3

    .line 4068
    iget-object v3, v3, Lo/findContainingItemView;->getInterfaceDescriptor:Lo/addWrite;

    if-eqz v3, :cond_2

    .line 5027
    iget-object v3, v3, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 178
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    sub-int/2addr v1, v3

    .line 179
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 180
    iget-object v1, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->viewPager:I

    invoke-virtual {v1, v3}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setContentPadding;

    const-string/jumbo v3, "viewPager"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    float-to-int v0, v0

    .line 463
    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 191
    iget-object v0, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->winLogoEndingPositionView:I

    invoke-virtual {v0, v1}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "winLogoEndingPositionView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lo/onChildrenLoaded$onPostMessage;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 466
    move-object v2, v1

    check-cast v2, Lo/onChildrenLoaded$onPostMessage;

    .line 192
    iget-object v3, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-static {v3}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object v3

    .line 5070
    iget v3, v3, Lo/findContainingItemView;->ICustomTabsService:I

    .line 192
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    iget-object v3, p0, Lo/getChildViewHolderInt$newSession;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-static {v3}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object v3

    .line 6070
    iget v3, v3, Lo/findContainingItemView;->ICustomTabsService:I

    .line 193
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 467
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 465
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    return-void
.end method
