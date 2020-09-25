.class public final Lo/removeViewAt$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeViewAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/adapter/paymentV2/dataListTemplatePs2/NBAPaymentsDataListAdapter$Companion;",
        "",
        "()V",
        "LIFESTYLE_ITEM",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Ljava/util/Map$Entry;

.field private final arg$2:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map$Entry;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/removeViewAt$extraCallback;->arg$1:Ljava/util/Map$Entry;

    iput-object p2, p0, Lo/removeViewAt$extraCallback;->arg$2:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/Map$Entry;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/removeViewAt$extraCallback;

    invoke-direct {v0, p0, p1}, Lo/removeViewAt$extraCallback;-><init>(Ljava/util/Map$Entry;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/removeViewAt$extraCallback;->arg$1:Ljava/util/Map$Entry;

    iget-object v1, p0, Lo/removeViewAt$extraCallback;->arg$2:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;

    invoke-static {v0, v1}, Lo/CrashlyticsCore$3;->lambda$publish$0(Ljava/util/Map$Entry;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)V

    return-void
.end method
