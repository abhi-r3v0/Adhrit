.class final Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onNavigationEvent;
.super Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final operand:Ljava/lang/Number;


# direct methods
.method constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;-><init>()V

    .line 92
    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onNavigationEvent;->operand:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method final getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "FieldValue.increment"

    return-object v0
.end method

.method final getOperand()Ljava/lang/Number;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onNavigationEvent;->operand:Ljava/lang/Number;

    return-object v0
.end method
