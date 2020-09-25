.class final Lo/CheckoutContainerFragment$onPaymentSuccess$$inlined$forEach$lambda$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;

.field private final onNavigationEvent:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;


# direct methods
.method public constructor <init>(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CheckoutContainerFragment$onPaymentSuccess$$inlined$forEach$lambda$1$1;->onNavigationEvent:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;

    iput-object p2, p0, Lo/CheckoutContainerFragment$onPaymentSuccess$$inlined$forEach$lambda$1$1;->ICustomTabsCallback:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/CheckoutContainerFragment$onPaymentSuccess$$inlined$forEach$lambda$1$1;->onNavigationEvent:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;

    iget-object v1, p0, Lo/CheckoutContainerFragment$onPaymentSuccess$$inlined$forEach$lambda$1$1;->ICustomTabsCallback:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;

    .line 1000
    invoke-virtual {v0, v1}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;->extraCallback(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V

    return-void
.end method
