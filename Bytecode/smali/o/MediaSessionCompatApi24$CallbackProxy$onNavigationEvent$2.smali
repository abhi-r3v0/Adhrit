.class final Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent$2;
.super Lo/MediaSessionCompatApi24$CallbackProxy$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent$2;->extraCallback:Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/MediaSessionCompatApi24$CallbackProxy$extraCallback;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 646
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent$2;->extraCallback:Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onPostMessage(Z)V

    return-void
.end method
