.class final Lo/getDobMismatch;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/AmexWebViewInterface;

.field private final synthetic onMessageChannelReady:Lo/removeBackgroundStateChangeListener;


# direct methods
.method constructor <init>(Lo/AmexWebViewInterface;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getDobMismatch;->extraCallback:Lo/AmexWebViewInterface;

    iput-object p2, p0, Lo/getDobMismatch;->onMessageChannelReady:Lo/removeBackgroundStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lo/getDobMismatch;->extraCallback:Lo/AmexWebViewInterface;

    invoke-static {p1}, Lo/AmexWebViewInterface;->extraCallback(Lo/AmexWebViewInterface;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lo/getDobMismatch;->onMessageChannelReady:Lo/removeBackgroundStateChangeListener;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
