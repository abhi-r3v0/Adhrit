.class final Lo/logAnalyticsAppExceptionEvents;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addLifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/addLifecycleEventListener<",
        "Lo/isLoggingEnabled;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lo/removeBackgroundStateChangeListener;


# direct methods
.method constructor <init>(Lo/sendSessionReports;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lo/logAnalyticsAppExceptionEvents;->zza:Lo/removeBackgroundStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 2
    check-cast p1, Lo/isLoggingEnabled;

    .line 3
    iget-object v0, p0, Lo/logAnalyticsAppExceptionEvents;->zza:Lo/removeBackgroundStateChangeListener;

    .line 1008
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lo/sendSessionReports;->zzb()V

    return-void
.end method
