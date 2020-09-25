.class final Lo/AvailableCredUpiAccountsInfoJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/Account;

.field private final onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

.field private final onPostMessage:Lo/Account$extraCallback;


# direct methods
.method public constructor <init>(Lo/Account$extraCallback;Lo/Account;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AvailableCredUpiAccountsInfoJsonAdapter;->onPostMessage:Lo/Account$extraCallback;

    iput-object p2, p0, Lo/AvailableCredUpiAccountsInfoJsonAdapter;->extraCallback:Lo/Account;

    iput-object p3, p0, Lo/AvailableCredUpiAccountsInfoJsonAdapter;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/AvailableCredUpiAccountsInfoJsonAdapter;->onPostMessage:Lo/Account$extraCallback;

    iget-object v1, p0, Lo/AvailableCredUpiAccountsInfoJsonAdapter;->extraCallback:Lo/Account;

    iget-object v2, p0, Lo/AvailableCredUpiAccountsInfoJsonAdapter;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 1000
    invoke-virtual {v0, v1, v2}, Lo/Account$extraCallback;->ICustomTabsCallback(Lo/Account;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    return-void
.end method
