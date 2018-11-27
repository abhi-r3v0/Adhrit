.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnMetadataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;)V
    .locals 0

    .line 3142
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataUpdate(ILjava/lang/Object;)V
    .locals 1

    const v0, 0x10000001

    if-ne p1, v0, :cond_0

    .line 3145
    instance-of p1, p2, Landroid/media/Rating;

    if-eqz p1, :cond_0

    .line 3147
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;

    const/16 v0, 0x13

    .line 3148
    invoke-static {p2}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object p2

    .line 3147
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->postToHandler(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
