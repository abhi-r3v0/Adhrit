.class public Lo/setFilename$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setFilename;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field private final asyncQueue:Lo/CrashlyticsReport$Type;

.field private final context:Landroid/content/Context;

.field private final databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

.field private final datastore:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

.field private final initialUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

.field private final maxConcurrentLimboResolutions:I

.field private final settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/CrashlyticsReport$Type;Lo/AutoValue_CrashlyticsReport_Session;Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;ILo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lo/setFilename$extraCallback;->context:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lo/setFilename$extraCallback;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 65
    iput-object p3, p0, Lo/setFilename$extraCallback;->databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

    .line 66
    iput-object p4, p0, Lo/setFilename$extraCallback;->datastore:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    .line 67
    iput-object p5, p0, Lo/setFilename$extraCallback;->initialUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    .line 68
    iput p6, p0, Lo/setFilename$extraCallback;->maxConcurrentLimboResolutions:I

    .line 69
    iput-object p7, p0, Lo/setFilename$extraCallback;->settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    return-void
.end method


# virtual methods
.method getAsyncQueue()Lo/CrashlyticsReport$Type;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/setFilename$extraCallback;->asyncQueue:Lo/CrashlyticsReport$Type;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/setFilename$extraCallback;->context:Landroid/content/Context;

    return-object v0
.end method

.method getDatabaseInfo()Lo/AutoValue_CrashlyticsReport_Session;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/setFilename$extraCallback;->databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

    return-object v0
.end method

.method getDatastore()Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/setFilename$extraCallback;->datastore:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    return-object v0
.end method

.method getInitialUser()Lo/AutoValue_CrashlyticsReport_FilesPayload$1;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/setFilename$extraCallback;->initialUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    return-object v0
.end method

.method getMaxConcurrentLimboResolutions()I
    .locals 1

    .line 93
    iget v0, p0, Lo/setFilename$extraCallback;->maxConcurrentLimboResolutions:I

    return v0
.end method

.method getSettings()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/setFilename$extraCallback;->settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    return-object v0
.end method
