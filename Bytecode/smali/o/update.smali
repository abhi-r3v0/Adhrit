.class public interface abstract Lo/update;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/update$ICustomTabsCallback;,
        Lo/update$onNavigationEvent;,
        Lo/update$onPostMessage;
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;
.end method

.method public abstract ICustomTabsCallback(Z)V
.end method

.method public abstract close()V
.end method

.method public abstract onPostMessage()Ljava/lang/String;
.end method
