.class final Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onMessageChannelReady;
.super Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;-><init>()V

    .line 56
    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onMessageChannelReady;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onMessageChannelReady;->elements:Ljava/util/List;

    return-object v0
.end method

.method final getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "FieldValue.arrayUnion"

    return-object v0
.end method
