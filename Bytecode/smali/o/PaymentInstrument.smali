.class final Lo/PaymentInstrument;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onNavigationEvent:Lo/Payment;


# direct methods
.method public constructor <init>(Lo/Payment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PaymentInstrument;->onNavigationEvent:Lo/Payment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/PaymentInstrument;->onNavigationEvent:Lo/Payment;

    .line 1000
    invoke-virtual {v0}, Lo/Payment;->onPostMessage()V

    return-void
.end method
