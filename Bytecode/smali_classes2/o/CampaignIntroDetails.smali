.class final Lo/CampaignIntroDetails;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

.field private final synthetic onNavigationEvent:Lo/CampaignImagesJsonAdapter;


# direct methods
.method constructor <init>(Lo/CampaignImagesJsonAdapter;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lo/CampaignIntroDetails;->onNavigationEvent:Lo/CampaignImagesJsonAdapter;

    iput-object p2, p0, Lo/CampaignIntroDetails;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/CampaignIntroDetails;->onNavigationEvent:Lo/CampaignImagesJsonAdapter;

    iget-object v0, v0, Lo/CampaignImagesJsonAdapter;->onNavigationEvent:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    iget-object v0, v0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lo/CampaignIntroDetails;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
