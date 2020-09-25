.class final Lo/setReferrerImageURL;
.super Ljava/lang/Object;

# interfaces
.implements Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;


# static fields
.field public static final onPostMessage:Lo/setReferrerImageURL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setReferrerImageURL;

    invoke-direct {v0}, Lo/setReferrerImageURL;-><init>()V

    sput-object v0, Lo/setReferrerImageURL;->onPostMessage:Lo/setReferrerImageURL;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lo/setBaseURL;

    invoke-interface {p1}, Lo/setBaseURL;->ICustomTabsCallback$Stub()V

    return-void
.end method
