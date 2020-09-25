.class final Lo/buildReportData$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/populateSessionDeviceData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/buildReportData;->addListenerForSingleValueEvent(Lo/populateSessionDeviceData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/buildReportData;

.field final synthetic val$listener:Lo/populateSessionDeviceData;


# direct methods
.method constructor <init>(Lo/buildReportData;Lo/populateSessionDeviceData;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lo/buildReportData$1;->this$0:Lo/buildReportData;

    iput-object p2, p0, Lo/buildReportData$1;->val$listener:Lo/populateSessionDeviceData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Lo/getMarkerFile;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lo/buildReportData$1;->val$listener:Lo/populateSessionDeviceData;

    invoke-interface {v0, p1}, Lo/populateSessionDeviceData;->onCancelled(Lo/getMarkerFile;)V

    return-void
.end method

.method public final onDataChange(Lo/CrashlyticsLifecycleEvents;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lo/buildReportData$1;->this$0:Lo/buildReportData;

    invoke-virtual {v0, p0}, Lo/buildReportData;->removeEventListener(Lo/populateSessionDeviceData;)V

    .line 179
    iget-object v0, p0, Lo/buildReportData$1;->val$listener:Lo/populateSessionDeviceData;

    invoke-interface {v0, p1}, Lo/populateSessionDeviceData;->onDataChange(Lo/CrashlyticsLifecycleEvents;)V

    return-void
.end method
