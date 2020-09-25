.class final Lo/PointsServiceCurrencyAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic onNavigationEvent:Lo/RewardServiceCurrencyAdapter;


# direct methods
.method constructor <init>(Lo/RewardServiceCurrencyAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/PointsServiceCurrencyAdapter;->onNavigationEvent:Lo/RewardServiceCurrencyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lo/PointsServiceCurrencyAdapter;->onNavigationEvent:Lo/RewardServiceCurrencyAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/RewardServiceCurrencyAdapter;->onPostMessage(Z)V

    return-void
.end method
