.class final Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/QueueFile$1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CrashlyticsReportSessionEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/QueueFile$1<",
        "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;Lo/QueueFile$Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getGenerator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "generator"

    invoke-interface {p2, v1, v0}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    .line 87
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getIdentifierUtf8Bytes()[B

    move-result-object v0

    const-string v1, "identifier"

    invoke-interface {p2, v1, v0}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    .line 88
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getStartedAt()J

    move-result-wide v0

    const-string v2, "startedAt"

    invoke-interface {p2, v2, v0, v1}, Lo/QueueFile$Element;->add(Ljava/lang/String;J)Lo/QueueFile$Element;

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getEndedAt()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "endedAt"

    invoke-interface {p2, v1, v0}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    .line 90
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->isCrashed()Z

    move-result v0

    const-string v1, "crashed"

    invoke-interface {p2, v1, v0}, Lo/QueueFile$Element;->add(Ljava/lang/String;Z)Lo/QueueFile$Element;

    .line 91
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getApp()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;

    move-result-object v0

    const-string v1, "app"

    invoke-interface {p2, v1, v0}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    .line 92
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getUser()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User;

    move-result-object v0

    const-string v1, "user"

    invoke-interface {p2, v1, v0}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    .line 93
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getOs()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$OperatingSystem;

    move-result-object v0

    const-string v1, "os"

    invoke-interface {p2, v1, v0}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    .line 94
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getDevice()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device;

    move-result-object v0

    const-string v1, "device"

    invoke-interface {p2, v1, v0}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    .line 95
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getEvents()Lcom/google/firebase/crashlytics/internal/model/ImmutableList;

    move-result-object v0

    const-string v1, "events"

    invoke-interface {p2, v1, v0}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    .line 96
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getGeneratorType()I

    move-result p1

    const-string v0, "generatorType"

    invoke-interface {p2, v0, p1}, Lo/QueueFile$Element;->add(Ljava/lang/String;I)Lo/QueueFile$Element;

    return-void
.end method

.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    check-cast p2, Lo/QueueFile$Element;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->encode(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;Lo/QueueFile$Element;)V

    return-void
.end method
