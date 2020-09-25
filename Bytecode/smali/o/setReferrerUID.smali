.class final Lo/setReferrerUID;
.super Ljava/lang/Object;

# interfaces
.implements Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;


# static fields
.field public static final onNavigationEvent:Lo/setReferrerUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setReferrerUID;

    invoke-direct {v0}, Lo/setReferrerUID;-><init>()V

    sput-object v0, Lo/setReferrerUID;->onNavigationEvent:Lo/setReferrerUID;

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

    invoke-interface {p1}, Lo/setBaseURL;->extraCallback()V

    return-void
.end method
