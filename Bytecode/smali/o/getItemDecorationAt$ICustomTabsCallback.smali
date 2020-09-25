.class final Lo/getItemDecorationAt$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getItemDecorationAt;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Landroid/view/WindowInsets;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "insets",
        "Landroid/view/WindowInsets;",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

.field private synthetic onPostMessage:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lo/repositionToWrapContentIfNecessary;)V
    .locals 0

    iput-object p1, p0, Lo/getItemDecorationAt$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    iput-object p2, p0, Lo/getItemDecorationAt$ICustomTabsCallback;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    .line 24
    move-object/from16 v1, p1

    check-cast v1, Landroid/view/WindowInsets;

    .line 1055
    iget-object v2, v0, Lo/getItemDecorationAt$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1056
    new-instance v2, Lo/onCreateView;

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v9, "Resources.getSystem()"

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v10, 0x1

    .line 2010
    invoke-static {v10, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    if-eqz v1, :cond_0

    .line 1057
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int v5, v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const-string v4, "bottom height"

    move-object v3, v2

    .line 1056
    invoke-direct/range {v3 .. v8}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    .line 1058
    new-instance v1, Lo/onCreateView;

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    .line 3010
    invoke-static {v10, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v13, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    const-string/jumbo v12, "top height"

    move-object v11, v1

    .line 1058
    invoke-direct/range {v11 .. v16}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    .line 1061
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lo/getItemDecorationAt$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1062
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1063
    iget-object v1, v0, Lo/getItemDecorationAt$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v4, v1}, Lo/getSessionPersistenceKey;->ICustomTabsCallback(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 1064
    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1066
    iget-object v1, v0, Lo/getItemDecorationAt$ICustomTabsCallback;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    check-cast v3, Ljava/util/List;

    const-string/jumbo v2, "value"

    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 3038
    invoke-virtual {v1, v3}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_1
    return-void
.end method
