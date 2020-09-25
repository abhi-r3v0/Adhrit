.class Lo/ICustomTabsService$warmup;
.super Landroidx/appcompat/widget/ContentFrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "warmup"
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/ICustomTabsService;


# direct methods
.method public constructor <init>(Lo/ICustomTabsService;Landroid/content/Context;)V
    .locals 0

    .line 3011
    iput-object p1, p0, Lo/ICustomTabsService$warmup;->onPostMessage:Lo/ICustomTabsService;

    .line 3012
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private onNavigationEvent(II)Z
    .locals 1

    const/4 v0, -0x5

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 3041
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 3017
    iget-object v0, p0, Lo/ICustomTabsService$warmup;->onPostMessage:Lo/ICustomTabsService;

    invoke-virtual {v0, p1}, Lo/ICustomTabsService;->extraCallback(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3018
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3023
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 3027
    invoke-direct {p0, v0, v1}, Lo/ICustomTabsService$warmup;->onNavigationEvent(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3028
    iget-object p1, p0, Lo/ICustomTabsService$warmup;->onPostMessage:Lo/ICustomTabsService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/ICustomTabsService;->ICustomTabsCallback$Stub(I)V

    const/4 p1, 0x1

    return p1

    .line 3032
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 3037
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
