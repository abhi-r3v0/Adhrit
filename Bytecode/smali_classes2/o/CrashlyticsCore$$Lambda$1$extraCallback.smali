.class final Lo/CrashlyticsCore$$Lambda$1$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsCore$$Lambda$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final allowedPublishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final delegate:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;",
            ")V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lo/CrashlyticsCore$$Lambda$1$extraCallback;->allowedPublishedEvents:Ljava/util/Set;

    .line 147
    iput-object p2, p0, Lo/CrashlyticsCore$$Lambda$1$extraCallback;->delegate:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;

    return-void
.end method


# virtual methods
.method public final publish(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder<",
            "*>;)V"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lo/CrashlyticsCore$$Lambda$1$extraCallback;->allowedPublishedEvents:Ljava/util/Set;

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lo/CrashlyticsCore$$Lambda$1$extraCallback;->delegate:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;

    invoke-interface {v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;->publish(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)V

    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Attempting to publish an undeclared event %s."

    .line 154
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
