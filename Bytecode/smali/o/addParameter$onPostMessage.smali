.class Lo/addParameter$onPostMessage;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/addParameter;


# direct methods
.method public constructor <init>(Lo/addParameter;Landroid/os/Looper;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lo/addParameter$onPostMessage;->onPostMessage:Lo/addParameter;

    .line 465
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 471
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 472
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 473
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 474
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    iget-object p1, p0, Lo/addParameter$onPostMessage;->onPostMessage:Lo/addParameter;

    invoke-static {p1, v1, v0}, Lo/addParameter;->onPostMessage(Lo/addParameter;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object p1, p0, Lo/addParameter$onPostMessage;->onPostMessage:Lo/addParameter;

    invoke-static {p1, v1, v0}, Lo/addParameter;->ICustomTabsCallback(Lo/addParameter;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
