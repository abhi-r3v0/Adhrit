.class final Lo/addParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;


# static fields
.field public static final extraCallback:Lo/addParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/addParameters;

    invoke-direct {v0}, Lo/addParameters;-><init>()V

    sput-object v0, Lo/addParameters;->extraCallback:Lo/addParameters;

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

    invoke-interface {p1}, Lo/setBaseURL;->asInterface()V

    return-void
.end method
