.class final Lo/Section;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/view/View;

.field private final synthetic onNavigationEvent:Lo/ReferralBottomSheetBackgroundJsonAdapter;


# direct methods
.method constructor <init>(Lo/ReferralBottomSheetBackgroundJsonAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lo/Section;->onNavigationEvent:Lo/ReferralBottomSheetBackgroundJsonAdapter;

    iput-object p2, p0, Lo/Section;->ICustomTabsCallback:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/Section;->onNavigationEvent:Lo/ReferralBottomSheetBackgroundJsonAdapter;

    iget-object v1, p0, Lo/Section;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/ReferralBottomSheetBackgroundJsonAdapter;->onMessageChannelReady(Landroid/view/View;)V

    return-void
.end method
