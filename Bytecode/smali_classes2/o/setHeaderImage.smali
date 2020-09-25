.class public final Lo/setHeaderImage;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/DataListJsonAdapter;

.field private final extraCallback:Lo/BankAccountData;

.field private final onNavigationEvent:Lo/StatementPeriod;

.field private final onPostMessage:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setHeaderImage;->onPostMessage:Landroid/content/Context;

    iput-object p2, p0, Lo/setHeaderImage;->extraCallback:Lo/BankAccountData;

    iput-object p3, p0, Lo/setHeaderImage;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iput-object p4, p0, Lo/setHeaderImage;->onNavigationEvent:Lo/StatementPeriod;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;
    .locals 8

    new-instance v7, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v1, p0, Lo/setHeaderImage;->onPostMessage:Landroid/content/Context;

    new-instance v2, Lo/setCurrentItem$default;

    invoke-direct {v2}, Lo/setCurrentItem$default;-><init>()V

    iget-object v4, p0, Lo/setHeaderImage;->extraCallback:Lo/BankAccountData;

    iget-object v5, p0, Lo/setHeaderImage;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iget-object v6, p0, Lo/setHeaderImage;->onNavigationEvent:Lo/StatementPeriod;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    return-object v7
.end method

.method public final extraCallback()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/setHeaderImage;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/setHeaderImage;
    .locals 5

    new-instance v0, Lo/setHeaderImage;

    iget-object v1, p0, Lo/setHeaderImage;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/setHeaderImage;->extraCallback:Lo/BankAccountData;

    iget-object v3, p0, Lo/setHeaderImage;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iget-object v4, p0, Lo/setHeaderImage;->onNavigationEvent:Lo/StatementPeriod;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/setHeaderImage;-><init>(Landroid/content/Context;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;
    .locals 8

    new-instance v7, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v0, p0, Lo/setHeaderImage;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lo/setCurrentItem$default;

    invoke-direct {v2}, Lo/setCurrentItem$default;-><init>()V

    iget-object v4, p0, Lo/setHeaderImage;->extraCallback:Lo/BankAccountData;

    iget-object v5, p0, Lo/setHeaderImage;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iget-object v6, p0, Lo/setHeaderImage;->onNavigationEvent:Lo/StatementPeriod;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    return-object v7
.end method
