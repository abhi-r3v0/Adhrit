.class Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21$3;
.super Lo/containsKey$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->ICustomTabsCallback(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:I

.field final synthetic extraCallback:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

.field final synthetic onNavigationEvent:I

.field final synthetic onPostMessage:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;IILjava/lang/ref/WeakReference;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21$3;->extraCallback:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    iput p2, p0, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21$3;->onNavigationEvent:I

    iput p3, p0, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21$3;->ICustomTabsCallback:I

    iput-object p4, p0, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21$3;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lo/containsKey$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Landroid/graphics/Typeface;)V
    .locals 2

    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 363
    iget v0, p0, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21$3;->onNavigationEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 364
    iget v1, p0, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21$3;->ICustomTabsCallback:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    .line 368
    :cond_1
    iget-object v0, p0, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21$3;->extraCallback:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    iget-object v1, p0, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21$3;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onPostMessage(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public onNavigationEvent(I)V
    .locals 0

    return-void
.end method
