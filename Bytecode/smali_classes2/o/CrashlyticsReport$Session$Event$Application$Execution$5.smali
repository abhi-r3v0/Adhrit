.class Lo/CrashlyticsReport$Session$Event$Application$Execution$5;
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

.field final synthetic val$defaultNetworkCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution;Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$5;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$5;->val$defaultNetworkCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$5;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution;->access$100(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$5;->val$defaultNetworkCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
