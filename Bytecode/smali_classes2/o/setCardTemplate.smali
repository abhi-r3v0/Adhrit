.class public final Lo/setCardTemplate;
.super Lo/setCenterImage;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/StatJsonAdapter;Lo/setCardTypeIv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/StatJsonAdapter<",
            "Lo/setCardBackgroundView;",
            ">;",
            "Lo/setCardTypeIv;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lo/setCenterImage;-><init>(Lo/StatJsonAdapter;Lo/setCardTypeIv;)V

    iput-object p1, p0, Lo/setCardTemplate;->ICustomTabsCallback:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/Address;
    .locals 2

    iget-object v0, p0, Lo/setCardTemplate;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v0}, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent(Landroid/content/Context;)Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    move-result-object v1

    invoke-static {v0, v1}, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Landroid/content/Context;Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;)Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()V
    .locals 0

    return-void
.end method
