.class final Lo/RecentCountJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/RecentCountJsonAdapter;->ICustomTabsCallback:Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/RecentCountJsonAdapter;->ICustomTabsCallback:Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;

    iget-object v1, v0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0, v1}, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method
