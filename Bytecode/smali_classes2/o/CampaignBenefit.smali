.class final Lo/CampaignBenefit;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;


# direct methods
.method constructor <init>(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/CampaignBenefit;->ICustomTabsCallback:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/CampaignBenefit;->ICustomTabsCallback:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    invoke-virtual {v0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->updateVisuals()V

    return-void
.end method
