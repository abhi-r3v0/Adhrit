.class final Lo/SessionReportingCoordinator$$Lambda$2$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isPresent$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SessionReportingCoordinator$$Lambda$2;->wrapOnComplete(Lo/isPresent$onPostMessage;)Lo/getSortedCustomAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$source:Lo/removeBackgroundStateChangeListener;


# direct methods
.method constructor <init>(Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lo/SessionReportingCoordinator$$Lambda$2$4;->val$source:Lo/removeBackgroundStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lo/getMarkerFile;Lo/isPresent;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 247
    iget-object p2, p0, Lo/SessionReportingCoordinator$$Lambda$2$4;->val$source:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {p1}, Lo/getMarkerFile;->toException()Lcom/google/firebase/database/DatabaseException;

    move-result-object p1

    .line 1011
    iget-object p2, p2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 249
    :cond_0
    iget-object p1, p0, Lo/SessionReportingCoordinator$$Lambda$2$4;->val$source:Lo/removeBackgroundStateChangeListener;

    .line 2008
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method
