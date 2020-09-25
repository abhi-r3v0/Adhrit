.class final synthetic Lo/getAppProcessInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoCrashlyticsReportEncoder;


# static fields
.field static final zza:Lo/AutoCrashlyticsReportEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getAppProcessInfo;

    invoke-direct {v0}, Lo/getAppProcessInfo;-><init>()V

    sput-object v0, Lo/getAppProcessInfo;->zza:Lo/AutoCrashlyticsReportEncoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)V
    .locals 0

    invoke-static {p1}, Lo/populateTime;->zza(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)V

    return-void
.end method
