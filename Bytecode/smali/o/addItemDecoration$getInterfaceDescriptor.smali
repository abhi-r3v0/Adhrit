.class final Lo/addItemDecoration$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lo/isLoggingEnabled;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "task",
        "Lcom/google/android/gms/tasks/Task;",
        "Lcom/google/firebase/auth/AuthResult;",
        "kotlin.jvm.PlatformType",
        "onComplete"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/addItemDecoration;


# direct methods
.method constructor <init>(Lo/addItemDecoration;)V
    .locals 0

    iput-object p1, p0, Lo/addItemDecoration$getInterfaceDescriptor;->onNavigationEvent:Lo/addItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lo/addItemDecoration$getInterfaceDescriptor;->onNavigationEvent:Lo/addItemDecoration;

    invoke-static {p1}, Lo/addItemDecoration;->onMessageChannelReady(Lo/addItemDecoration;)Lo/setActive;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 120
    :cond_0
    iget-object p1, p0, Lo/addItemDecoration$getInterfaceDescriptor;->onNavigationEvent:Lo/addItemDecoration;

    .line 1054
    iget-object p1, p1, Lo/addItemDecoration;->onPostMessage:Lo/setActive;

    .line 120
    new-instance v0, Lo/throwIfInMutationOperation;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1302b2

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
