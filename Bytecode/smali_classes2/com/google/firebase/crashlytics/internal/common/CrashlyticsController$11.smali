.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeNonFatalException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$thread:Ljava/lang/Thread;

.field final synthetic val$time:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$time:Ljava/util/Date;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$ex:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 653
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->isHandlingException()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$time:Ljava/util/Date;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$400(Ljava/util/Date;)J

    move-result-wide v0

    .line 655
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$500(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$ex:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$thread:Ljava/lang/Thread;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->persistNonFatalEvent(Ljava/lang/Throwable;Ljava/lang/Thread;J)V

    .line 656
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$thread:Ljava/lang/Thread;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$ex:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$2100(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/lang/Thread;Ljava/lang/Throwable;J)V

    :cond_0
    return-void
.end method
