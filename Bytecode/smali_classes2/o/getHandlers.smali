.class public final Lo/getHandlers;
.super Lo/publish;


# instance fields
.field private final onNavigationEvent:Lo/getPaymentAmountTitle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/publish;-><init>()V

    new-instance v0, Lo/getPaymentAmountTitle;

    invoke-direct {v0}, Lo/getPaymentAmountTitle;-><init>()V

    iput-object v0, p0, Lo/getHandlers;->onNavigationEvent:Lo/getPaymentAmountTitle;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    if-eq p2, p1, :cond_0

    iget-object v0, p0, Lo/getHandlers;->onNavigationEvent:Lo/getPaymentAmountTitle;

    invoke-virtual {v0, p1}, Lo/getPaymentAmountTitle;->ICustomTabsCallback(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Self suppression is not allowed."

    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
