.class final synthetic Lo/setAspectRatioY;
.super Ljava/lang/Object;

# interfaces
.implements Lo/FileUploadConfigJsonAdapter;


# instance fields
.field private final extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private final onPostMessage:Lo/SuggestedAmount;


# direct methods
.method constructor <init>(Lo/SuggestedAmount;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setAspectRatioY;->onPostMessage:Lo/SuggestedAmount;

    iput-object p2, p0, Lo/setAspectRatioY;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    return-void
.end method


# virtual methods
.method public final extraCallback(Z)V
    .locals 1

    iget-object p1, p0, Lo/setAspectRatioY;->onPostMessage:Lo/SuggestedAmount;

    iget-object v0, p0, Lo/setAspectRatioY;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-virtual {p1, v0}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
