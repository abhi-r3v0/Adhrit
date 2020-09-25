.class final synthetic Lo/access$102;
.super Ljava/lang/Object;

# interfaces
.implements Lo/FileUploadConfigJsonAdapter;


# instance fields
.field private final extraCallback:Lo/SuggestedAmount;

.field private final onNavigationEvent:Lo/getGaid;

.field private final onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/getGaid;Lo/SuggestedAmount;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/access$102;->onNavigationEvent:Lo/getGaid;

    iput-object p2, p0, Lo/access$102;->extraCallback:Lo/SuggestedAmount;

    iput-object p3, p0, Lo/access$102;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    return-void
.end method


# virtual methods
.method public final extraCallback(Z)V
    .locals 3

    iget-object v0, p0, Lo/access$102;->onNavigationEvent:Lo/getGaid;

    iget-object v1, p0, Lo/access$102;->extraCallback:Lo/SuggestedAmount;

    iget-object v2, p0, Lo/access$102;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-virtual {v0, v1, v2, p1}, Lo/getGaid;->extraCallback(Lo/SuggestedAmount;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Z)V

    return-void
.end method
