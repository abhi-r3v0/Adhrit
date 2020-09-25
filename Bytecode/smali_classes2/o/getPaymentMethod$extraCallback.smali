.class final Lo/getPaymentMethod$extraCallback;
.super Lo/setPointerStrokeWidth;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation


# instance fields
.field private final synthetic onMessageChannelReady:Lo/getPaymentMethod;


# direct methods
.method public constructor <init>(Lo/getPaymentMethod;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getPaymentMethod$extraCallback;->onMessageChannelReady:Lo/getPaymentMethod;

    .line 2
    invoke-direct {p0, p2}, Lo/setPointerStrokeWidth;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/getPaymentMethod$onMessageChannelReady;

    .line 6
    iget-object v0, p0, Lo/getPaymentMethod$extraCallback;->onMessageChannelReady:Lo/getPaymentMethod;

    .line 2014
    iget-object v0, v0, Lo/getPaymentMethod;->onMessageChannelReady:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2016
    invoke-interface {p1}, Lo/getPaymentMethod$onMessageChannelReady;->onMessageChannelReady()V

    return-void

    .line 2017
    :cond_1
    :try_start_0
    invoke-interface {p1, v0}, Lo/getPaymentMethod$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2020
    invoke-interface {p1}, Lo/getPaymentMethod$onMessageChannelReady;->onMessageChannelReady()V

    .line 2021
    throw v0

    .line 1041
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
