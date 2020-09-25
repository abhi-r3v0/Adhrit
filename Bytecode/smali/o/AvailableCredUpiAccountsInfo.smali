.class final Lo/AvailableCredUpiAccountsInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/Account;

.field private final ICustomTabsCallback$Stub:Z

.field private final extraCallback:Ljava/io/IOException;

.field private final onMessageChannelReady:Lo/Account$onMessageChannelReady;

.field private final onNavigationEvent:Lo/Account$ICustomTabsCallback;

.field private final onPostMessage:Lo/Account$extraCallback;


# direct methods
.method public constructor <init>(Lo/Account$extraCallback;Lo/Account;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AvailableCredUpiAccountsInfo;->onPostMessage:Lo/Account$extraCallback;

    iput-object p2, p0, Lo/AvailableCredUpiAccountsInfo;->ICustomTabsCallback:Lo/Account;

    iput-object p3, p0, Lo/AvailableCredUpiAccountsInfo;->onMessageChannelReady:Lo/Account$onMessageChannelReady;

    iput-object p4, p0, Lo/AvailableCredUpiAccountsInfo;->onNavigationEvent:Lo/Account$ICustomTabsCallback;

    iput-object p5, p0, Lo/AvailableCredUpiAccountsInfo;->extraCallback:Ljava/io/IOException;

    iput-boolean p6, p0, Lo/AvailableCredUpiAccountsInfo;->ICustomTabsCallback$Stub:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lo/AvailableCredUpiAccountsInfo;->onPostMessage:Lo/Account$extraCallback;

    iget-object v1, p0, Lo/AvailableCredUpiAccountsInfo;->ICustomTabsCallback:Lo/Account;

    iget-object v2, p0, Lo/AvailableCredUpiAccountsInfo;->onMessageChannelReady:Lo/Account$onMessageChannelReady;

    iget-object v3, p0, Lo/AvailableCredUpiAccountsInfo;->onNavigationEvent:Lo/Account$ICustomTabsCallback;

    iget-object v4, p0, Lo/AvailableCredUpiAccountsInfo;->extraCallback:Ljava/io/IOException;

    iget-boolean v5, p0, Lo/AvailableCredUpiAccountsInfo;->ICustomTabsCallback$Stub:Z

    .line 1000
    invoke-virtual/range {v0 .. v5}, Lo/Account$extraCallback;->onPostMessage(Lo/Account;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;Ljava/io/IOException;Z)V

    return-void
.end method
