.class Lo/requestPostMessageChannel$ICustomTabsCallback;
.super Lo/ICustomTabsService$Stub$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestPostMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Lo/describeContents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/describeContents<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/requestPostMessageChannel$ICustomTabsCallback;Lo/requestPostMessageChannel;Landroid/content/res/Resources;)V
    .locals 0

    .line 634
    invoke-direct {p0, p1, p2, p3}, Lo/ICustomTabsService$Stub$extraCallback;-><init>(Lo/ICustomTabsService$Stub$extraCallback;Lo/ICustomTabsService$Stub;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    .line 637
    iget-object p2, p1, Lo/requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    iput-object p2, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 638
    iget-object p1, p1, Lo/requestPostMessageChannel$ICustomTabsCallback;->onMessageChannelReady:Lo/describeContents;

    iput-object p1, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->onMessageChannelReady:Lo/describeContents;

    return-void

    .line 640
    :cond_0
    new-instance p1, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {p1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    iput-object p1, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 641
    new-instance p1, Lo/describeContents;

    invoke-direct {p1}, Lo/describeContents;-><init>()V

    iput-object p1, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->onMessageChannelReady:Lo/describeContents;

    return-void
.end method

.method private static asInterface(II)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method ICustomTabsCallback(II)Z
    .locals 3

    .line 690
    invoke-static {p1, p2}, Lo/requestPostMessageChannel$ICustomTabsCallback;->asInterface(II)J

    move-result-wide p1

    .line 691
    iget-object v0, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const-wide v0, 0x100000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method extraCallback(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 681
    :cond_0
    iget-object v1, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->onMessageChannelReady:Lo/describeContents;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lo/describeContents;->ICustomTabsCallback(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method extraCallback(II)I
    .locals 3

    .line 685
    invoke-static {p1, p2}, Lo/requestPostMessageChannel$ICustomTabsCallback;->asInterface(II)J

    move-result-wide p1

    .line 686
    iget-object v0, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method extraCallback([I)I
    .locals 0

    .line 673
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub$extraCallback;->ICustomTabsCallback([I)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 677
    :cond_0
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub$extraCallback;->ICustomTabsCallback([I)I

    move-result p1

    return p1
.end method

.method extraCallback([ILandroid/graphics/drawable/Drawable;I)I
    .locals 0

    .line 667
    invoke-super {p0, p1, p2}, Lo/ICustomTabsService$Stub$extraCallback;->ICustomTabsCallback([ILandroid/graphics/drawable/Drawable;)I

    move-result p1

    .line 668
    iget-object p2, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->onMessageChannelReady:Lo/describeContents;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lo/describeContents;->onPostMessage(ILjava/lang/Object;)V

    return p1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 702
    new-instance v0, Lo/requestPostMessageChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/requestPostMessageChannel;-><init>(Lo/requestPostMessageChannel$ICustomTabsCallback;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 708
    new-instance v0, Lo/requestPostMessageChannel;

    invoke-direct {v0, p0, p1}, Lo/requestPostMessageChannel;-><init>(Lo/requestPostMessageChannel$ICustomTabsCallback;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method onNavigationEvent(IILandroid/graphics/drawable/Drawable;Z)I
    .locals 9

    .line 652
    invoke-super {p0, p3}, Lo/ICustomTabsService$Stub$extraCallback;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)I

    move-result p3

    .line 653
    invoke-static {p1, p2}, Lo/requestPostMessageChannel$ICustomTabsCallback;->asInterface(II)J

    move-result-wide v0

    if-eqz p4, :cond_0

    const-wide v2, 0x200000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 658
    :goto_0
    iget-object v4, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    int-to-long v5, p3

    or-long v7, v5, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v0, v1, v7}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent(JLjava/lang/Object;)V

    if-eqz p4, :cond_1

    .line 660
    invoke-static {p2, p1}, Lo/requestPostMessageChannel$ICustomTabsCallback;->asInterface(II)J

    move-result-wide p1

    .line 661
    iget-object p4, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    const-wide v0, 0x100000000L

    or-long/2addr v0, v5

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p1, p2, v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent(JLjava/lang/Object;)V

    :cond_1
    return p3
.end method

.method onNavigationEvent()V
    .locals 1

    .line 647
    iget-object v0, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent()Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    move-result-object v0

    iput-object v0, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 648
    iget-object v0, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->onMessageChannelReady:Lo/describeContents;

    invoke-virtual {v0}, Lo/describeContents;->extraCallback()Lo/describeContents;

    move-result-object v0

    iput-object v0, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->onMessageChannelReady:Lo/describeContents;

    return-void
.end method

.method onPostMessage(II)Z
    .locals 3

    .line 695
    invoke-static {p1, p2}, Lo/requestPostMessageChannel$ICustomTabsCallback;->asInterface(II)J

    move-result-wide p1

    .line 696
    iget-object v0, p0, Lo/requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const-wide v0, 0x200000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
