.class public final Landroidx/savedstate/Recreator$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$MediaSessionImplApi21$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/savedstate/Recreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final onPostMessage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/MediaSessionCompat$MediaSessionImplApi21;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/savedstate/Recreator$onMessageChannelReady;->onPostMessage:Ljava/util/Set;

    .line 1109
    iget-object p1, p1, Lo/MediaSessionCompat$MediaSessionImplApi21;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    const-string v0, "androidx.savedstate.Restarter"

    invoke-virtual {p1, v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaSessionCompat$MediaSessionImplApi21$onNavigationEvent;

    if-nez p1, :cond_0

    return-void

    .line 1111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SavedStateProvider with the given key is already registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onMessageChannelReady()Landroid/os/Bundle;
    .locals 3

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/savedstate/Recreator$onMessageChannelReady;->onPostMessage:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "classes_to_restore"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
