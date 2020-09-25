.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$22;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$CodedOutputStreamWriteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->appendOrganizationIdToSessionFile(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$organizationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1616
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$22;->val$organizationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1619
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$22;->val$organizationId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeSessionAppClsId(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/String;)V

    return-void
.end method
