.class final Lo/OtpGenerateResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/GameCta;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onNavigationEvent:Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/OtpGenerateResponseJsonAdapter;->onNavigationEvent:Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lo/OtpGenerateResponseJsonAdapter;->onNavigationEvent:Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onNavigationEvent(Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;)Lo/DataListJsonAdapter;

    move-result-object v0

    iget-object v0, v0, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v1, p0, Lo/OtpGenerateResponseJsonAdapter;->onNavigationEvent:Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-static {v1}, Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/DeductLifeRequest;->onPostMessage(Ljava/lang/String;Landroid/content/Context;Z)Lo/DeductLifeRequest;

    move-result-object v0

    new-instance v1, Lo/GameCta;

    invoke-direct {v1, v0}, Lo/GameCta;-><init>(Lo/getRefreshRate;)V

    return-object v1
.end method
