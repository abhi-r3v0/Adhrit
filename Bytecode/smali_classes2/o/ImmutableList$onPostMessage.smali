.class Lo/ImmutableList$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field final documentRef:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

.field final errorPath:Lo/ImmutableList$extraCallback;


# direct methods
.method constructor <init>(Lo/ImmutableList$extraCallback;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)V
    .locals 0

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    iput-object p1, p0, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    .line 1171
    iput-object p2, p0, Lo/ImmutableList$onPostMessage;->documentRef:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    return-void
.end method


# virtual methods
.method newInstanceWithErrorPath(Lo/ImmutableList$extraCallback;)Lo/ImmutableList$onPostMessage;
    .locals 2

    .line 1175
    new-instance v0, Lo/ImmutableList$onPostMessage;

    iget-object v1, p0, Lo/ImmutableList$onPostMessage;->documentRef:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    invoke-direct {v0, p1, v1}, Lo/ImmutableList$onPostMessage;-><init>(Lo/ImmutableList$extraCallback;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)V

    return-object v0
.end method
