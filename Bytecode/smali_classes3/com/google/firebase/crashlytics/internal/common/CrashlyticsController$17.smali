.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$17;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$CodedOutputStreamWriteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeBeginSession(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

.field final synthetic val$generator:Ljava/lang/String;

.field final synthetic val$sessionId:Ljava/lang/String;

.field final synthetic val$startedAtSeconds:J


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$17;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$17;->val$sessionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$17;->val$generator:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$17;->val$startedAtSeconds:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$17;->val$sessionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$17;->val$generator:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$17;->val$startedAtSeconds:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeBeginSession(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
