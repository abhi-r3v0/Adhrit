.class public final Lo/LoginUiModel;
.super Ljava/lang/Object;


# instance fields
.field private final onPostMessage:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LoginUiModel;->onPostMessage:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Runnable;J)Z
    .locals 1

    iget-object v0, p0, Lo/LoginUiModel;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lo/LoginUiModel;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
