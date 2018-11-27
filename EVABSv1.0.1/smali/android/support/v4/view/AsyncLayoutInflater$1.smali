.class Landroid/support/v4/view/AsyncLayoutInflater$1;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/AsyncLayoutInflater;


# direct methods
.method constructor <init>(Landroid/support/v4/view/AsyncLayoutInflater;)V
    .locals 0

    .line 94
    iput-object p1, p0, Landroid/support/v4/view/AsyncLayoutInflater$1;->this$0:Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 97
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    .line 98
    iget-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$1;->this$0:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v0, v0, Landroid/support/v4/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v2, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    .line 102
    :cond_0
    iget-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->callback:Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

    iget-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    iget v2, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v3, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;->onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 104
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$1;->this$0:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v0, v0, Landroid/support/v4/view/AsyncLayoutInflater;->mInflateThread:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->releaseRequest(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V

    const/4 p1, 0x1

    return p1
.end method
