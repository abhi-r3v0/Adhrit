.class public final Lo/buildAppRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/buildAppRequest$onPostMessage;
    }
.end annotation


# instance fields
.field private final arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/buildAppRequest;->arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/buildAppRequest;->arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;->receivedResponse(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
