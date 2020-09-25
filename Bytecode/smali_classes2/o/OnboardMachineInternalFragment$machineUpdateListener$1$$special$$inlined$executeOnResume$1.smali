.class final Lo/OnboardMachineInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic onPostMessage:Lo/SeenNotification;


# direct methods
.method constructor <init>(Lo/SeenNotification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/OnboardMachineInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/SeenNotification;

    iput-object p2, p0, Lo/OnboardMachineInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/OnboardMachineInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/SeenNotification;

    invoke-static {v0}, Lo/SeenNotification;->onNavigationEvent(Lo/SeenNotification;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v0

    iget-object v1, p0, Lo/OnboardMachineInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-interface {v0, v1, v2, v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
