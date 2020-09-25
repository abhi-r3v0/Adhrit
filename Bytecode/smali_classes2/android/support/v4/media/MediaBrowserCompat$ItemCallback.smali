.class public abstract Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$ItemCallbackApi23;
    }
.end annotation


# instance fields
.field final mItemCallbackFwk:Landroid/media/browse/MediaBrowser$ItemCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 852
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$ItemCallbackApi23;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$ItemCallbackApi23;-><init>(Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->mItemCallbackFwk:Landroid/media/browse/MediaBrowser$ItemCallback;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 854
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->mItemCallbackFwk:Landroid/media/browse/MediaBrowser$ItemCallback;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 0

    return-void
.end method
