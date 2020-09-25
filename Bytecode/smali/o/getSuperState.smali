.class final Lo/getSuperState;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getSuperState$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lo/getSuperState$onMessageChannelReady;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/setDrawerTitle;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Landroid/net/Uri;

.field private final onNavigationEvent:Landroid/content/Context;

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(Lo/setDrawerTitle;Landroid/net/Uri;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    iput-object p2, p0, Lo/getSuperState;->onMessageChannelReady:Landroid/net/Uri;

    .line 58
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lo/getSuperState;->extraCallback:Ljava/lang/ref/WeakReference;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lo/getSuperState;->onNavigationEvent:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 63
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p2

    float-to-double v0, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 64
    :goto_0
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, p2

    mul-double v2, v2, v0

    double-to-int p2, v2

    iput p2, p0, Lo/getSuperState;->onPostMessage:I

    .line 65
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p1, p1

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Lo/getSuperState;->ICustomTabsCallback:I

    return-void
.end method

.method private varargs onNavigationEvent()Lo/getSuperState$onMessageChannelReady;
    .locals 5

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lo/getSuperState;->onNavigationEvent:Landroid/content/Context;

    iget-object v1, p0, Lo/getSuperState;->onMessageChannelReady:Landroid/net/Uri;

    iget v2, p0, Lo/getSuperState;->onPostMessage:I

    iget v3, p0, Lo/getSuperState;->ICustomTabsCallback:I

    .line 87
    invoke-static {v0, v1, v2, v3}, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback(Landroid/content/Context;Landroid/net/Uri;II)Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, v0, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;->extraCallback:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lo/getSuperState;->onNavigationEvent:Landroid/content/Context;

    iget-object v3, p0, Lo/getSuperState;->onMessageChannelReady:Landroid/net/Uri;

    .line 92
    invoke-static {v1, v2, v3}, Lo/ViewDataBinding$OnStartListener;->onPostMessage(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lo/ViewDataBinding$OnStartListener$onNavigationEvent;

    move-result-object v1

    .line 94
    new-instance v2, Lo/getSuperState$onMessageChannelReady;

    iget-object v3, p0, Lo/getSuperState;->onMessageChannelReady:Landroid/net/Uri;

    iget-object v4, v1, Lo/ViewDataBinding$OnStartListener$onNavigationEvent;->extraCallback:Landroid/graphics/Bitmap;

    iget v0, v0, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;->onPostMessage:I

    iget v1, v1, Lo/ViewDataBinding$OnStartListener$onNavigationEvent;->onPostMessage:I

    invoke-direct {v2, v3, v4, v0, v1}, Lo/getSuperState$onMessageChannelReady;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Lo/getSuperState$onMessageChannelReady;

    iget-object v2, p0, Lo/getSuperState;->onMessageChannelReady:Landroid/net/Uri;

    invoke-direct {v1, v2, v0}, Lo/getSuperState$onMessageChannelReady;-><init>(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-object v1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/getSuperState;->onNavigationEvent()Lo/getSuperState$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .line 26
    check-cast p1, Lo/getSuperState$onMessageChannelReady;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2113
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2114
    iget-object v1, p0, Lo/getSuperState;->extraCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/setDrawerTitle;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2262
    iput-object v1, v2, Lo/setDrawerTitle;->extraCallback:Ljava/lang/ref/WeakReference;

    .line 2263
    invoke-virtual {v2}, Lo/setDrawerTitle;->extraCallback()V

    .line 2265
    iget-object v1, p1, Lo/getSuperState$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 2266
    iget v1, p1, Lo/getSuperState$onMessageChannelReady;->extraCallback:I

    iput v1, v2, Lo/setDrawerTitle;->onNavigationEvent:I

    .line 2267
    iget-object v3, p1, Lo/getSuperState$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iget-object v5, p1, Lo/getSuperState$onMessageChannelReady;->onNavigationEvent:Landroid/net/Uri;

    iget v6, p1, Lo/getSuperState$onMessageChannelReady;->onPostMessage:I

    iget v7, p1, Lo/getSuperState$onMessageChannelReady;->extraCallback:I

    invoke-virtual/range {v2 .. v7}, Lo/setDrawerTitle;->onNavigationEvent(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_0
    if-nez v0, :cond_1

    .line 2120
    iget-object v0, p1, Lo/getSuperState$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2122
    iget-object p1, p1, Lo/getSuperState$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method
