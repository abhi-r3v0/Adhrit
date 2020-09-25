.class public final Lo/isSessionReady$onNavigationEvent;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isSessionReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field ICustomTabsCallback:F

.field public extraCallback:I

.field onMessageChannelReady:Z

.field onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 2327
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 2313
    iput v0, p0, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2319
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2313
    iput v0, p0, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 2321
    sget-object v1, Lo/isSessionReady;->ICustomTabsCallback:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2322
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 2323
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2341
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 2313
    iput p1, p0, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 2345
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 2313
    iput p1, p0, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    return-void
.end method

.method public constructor <init>(Lo/isSessionReady$onNavigationEvent;)V
    .locals 1

    .line 2336
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    .line 2313
    iput v0, p0, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 2337
    iget p1, p1, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    iput p1, p0, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    return-void
.end method
