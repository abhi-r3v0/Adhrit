.class public Lcom/google/firebase/crashlytics/internal/report/network/CompositeCreateReportSpiCall;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/report/network/CreateReportSpiCall;


# instance fields
.field private final javaReportSpiCall:Lcom/google/firebase/crashlytics/internal/report/network/DefaultCreateReportSpiCall;

.field private final nativeReportSpiCall:Lcom/google/firebase/crashlytics/internal/report/network/NativeCreateReportSpiCall;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/report/network/DefaultCreateReportSpiCall;Lcom/google/firebase/crashlytics/internal/report/network/NativeCreateReportSpiCall;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/report/network/CompositeCreateReportSpiCall;->javaReportSpiCall:Lcom/google/firebase/crashlytics/internal/report/network/DefaultCreateReportSpiCall;

    .line 27
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/report/network/CompositeCreateReportSpiCall;->nativeReportSpiCall:Lcom/google/firebase/crashlytics/internal/report/network/NativeCreateReportSpiCall;

    return-void
.end method


# virtual methods
.method public invoke(Lcom/google/firebase/crashlytics/internal/report/model/CreateReportRequest;Z)Z
    .locals 3

    .line 32
    sget-object v0, Lcom/google/firebase/crashlytics/internal/report/network/CompositeCreateReportSpiCall$1;->$SwitchMap$com$google$firebase$crashlytics$internal$report$model$Report$Type:[I

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/report/model/CreateReportRequest;->report:Lcom/google/firebase/crashlytics/internal/report/model/Report;

    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/report/model/Report;->getType()Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/report/network/CompositeCreateReportSpiCall;->nativeReportSpiCall:Lcom/google/firebase/crashlytics/internal/report/network/NativeCreateReportSpiCall;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/report/network/NativeCreateReportSpiCall;->invoke(Lcom/google/firebase/crashlytics/internal/report/model/CreateReportRequest;Z)Z

    return v1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/report/network/CompositeCreateReportSpiCall;->javaReportSpiCall:Lcom/google/firebase/crashlytics/internal/report/network/DefaultCreateReportSpiCall;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/report/network/DefaultCreateReportSpiCall;->invoke(Lcom/google/firebase/crashlytics/internal/report/model/CreateReportRequest;Z)Z

    return v1
.end method
