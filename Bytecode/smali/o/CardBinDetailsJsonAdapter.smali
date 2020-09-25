.class final Lo/CardBinDetailsJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/Account$extraCallback;

.field private final extraCallback:Lo/Account;

.field private final onMessageChannelReady:Lo/Account$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Lo/Account$extraCallback;Lo/Account;Lo/Account$ICustomTabsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CardBinDetailsJsonAdapter;->ICustomTabsCallback:Lo/Account$extraCallback;

    iput-object p2, p0, Lo/CardBinDetailsJsonAdapter;->extraCallback:Lo/Account;

    iput-object p3, p0, Lo/CardBinDetailsJsonAdapter;->onMessageChannelReady:Lo/Account$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/CardBinDetailsJsonAdapter;->ICustomTabsCallback:Lo/Account$extraCallback;

    iget-object v1, p0, Lo/CardBinDetailsJsonAdapter;->extraCallback:Lo/Account;

    iget-object v2, p0, Lo/CardBinDetailsJsonAdapter;->onMessageChannelReady:Lo/Account$ICustomTabsCallback;

    .line 1000
    invoke-virtual {v0, v1, v2}, Lo/Account$extraCallback;->ICustomTabsCallback(Lo/Account;Lo/Account$ICustomTabsCallback;)V

    return-void
.end method
