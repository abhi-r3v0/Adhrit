.class final Lo/generateUserInviteLink;
.super Ljava/lang/Object;

# interfaces
.implements Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;


# instance fields
.field private final onNavigationEvent:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/generateUserInviteLink;->onNavigationEvent:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/generateUserInviteLink;->onNavigationEvent:Ljava/lang/Exception;

    check-cast p1, Lo/setBaseURL;

    .line 1000
    invoke-static {v0, p1}, Lo/addParameter;->onNavigationEvent(Ljava/lang/Exception;Lo/setBaseURL;)V

    return-void
.end method
