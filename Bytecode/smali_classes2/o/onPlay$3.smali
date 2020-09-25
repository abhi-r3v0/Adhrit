.class Lo/onPlay$3;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/onPlay;


# direct methods
.method constructor <init>(Lo/onPlay;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lo/onPlay$3;->onNavigationEvent:Lo/onPlay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 143
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lo/onPlay$3;->onNavigationEvent:Lo/onPlay;

    invoke-virtual {p1}, Lo/onPlay;->onPostMessage()V

    :goto_0
    return-void
.end method
