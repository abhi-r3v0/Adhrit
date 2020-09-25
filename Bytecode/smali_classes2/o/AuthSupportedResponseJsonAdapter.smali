.class final Lo/AuthSupportedResponseJsonAdapter;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Lo/AuthSupportedResponse$MetaData;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/AuthSupportedResponse$MetaData;Lo/BankRewardPointDialog$realDismiss$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/AuthSupportedResponseJsonAdapter;-><init>(Lo/AuthSupportedResponse$MetaData;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lo/getCurrencyType;->onPostMessage()V

    invoke-static {p1}, Lo/ContactJsonAdapter;->onNavigationEvent(Landroid/content/Context;)V

    return-void
.end method
