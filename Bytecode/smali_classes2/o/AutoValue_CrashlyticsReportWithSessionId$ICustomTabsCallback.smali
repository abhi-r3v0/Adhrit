.class final Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReportWithSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final onMessageChannelReady:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 271
    new-instance v0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;

    new-instance v1, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback$5;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback$5;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 282
    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Throwable;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1890
    throw p1
.end method
