.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$CodedOutputStreamWriteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeSessionApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

.field final synthetic val$appIdentifier:Ljava/lang/String;

.field final synthetic val$deliveryMechanism:I

.field final synthetic val$installUuid:Ljava/lang/String;

.field final synthetic val$versionCode:Ljava/lang/String;

.field final synthetic val$versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1290
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;->val$appIdentifier:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;->val$versionCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;->val$versionName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;->val$installUuid:Ljava/lang/String;

    iput p6, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;->val$deliveryMechanism:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1293
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;->val$appIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;->val$versionCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;->val$versionName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;->val$installUuid:Ljava/lang/String;

    iget v5, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;->val$deliveryMechanism:I

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$18;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 1300
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$2500(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    .line 1293
    invoke-static/range {v0 .. v6}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeSessionApp(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
