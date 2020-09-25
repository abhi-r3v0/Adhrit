.class public interface abstract Lo/needsDividerBefore;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract ICustomTabsCallback(I)Z
.end method

.method public abstract extraCallback(I)I
.end method

.method public abstract extraCallback()V
.end method

.method public abstract onMessageChannelReady(Landroid/os/Parcelable;)V
.end method

.method public abstract onNavigationEvent()Ljava/lang/Integer;
.end method

.method public abstract onNavigationEvent(I)V
.end method

.method public abstract onPostMessage()Landroid/os/Parcelable;
.end method

.method public abstract onPostMessage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation
.end method
