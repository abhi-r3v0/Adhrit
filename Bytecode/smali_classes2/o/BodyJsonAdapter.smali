.class final synthetic Lo/BodyJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;


# instance fields
.field private final onPostMessage:Lo/OnboardCardsData;


# direct methods
.method constructor <init>(Lo/OnboardCardsData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/BodyJsonAdapter;->onPostMessage:Lo/OnboardCardsData;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)V
    .locals 0

    iget-object p1, p0, Lo/BodyJsonAdapter;->onPostMessage:Lo/OnboardCardsData;

    invoke-interface {p1}, Lo/OnboardCardsData;->ICustomTabsCallback()V

    return-void
.end method
