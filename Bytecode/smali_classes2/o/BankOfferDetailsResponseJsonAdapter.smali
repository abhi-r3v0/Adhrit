.class final synthetic Lo/BankOfferDetailsResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;


# direct methods
.method private constructor <init>(Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/BankOfferDetailsResponseJsonAdapter;->ICustomTabsCallback:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    return-void
.end method

.method static ICustomTabsCallback(Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lo/BankOfferDetailsResponseJsonAdapter;

    invoke-direct {v0, p0}, Lo/BankOfferDetailsResponseJsonAdapter;-><init>(Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/BankOfferDetailsResponseJsonAdapter;->ICustomTabsCallback:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->ICustomTabsCallback()V

    return-void
.end method
