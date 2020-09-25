.class final Lo/PaymentOrderJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/PayCallResponseJsonAdapter;


# direct methods
.method public constructor <init>(Lo/PayCallResponseJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PaymentOrderJsonAdapter;->ICustomTabsCallback:Lo/PayCallResponseJsonAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/PaymentOrderJsonAdapter;->ICustomTabsCallback:Lo/PayCallResponseJsonAdapter;

    .line 1000
    invoke-virtual {v0}, Lo/PayCallResponseJsonAdapter;->onTransact()V

    return-void
.end method
