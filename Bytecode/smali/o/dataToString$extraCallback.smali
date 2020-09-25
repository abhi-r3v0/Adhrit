.class final Lo/dataToString$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dataToString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/dataToString;


# direct methods
.method constructor <init>(Lo/dataToString;)V
    .locals 0

    iput-object p1, p0, Lo/dataToString$extraCallback;->extraCallback:Lo/dataToString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 100
    iget-object v0, p0, Lo/dataToString$extraCallback;->extraCallback:Lo/dataToString;

    .line 1027
    iget-object v0, v0, Lo/dataToString;->onMessageChannelReady:Lo/dataToString$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lo/dataToString$onMessageChannelReady;->onPostMessage()V

    .line 101
    :cond_0
    iget-object v0, p0, Lo/dataToString$extraCallback;->extraCallback:Lo/dataToString;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
