.class public interface abstract Lo/fromQueryDefinition;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()Lo/fromQueryDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/fromQueryDefinition<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract extraCallback(Lo/hasIndex;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hasIndex<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()V
.end method

.method public abstract onNavigationEvent()Z
.end method
