.class final synthetic Lo/Meta;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Class;

.field private final extraCallback:Lo/Footer$$Parcelable;

.field private final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field private final onNavigationEvent:Lo/PaymentModeListResponseJsonAdapter;

.field private final onPostMessage:Lo/SuggestedAmount;


# direct methods
.method constructor <init>(Lo/SuggestedAmount;Lo/PaymentModeListResponseJsonAdapter;Ljava/lang/Class;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Meta;->onPostMessage:Lo/SuggestedAmount;

    iput-object p2, p0, Lo/Meta;->onNavigationEvent:Lo/PaymentModeListResponseJsonAdapter;

    iput-object p3, p0, Lo/Meta;->ICustomTabsCallback:Ljava/lang/Class;

    iput-object p4, p0, Lo/Meta;->extraCallback:Lo/Footer$$Parcelable;

    iput-object p5, p0, Lo/Meta;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lo/Meta;->onPostMessage:Lo/SuggestedAmount;

    iget-object v1, p0, Lo/Meta;->onNavigationEvent:Lo/PaymentModeListResponseJsonAdapter;

    iget-object v2, p0, Lo/Meta;->ICustomTabsCallback:Ljava/lang/Class;

    iget-object v3, p0, Lo/Meta;->extraCallback:Lo/Footer$$Parcelable;

    iget-object v4, p0, Lo/Meta;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3, v4}, Lo/InvalidPaymentAmount$$Parcelable;->onMessageChannelReady(Lo/SuggestedAmount;Lo/PaymentModeListResponseJsonAdapter;Ljava/lang/Class;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
