.class final Lo/MediaSessionCompatApi24$CallbackProxy$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi24$CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/MediaSessionCompatApi24$CallbackProxy;


# direct methods
.method constructor <init>(Lo/MediaSessionCompatApi24$CallbackProxy;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$2;->extraCallback:Lo/MediaSessionCompatApi24$CallbackProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 579
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy$2;->extraCallback:Lo/MediaSessionCompatApi24$CallbackProxy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/MediaSessionCompatApi24$CallbackProxy;->onMessageChannelReady:Z

    .line 580
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy$2;->extraCallback:Lo/MediaSessionCompatApi24$CallbackProxy;

    invoke-virtual {v0}, Lo/MediaSessionCompatApi24$CallbackProxy;->onNavigationEvent()V

    return-void
.end method
