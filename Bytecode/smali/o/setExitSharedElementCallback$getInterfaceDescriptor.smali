.class final Lo/setExitSharedElementCallback$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setExitSharedElementCallback;->onMessageChannelReady(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setExitSharedElementCallback;

.field private synthetic onNavigationEvent:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/setExitSharedElementCallback;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/setExitSharedElementCallback$getInterfaceDescriptor;->onMessageChannelReady:Lo/setExitSharedElementCallback;

    iput-object p2, p0, Lo/setExitSharedElementCallback$getInterfaceDescriptor;->onNavigationEvent:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 11

    .line 1461
    iget-object v0, p0, Lo/setExitSharedElementCallback$getInterfaceDescriptor;->onMessageChannelReady:Lo/setExitSharedElementCallback;

    const-string v1, "ad_setup_supported_bank_list_load"

    invoke-static {v0, v1}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Ljava/lang/String;)V

    .line 1462
    iget-object v0, p0, Lo/setExitSharedElementCallback$getInterfaceDescriptor;->onMessageChannelReady:Lo/setExitSharedElementCallback;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->fabrikLoaderView:I

    invoke-virtual {v0, v1}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1463
    sget-object v0, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v0

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1463
    :goto_0
    check-cast v0, Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    .line 1464
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1465
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 1466
    new-instance v8, Lo/onCreateView;

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v9, "Resources.getSystem()"

    invoke-static {v2, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v10, 0x1

    .line 3010
    invoke-static {v10, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const-string v3, "header_space"

    move-object v2, v8

    .line 1466
    invoke-direct/range {v2 .. v7}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1467
    iget-object v2, p0, Lo/setExitSharedElementCallback$getInterfaceDescriptor;->onNavigationEvent:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1468
    new-instance v2, Lo/onCreateView;

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x43340000    # 180.0f

    .line 4010
    invoke-static {v10, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    add-int v5, v3, v0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const-string v4, "bottom_space"

    move-object v3, v2

    .line 1468
    invoke-direct/range {v3 .. v8}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    iget-object v0, p0, Lo/setExitSharedElementCallback$getInterfaceDescriptor;->onMessageChannelReady:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->extraCommand(Lo/setExitSharedElementCallback;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    const-string/jumbo v2, "value"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {v0, v1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 57
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
