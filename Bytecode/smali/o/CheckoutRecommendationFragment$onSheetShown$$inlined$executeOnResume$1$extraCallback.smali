.class final Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/os/Handler;

.field private final onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;->ICustomTabsCallback:Landroid/os/Handler;

    .line 84
    iput-object p2, p0, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;)Ljava/lang/Object;
    .locals 0

    .line 75
    iget-object p0, p0, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method final synthetic extraCallback(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;->onPostMessage:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;->onNavigationEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage<",
            "TT;>;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance v1, Lo/CheckoutContainerFragment$onPaymentSuccess$$inlined$forEach$lambda$1$1;

    invoke-direct {v1, p0, p1}, Lo/CheckoutContainerFragment$onPaymentSuccess$$inlined$forEach$lambda$1$1;-><init>(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;->onPostMessage:Z

    return-void
.end method
