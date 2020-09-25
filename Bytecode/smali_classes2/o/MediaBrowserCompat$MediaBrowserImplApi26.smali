.class public Lo/MediaBrowserCompat$MediaBrowserImplApi26;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private final ICustomTabsCallback:I

.field private final onMessageChannelReady:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->browser_actions_context_menu_min_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi26;->ICustomTabsCallback:I

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->browser_actions_context_menu_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi26;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 48
    iget v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi26;->ICustomTabsCallback:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi26;->onMessageChannelReady:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    .line 50
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
