.class Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$ICustomTabsCallback;
.super Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "FieldValue.delete"

    return-object v0
.end method
