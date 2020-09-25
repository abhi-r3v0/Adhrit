.class final Lcom/google/firebase/iid/MessengerIpcClient$onPostMessage;
.super Lcom/google/firebase/iid/MessengerIpcClient$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/MessengerIpcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/iid/MessengerIpcClient$onMessageChannelReady<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/iid/MessengerIpcClient$onMessageChannelReady;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method final handleResponseInternal(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "data"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$onMessageChannelReady;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method final isOneWay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
