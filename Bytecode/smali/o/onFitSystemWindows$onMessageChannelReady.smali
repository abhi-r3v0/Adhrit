.class final Lo/onFitSystemWindows$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/Downsampler$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onFitSystemWindows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/FitWindowsViewGroup;

.field private final onPostMessage:Lo/getBackground;


# direct methods
.method constructor <init>(Lo/FitWindowsViewGroup;Lo/getBackground;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lo/onFitSystemWindows$onMessageChannelReady;->onNavigationEvent:Lo/FitWindowsViewGroup;

    .line 83
    iput-object p2, p0, Lo/onFitSystemWindows$onMessageChannelReady;->onPostMessage:Lo/getBackground;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 91
    iget-object v0, p0, Lo/onFitSystemWindows$onMessageChannelReady;->onNavigationEvent:Lo/FitWindowsViewGroup;

    invoke-virtual {v0}, Lo/FitWindowsViewGroup;->ICustomTabsCallback()V

    return-void
.end method

.method public final onMessageChannelReady(Lo/dispatchFitSystemWindows;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lo/onFitSystemWindows$onMessageChannelReady;->onPostMessage:Lo/getBackground;

    .line 1127
    iget-object v0, v0, Lo/getBackground;->extraCallback:Ljava/io/IOException;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 103
    invoke-interface {p1, p2}, Lo/dispatchFitSystemWindows;->extraCallback(Landroid/graphics/Bitmap;)V

    .line 105
    :cond_0
    throw v0

    :cond_1
    return-void
.end method
