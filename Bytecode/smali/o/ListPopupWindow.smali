.class public interface abstract Lo/ListPopupWindow;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasDividerBeforeChildAt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/hasDividerBeforeChildAt;"
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract extraCallback(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onMessageChannelReady(Lo/LinearLayoutCompat$OrientationMode;)V
.end method

.method public abstract onNavigationEvent(Lo/LinearLayoutCompat$OrientationMode;)V
.end method

.method public abstract onPostMessage()Lo/getNextLocationOffset;
.end method

.method public abstract onPostMessage(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onPostMessage(Lo/getNextLocationOffset;)V
.end method
