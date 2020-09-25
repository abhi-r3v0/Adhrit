.class final Lo/getMode$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMode;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lo/getMode$extraCallback;->onPostMessage:Ljava/util/List;

    iput-object p2, p0, Lo/getMode$extraCallback;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 13

    .line 21
    check-cast p1, Landroid/view/WindowInsets;

    .line 1045
    iget-object v0, p0, Lo/getMode$extraCallback;->onPostMessage:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1046
    new-instance v0, Lo/onCreateView;

    if-eqz p1, :cond_0

    .line 1047
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    move v3, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const-string v2, "bottom height"

    move-object v1, v0

    .line 1046
    invoke-direct/range {v1 .. v6}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    .line 1048
    new-instance p1, Lo/onCreateView;

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Resources.getSystem()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    .line 2010
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    const-string/jumbo v8, "top height"

    move-object v7, p1

    .line 1048
    invoke-direct/range {v7 .. v12}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    .line 1051
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/getMode$extraCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1052
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1053
    iget-object p1, p0, Lo/getMode$extraCallback;->onPostMessage:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v2, p1}, Lo/getSessionPersistenceKey;->ICustomTabsCallback(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 1054
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1056
    iget-object p1, p0, Lo/getMode$extraCallback;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    check-cast v1, Ljava/util/List;

    const-string/jumbo v0, "value"

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 2038
    invoke-virtual {p1, v1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_1
    return-void
.end method
