.class final Lo/requestExtraBinder$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getAudioStream$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestExtraBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/requestExtraBinder;


# direct methods
.method constructor <init>(Lo/requestExtraBinder;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lo/requestExtraBinder$5;->extraCallback:Lo/requestExtraBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroidx/fragment/app/Fragment;Lo/MediaMetadataCompatApi21;)V
    .locals 3

    .line 364
    iget-object v0, p0, Lo/requestExtraBinder$5;->extraCallback:Lo/requestExtraBinder;

    .line 1722
    iget-object v1, v0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1723
    iget-object v1, v0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    :cond_0
    iget-object v0, v0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPostMessage(Landroidx/fragment/app/Fragment;Lo/MediaMetadataCompatApi21;)V
    .locals 2

    .line 369
    invoke-virtual {p2}, Lo/MediaMetadataCompatApi21;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lo/requestExtraBinder$5;->extraCallback:Lo/requestExtraBinder;

    .line 1736
    iget-object v1, v0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 1737
    invoke-virtual {v1, p2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1738
    iget-object p2, v0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    iget p2, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x3

    if-ge p2, v1, :cond_0

    .line 1742
    invoke-virtual {v0, p1}, Lo/requestExtraBinder;->asInterface(Landroidx/fragment/app/Fragment;)V

    .line 1743
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lo/requestExtraBinder;->onMessageChannelReady(Landroidx/fragment/app/Fragment;I)V

    :cond_0
    return-void
.end method
