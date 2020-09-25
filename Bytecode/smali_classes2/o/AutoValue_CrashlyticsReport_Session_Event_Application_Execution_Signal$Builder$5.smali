.class final Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$5;->this$0:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBegin()V
    .locals 1

    .line 90
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$5;->this$0:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->access$000(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;)Lo/getBaseAddress;

    move-result-object v0

    invoke-virtual {v0}, Lo/getBaseAddress;->onTransactionStarted()V

    return-void
.end method

.method public final onCommit()V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$5;->this$0:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->access$000(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;)Lo/getBaseAddress;

    move-result-object v0

    invoke-virtual {v0}, Lo/getBaseAddress;->onTransactionCommitted()V

    return-void
.end method

.method public final onRollback()V
    .locals 0

    return-void
.end method
