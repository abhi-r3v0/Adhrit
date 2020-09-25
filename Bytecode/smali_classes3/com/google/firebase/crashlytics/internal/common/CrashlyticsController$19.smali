.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$19;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$CodedOutputStreamWriteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeSessionOS(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

.field final synthetic val$isRooted:Z

.field final synthetic val$osCodeName:Ljava/lang/String;

.field final synthetic val$osRelease:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1322
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$19;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$19;->val$osRelease:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$19;->val$osCodeName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$19;->val$isRooted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$19;->val$osRelease:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$19;->val$osCodeName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$19;->val$isRooted:Z

    invoke-static {p1, v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeSessionOS(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
