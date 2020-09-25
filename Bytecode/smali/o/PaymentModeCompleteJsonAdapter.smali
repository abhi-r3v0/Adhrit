.class final Lo/PaymentModeCompleteJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

.field private final onNavigationEvent:Lo/Account$extraCallback;

.field private final onPostMessage:Lo/Account;


# direct methods
.method public constructor <init>(Lo/Account$extraCallback;Lo/Account;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PaymentModeCompleteJsonAdapter;->onNavigationEvent:Lo/Account$extraCallback;

    iput-object p2, p0, Lo/PaymentModeCompleteJsonAdapter;->onPostMessage:Lo/Account;

    iput-object p3, p0, Lo/PaymentModeCompleteJsonAdapter;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/PaymentModeCompleteJsonAdapter;->onNavigationEvent:Lo/Account$extraCallback;

    iget-object v1, p0, Lo/PaymentModeCompleteJsonAdapter;->onPostMessage:Lo/Account;

    iget-object v2, p0, Lo/PaymentModeCompleteJsonAdapter;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 1000
    invoke-virtual {v0, v1, v2}, Lo/Account$extraCallback;->onNavigationEvent(Lo/Account;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    return-void
.end method
