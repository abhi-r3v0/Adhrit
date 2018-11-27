.class public interface abstract Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi24.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onPrepare()V
.end method

.method public abstract onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method
