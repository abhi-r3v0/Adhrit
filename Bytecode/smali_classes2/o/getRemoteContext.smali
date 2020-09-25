.class public interface abstract Lo/getRemoteContext;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/getRemoteContext<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(Lo/DataHolder$zaa;Lo/getStartServicePackage;)Lo/DataHolder$zaa;
.end method

.method public abstract ICustomTabsCallback()Z
.end method

.method public abstract extraCallback()I
.end method

.method public abstract onMessageChannelReady()Z
.end method

.method public abstract onNavigationEvent()Lo/DynamiteApi;
.end method

.method public abstract onPostMessage()Lo/DynamiteModule$LoadingException;
.end method

.method public abstract onPostMessage(Lo/zzj;Lo/zzj;)Lo/zzj;
.end method
