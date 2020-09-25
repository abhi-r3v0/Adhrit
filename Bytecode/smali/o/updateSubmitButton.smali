.class public final Lo/updateSubmitButton;
.super Lo/createVoiceWebSearchIntent;
.source ""

# interfaces
.implements Lo/getPreferredWidth;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/createVoiceWebSearchIntent;",
        "Lo/getPreferredWidth<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B\'\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0016\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/data/file/DeferredWriter;",
        "T",
        "",
        "Lcom/datadog/android/core/internal/threading/LazyHandlerThread;",
        "Lcom/datadog/android/core/internal/data/Writer;",
        "threadName",
        "",
        "writer",
        "dataMigrator",
        "Lcom/datadog/android/core/internal/data/DataMigrator;",
        "(Ljava/lang/String;Lcom/datadog/android/core/internal/data/Writer;Lcom/datadog/android/core/internal/data/DataMigrator;)V",
        "write",
        "",
        "model",
        "(Ljava/lang/Object;)V",
        "models",
        "",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final onMessageChannelReady:Lo/getPreferredWidth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPreferredWidth<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/getPreferredWidth;Lo/updateViewsVisibility;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/getPreferredWidth<",
            "TT;>;",
            "Lo/updateViewsVisibility;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "threadName"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writer"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lo/createVoiceWebSearchIntent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lo/updateSubmitButton;->onMessageChannelReady:Lo/getPreferredWidth;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    if-eqz p3, :cond_0

    .line 23
    new-instance p1, Lo/updateSubmitButton$onPostMessage;

    invoke-direct {p1, p3}, Lo/updateSubmitButton$onPostMessage;-><init>(Lo/updateViewsVisibility;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lo/createVoiceWebSearchIntent;->onMessageChannelReady(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lo/updateSubmitButton$extraCallback;

    invoke-direct {v0, p0, p1}, Lo/updateSubmitButton$extraCallback;-><init>(Lo/updateSubmitButton;Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/createVoiceWebSearchIntent;->onMessageChannelReady(Ljava/lang/Runnable;)V

    return-void
.end method
