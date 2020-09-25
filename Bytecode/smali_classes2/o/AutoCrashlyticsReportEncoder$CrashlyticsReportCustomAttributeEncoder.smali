.class final synthetic Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/QueueFile$ElementInputStream;


# static fields
.field private static final instance:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;

    invoke-direct {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;-><init>()V

    sput-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;->instance:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/QueueFile$ElementInputStream;
    .locals 1

    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;->instance:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;

    return-object v0
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lo/getLogBytes;

    invoke-static {p1, p2}, Lo/QueueFileLogStore$LogBytes;->lambda$static$1(Ljava/lang/String;Lo/getLogBytes;)V

    return-void
.end method
