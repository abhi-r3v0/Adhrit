.class Lo/warmup$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPlaybackStateChanged$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/warmup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/warmup;


# direct methods
.method constructor <init>(Lo/warmup;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/warmup$2;->onPostMessage:Lo/warmup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lo/warmup$2;->onPostMessage:Lo/warmup;

    invoke-virtual {v0, p1}, Lo/warmup;->onNavigationEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
