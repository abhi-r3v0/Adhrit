.class public final Lo/getEndUrl;
.super Landroid/view/ViewGroup;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/WinDetailsResponseJsonAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Lo/WinDetailsResponseJsonAdapter;

    invoke-direct {p1, p0}, Lo/WinDetailsResponseJsonAdapter;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lo/getEndUrl;->ICustomTabsCallback:Lo/WinDetailsResponseJsonAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lo/WinDetailsResponseJsonAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lo/WinDetailsResponseJsonAdapter;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object p1, p0, Lo/getEndUrl;->ICustomTabsCallback:Lo/WinDetailsResponseJsonAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lo/WinDetailsResponseJsonAdapter;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lo/WinDetailsResponseJsonAdapter;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object p1, p0, Lo/getEndUrl;->ICustomTabsCallback:Lo/WinDetailsResponseJsonAdapter;

    return-void
.end method


# virtual methods
.method protected final onLayout(ZIIII)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lo/getEndUrl;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1000
    :try_start_0
    iget-object v2, p0, Lo/getEndUrl;->ICustomTabsCallback:Lo/WinDetailsResponseJsonAdapter;

    invoke-virtual {v2}, Lo/WinDetailsResponseJsonAdapter;->onMessageChannelReady()Lo/getRewardsExpired;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Unable to retrieve ad size."

    invoke-static {v3, v2}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/getRewardsExpired;->onMessageChannelReady(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0}, Lo/getRewardsExpired;->extraCallback(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lo/getEndUrl;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lo/getEndUrl;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lo/getEndUrl;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setAdListener(Lo/getRewardType;)V
    .locals 1

    iget-object v0, p0, Lo/getEndUrl;->ICustomTabsCallback:Lo/WinDetailsResponseJsonAdapter;

    invoke-virtual {v0, p1}, Lo/WinDetailsResponseJsonAdapter;->onNavigationEvent(Lo/getRewardType;)V

    return-void
.end method

.method public final setAdSize(Lo/getRewardsExpired;)V
    .locals 3

    iget-object v0, p0, Lo/getEndUrl;->ICustomTabsCallback:Lo/WinDetailsResponseJsonAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lo/getRewardsExpired;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lo/WinDetailsResponseJsonAdapter;->extraCallback([Lo/getRewardsExpired;)V

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/getEndUrl;->ICustomTabsCallback:Lo/WinDetailsResponseJsonAdapter;

    invoke-virtual {v0, p1}, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method
