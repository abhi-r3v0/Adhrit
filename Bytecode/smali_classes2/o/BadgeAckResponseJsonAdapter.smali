.class final synthetic Lo/BadgeAckResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/LendingWithdrawalFragment$onActivityResult$$inlined$executeOnResume$1;


# instance fields
.field private final ICustomTabsCallback:Lo/Badges;


# direct methods
.method constructor <init>(Lo/Badges;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/BadgeAckResponseJsonAdapter;->ICustomTabsCallback:Lo/Badges;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)V
    .locals 1

    iget-object v0, p0, Lo/BadgeAckResponseJsonAdapter;->ICustomTabsCallback:Lo/Badges;

    iget-object p1, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lo/NotificationsResponse;->onPostMessage(Landroid/net/Uri;)Z

    return-void
.end method
