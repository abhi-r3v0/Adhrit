.class public final Lo/findViewHolderForAdapterPosition$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findViewHolderForAdapterPosition;->onNavigationEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/os/HandlerKt$postDelayed$runnable$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/findViewHolderForAdapterPosition;


# direct methods
.method public constructor <init>(Lo/findViewHolderForAdapterPosition;)V
    .locals 0

    iput-object p1, p0, Lo/findViewHolderForAdapterPosition$onTransact;->extraCallback:Lo/findViewHolderForAdapterPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 70
    iget-object v0, p0, Lo/findViewHolderForAdapterPosition$onTransact;->extraCallback:Lo/findViewHolderForAdapterPosition;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xaf

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;JI)V

    return-void
.end method
