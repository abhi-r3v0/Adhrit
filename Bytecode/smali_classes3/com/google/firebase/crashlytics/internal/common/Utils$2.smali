.class Lcom/google/firebase/crashlytics/internal/common/Utils$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/Utils;->race(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/isDefaultApp<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$result:Lo/removeBackgroundStateChangeListener;


# direct methods
.method constructor <init>(Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$result:Lo/removeBackgroundStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$result:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    .line 1010
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$result:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p1

    .line 1013
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->ICustomTabsCallback(Ljava/lang/Exception;)Z

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
