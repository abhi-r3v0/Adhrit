.class final Lo/CrashlyticsReport$Session$Event$Application$Execution$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsReport$Session$Event$Application$Execution;->configureNetworkMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

.field final synthetic val$networkReceiver:Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution;Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$1;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$1;->val$networkReceiver:Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$1;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution;->access$300(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$1;->val$networkReceiver:Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
