.class final Lo/setLayoutResource$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLayoutResource;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u000e"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "<anonymous parameter 2>",
        "<anonymous parameter 3>",
        "<anonymous parameter 4>",
        "<anonymous parameter 5>",
        "<anonymous parameter 6>",
        "<anonymous parameter 7>",
        "<anonymous parameter 8>",
        "onLayoutChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/setLayoutResource;


# direct methods
.method constructor <init>(Lo/setLayoutResource;)V
    .locals 0

    iput-object p1, p0, Lo/setLayoutResource$onTransact;->onPostMessage:Lo/setLayoutResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 240
    iget-object p1, p0, Lo/setLayoutResource$onTransact;->onPostMessage:Lo/setLayoutResource;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->extraDetailsText:I

    invoke-virtual {p1, p2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string p2, "extraDetailsText"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 243
    iget-object p3, p0, Lo/setLayoutResource$onTransact;->onPostMessage:Lo/setLayoutResource;

    sget p4, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p3, p4}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    const-string p4, "recyclerView"

    invoke-static {p3, p4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_0

    .line 242
    instance-of p3, p1, Lo/onChildrenLoaded$onPostMessage;

    if-eqz p3, :cond_0

    check-cast p1, Lo/onChildrenLoaded$onPostMessage;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    const-string p5, "Resources.getSystem()"

    invoke-static {p3, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 p6, 0x41f00000    # 30.0f

    const/4 p7, 0x1

    .line 1010
    invoke-static {p7, p6, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 243
    iget-object p8, p0, Lo/setLayoutResource$onTransact;->onPostMessage:Lo/setLayoutResource;

    sget p9, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p8, p9}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p8

    check-cast p8, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p8, p4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8}, Landroid/view/View;->getHeight()I

    move-result p8

    add-int/2addr p3, p8

    if-eq p1, p3, :cond_0

    .line 244
    new-instance p1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 245
    iget-object p3, p0, Lo/setLayoutResource$onTransact;->onPostMessage:Lo/setLayoutResource;

    sget p8, Lo/getSwitchMinWidth$onPostMessage;->constraintLayout:I

    invoke-virtual {p3, p8}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lo/onChildrenLoaded;

    invoke-virtual {p1, p3}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 246
    iget-object p3, p0, Lo/setLayoutResource$onTransact;->onPostMessage:Lo/setLayoutResource;

    sget p8, Lo/getSwitchMinWidth$onPostMessage;->extraDetailsText:I

    invoke-virtual {p3, p8}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    invoke-static {p3, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, 0x3

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p8

    invoke-static {p8, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    .line 2010
    invoke-static {p7, p6, p5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p5

    float-to-int p5, p5

    .line 246
    iget-object p6, p0, Lo/setLayoutResource$onTransact;->onPostMessage:Lo/setLayoutResource;

    sget p7, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p6, p7}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p6, p4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result p4

    add-int/2addr p5, p4

    invoke-virtual {p1, p2, p3, p5}, Lo/MediaBrowserCompat$SubscriptionCallback;->onPostMessage(III)V

    .line 247
    new-instance p2, Lo/sendQueueTitle;

    invoke-direct {p2}, Lo/sendQueueTitle;-><init>()V

    .line 248
    iget-object p3, p0, Lo/setLayoutResource$onTransact;->onPostMessage:Lo/setLayoutResource;

    sget p4, Lo/getSwitchMinWidth$onPostMessage;->constraintLayout:I

    invoke-virtual {p3, p4}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lo/onChildrenLoaded;

    check-cast p2, Lo/fromQueueItem;

    invoke-static {p3, p2}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 249
    iget-object p2, p0, Lo/setLayoutResource$onTransact;->onPostMessage:Lo/setLayoutResource;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->constraintLayout:I

    invoke-virtual {p2, p3}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    invoke-virtual {p1, p2}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    :cond_0
    return-void
.end method
