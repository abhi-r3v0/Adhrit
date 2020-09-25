.class final Lo/MediaSessionCompat$MediaSessionImplApi19$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaSessionCompat$MediaSessionImplApi19;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi19;

.field final synthetic extraCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/MediaSessionCompat$MediaSessionImplApi19;Ljava/lang/Runnable;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi19$2;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi19;

    iput-object p2, p0, Lo/MediaSessionCompat$MediaSessionImplApi19$2;->extraCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 45
    :try_start_0
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi19$2;->extraCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi19$2;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi19;

    invoke-virtual {v0}, Lo/MediaSessionCompat$MediaSessionImplApi19;->onNavigationEvent()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi19$2;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi19;

    invoke-virtual {v1}, Lo/MediaSessionCompat$MediaSessionImplApi19;->onNavigationEvent()V

    .line 48
    throw v0
.end method
