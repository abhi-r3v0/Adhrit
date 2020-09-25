.class public interface abstract Lo/UserRecoverableException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public abstract extraCallback(I)Lo/UserRecoverableException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/UserRecoverableException<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()Z
.end method
