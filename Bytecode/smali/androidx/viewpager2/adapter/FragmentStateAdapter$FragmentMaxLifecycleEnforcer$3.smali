.class public Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;)V
    .locals 0

    .line 653
    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onPostMessage:Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 0

    .line 657
    iget-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onPostMessage:Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onPostMessage(Z)V

    return-void
.end method
