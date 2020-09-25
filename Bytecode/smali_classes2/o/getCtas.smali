.class public final Lo/getCtas;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1

    new-instance v0, Lo/SwipeActionProperties$$Parcelable;

    invoke-direct {v0, p0, p1}, Lo/SwipeActionProperties$$Parcelable;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0}, Lo/SwipeActionProperties;->ICustomTabsCallback()V

    return-void
.end method

.method public static onPostMessage(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    new-instance v0, Lo/SwipeActionPropertiesJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/SwipeActionPropertiesJsonAdapter;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0}, Lo/SwipeActionProperties;->ICustomTabsCallback()V

    return-void
.end method
