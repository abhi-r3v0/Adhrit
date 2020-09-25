.class final synthetic Lo/setCibilScore;
.super Ljava/lang/Object;

# interfaces
.implements Lo/FileUploadConfigJsonAdapter;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final onNavigationEvent:Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

.field private final onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;Ljava/lang/String;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setCibilScore;->onNavigationEvent:Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    iput-object p2, p0, Lo/setCibilScore;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/setCibilScore;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    return-void
.end method


# virtual methods
.method public final extraCallback(Z)V
    .locals 3

    iget-object v0, p0, Lo/setCibilScore;->onNavigationEvent:Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/setCibilScore;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/setCibilScore;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {v0, v1, v2, p1}, Lo/setCreditScoreExist;->onPostMessage(Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;Ljava/lang/String;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Z)V

    return-void
.end method
