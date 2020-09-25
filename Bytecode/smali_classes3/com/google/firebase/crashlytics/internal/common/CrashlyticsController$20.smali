.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$CodedOutputStreamWriteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeSessionDevice(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

.field final synthetic val$arch:I

.field final synthetic val$availableProcessors:I

.field final synthetic val$diskSpace:J

.field final synthetic val$isEmulator:Z

.field final synthetic val$manufacturer:Ljava/lang/String;

.field final synthetic val$model:Ljava/lang/String;

.field final synthetic val$modelClass:Ljava/lang/String;

.field final synthetic val$state:I

.field final synthetic val$totalRam:J


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1350
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iput p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$arch:I

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$model:Ljava/lang/String;

    iput p4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$availableProcessors:I

    iput-wide p5, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$totalRam:J

    iput-wide p7, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$diskSpace:J

    iput-boolean p9, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$isEmulator:Z

    iput p10, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$state:I

    iput-object p11, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$manufacturer:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$modelClass:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1353
    iget v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$arch:I

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$model:Ljava/lang/String;

    iget v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$availableProcessors:I

    iget-wide v4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$totalRam:J

    iget-wide v6, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$diskSpace:J

    iget-boolean v8, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$isEmulator:Z

    iget v9, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$state:I

    iget-object v10, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$manufacturer:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$20;->val$modelClass:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeSessionDevice(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
