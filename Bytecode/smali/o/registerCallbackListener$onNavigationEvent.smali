.class public final Lo/registerCallbackListener$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/interruptInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/registerCallbackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/view/View;",
        ">;",
        "Lo/interruptInternal;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\t\u0010\u0005\u001a\u00020\u0006H\u0096\u0002J\t\u0010\u0007\u001a\u00020\u0002H\u0096\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "androidx/core/view/ViewGroupKt$iterator$1",
        "",
        "Landroid/view/View;",
        "index",
        "",
        "hasNext",
        "",
        "next",
        "remove",
        "",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private onMessageChannelReady:I

.field final synthetic onNavigationEvent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/registerCallbackListener$onNavigationEvent;->onNavigationEvent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 69
    iget v0, p0, Lo/registerCallbackListener$onNavigationEvent;->onMessageChannelReady:I

    iget-object v1, p0, Lo/registerCallbackListener$onNavigationEvent;->onNavigationEvent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .line 1070
    iget-object v0, p0, Lo/registerCallbackListener$onNavigationEvent;->onNavigationEvent:Landroid/view/ViewGroup;

    iget v1, p0, Lo/registerCallbackListener$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/registerCallbackListener$onNavigationEvent;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 71
    iget-object v0, p0, Lo/registerCallbackListener$onNavigationEvent;->onNavigationEvent:Landroid/view/ViewGroup;

    iget v1, p0, Lo/registerCallbackListener$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/registerCallbackListener$onNavigationEvent;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method
