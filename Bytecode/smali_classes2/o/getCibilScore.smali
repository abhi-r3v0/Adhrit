.class final synthetic Lo/getCibilScore;
.super Ljava/lang/Object;

# interfaces
.implements Lo/FileUploadConfigJsonAdapter;


# instance fields
.field private final ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private final onMessageChannelReady:Lo/StackLayoutManager;

.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/StackLayoutManager;Ljava/lang/String;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getCibilScore;->onMessageChannelReady:Lo/StackLayoutManager;

    iput-object p2, p0, Lo/getCibilScore;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lo/getCibilScore;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    return-void
.end method


# virtual methods
.method public final extraCallback(Z)V
    .locals 3

    iget-object v0, p0, Lo/getCibilScore;->onMessageChannelReady:Lo/StackLayoutManager;

    iget-object v1, p0, Lo/getCibilScore;->onNavigationEvent:Ljava/lang/String;

    iget-object v2, p0, Lo/getCibilScore;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {v0, v1, v2, p1}, Lo/setCreditScoreExist;->onPostMessage(Lo/StackLayoutManager;Ljava/lang/String;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Z)V

    return-void
.end method
