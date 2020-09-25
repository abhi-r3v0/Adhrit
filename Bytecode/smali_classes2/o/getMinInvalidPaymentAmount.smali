.class final synthetic Lo/getMinInvalidPaymentAmount;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/PaymentModeListResponseJsonAdapter;

.field private final onMessageChannelReady:Lo/Footer$$Parcelable;

.field private final onNavigationEvent:Lo/SuggestedAmount;


# direct methods
.method constructor <init>(Lo/SuggestedAmount;Lo/Footer$$Parcelable;Lo/PaymentModeListResponseJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getMinInvalidPaymentAmount;->onNavigationEvent:Lo/SuggestedAmount;

    iput-object p2, p0, Lo/getMinInvalidPaymentAmount;->onMessageChannelReady:Lo/Footer$$Parcelable;

    iput-object p3, p0, Lo/getMinInvalidPaymentAmount;->ICustomTabsCallback:Lo/PaymentModeListResponseJsonAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/getMinInvalidPaymentAmount;->onNavigationEvent:Lo/SuggestedAmount;

    iget-object v1, p0, Lo/getMinInvalidPaymentAmount;->onMessageChannelReady:Lo/Footer$$Parcelable;

    iget-object v2, p0, Lo/getMinInvalidPaymentAmount;->ICustomTabsCallback:Lo/PaymentModeListResponseJsonAdapter;

    invoke-static {v0, v1, v2}, Lo/InvalidPaymentAmount$$Parcelable;->onNavigationEvent(Lo/SuggestedAmount;Lo/Footer$$Parcelable;Lo/PaymentModeListResponseJsonAdapter;)V

    return-void
.end method
