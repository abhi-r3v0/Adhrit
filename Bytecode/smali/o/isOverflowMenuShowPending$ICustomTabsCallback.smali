.class interface abstract Lo/isOverflowMenuShowPending$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isOverflowMenuShowPending;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()F
.end method

.method public abstract ICustomTabsCallback(F)Z
.end method

.method public abstract onMessageChannelReady()Z
.end method

.method public abstract onNavigationEvent()F
.end method

.method public abstract onNavigationEvent(F)Z
.end method

.method public abstract onPostMessage()Lo/ActionMenuView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ActionMenuView<",
            "TT;>;"
        }
    .end annotation
.end method
