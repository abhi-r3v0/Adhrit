.class public final Lo/onFitSystemWindows;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/applySupportImageTint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onFitSystemWindows$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/applySupportImageTint<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/ButtonBarLayout;

.field private final onPostMessage:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lo/ButtonBarLayout;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/onFitSystemWindows;->onPostMessage:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 25
    iput-object p2, p0, Lo/onFitSystemWindows;->ICustomTabsCallback:Lo/ButtonBarLayout;

    return-void
.end method

.method private onPostMessage(Ljava/io/InputStream;IILo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    instance-of v0, p1, Lo/FitWindowsViewGroup;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Lo/FitWindowsViewGroup;

    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lo/FitWindowsViewGroup;

    iget-object v1, p0, Lo/onFitSystemWindows;->ICustomTabsCallback:Lo/ButtonBarLayout;

    invoke-direct {v0, p1, v1}, Lo/FitWindowsViewGroup;-><init>(Ljava/io/InputStream;Lo/ButtonBarLayout;)V

    const/4 p1, 0x1

    move-object p1, v0

    const/4 v0, 0x1

    .line 53
    :goto_0
    invoke-static {p1}, Lo/getBackground;->extraCallback(Ljava/io/InputStream;)Lo/getBackground;

    move-result-object v1

    .line 59
    new-instance v3, Lo/getVerticalOffset;

    invoke-direct {v3, v1}, Lo/getVerticalOffset;-><init>(Ljava/io/InputStream;)V

    .line 60
    new-instance v7, Lo/onFitSystemWindows$onMessageChannelReady;

    invoke-direct {v7, p1, v1}, Lo/onFitSystemWindows$onMessageChannelReady;-><init>(Lo/FitWindowsViewGroup;Lo/getBackground;)V

    .line 62
    :try_start_0
    iget-object v2, p0, Lo/onFitSystemWindows;->onPostMessage:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;IILo/applyFrameworkTintUsingColorFilter;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$extraCallback;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {v1}, Lo/getBackground;->extraCallback()V

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1}, Lo/FitWindowsViewGroup;->extraCallback()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 64
    invoke-virtual {v1}, Lo/getBackground;->extraCallback()V

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p1}, Lo/FitWindowsViewGroup;->extraCallback()V

    :cond_2
    throw p2
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    check-cast p1, Ljava/io/InputStream;

    invoke-direct {p0, p1, p2, p3, p4}, Lo/onFitSystemWindows;->onPostMessage(Ljava/io/InputStream;IILo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;Lo/applyFrameworkTintUsingColorFilter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    check-cast p1, Ljava/io/InputStream;

    .line 1030
    iget-object p2, p0, Lo/onFitSystemWindows;->onPostMessage:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->handles(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method
