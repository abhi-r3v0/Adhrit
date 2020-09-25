.class final Lo/PaymentConfigJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onNavigationEvent:Lo/PayCallResponseJsonAdapter;


# direct methods
.method public constructor <init>(Lo/PayCallResponseJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PaymentConfigJsonAdapter;->onNavigationEvent:Lo/PayCallResponseJsonAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/PaymentConfigJsonAdapter;->onNavigationEvent:Lo/PayCallResponseJsonAdapter;

    .line 1000
    invoke-virtual {v0}, Lo/PayCallResponseJsonAdapter;->newSession()V

    return-void
.end method
